# ════════════════════════════════════════════════════════════════════════════
#  Dann-Alpes — ISIS1511 — Entrega 3
#  Middleware FastAPI: puente HTTPS entre APEX y MongoDB
#
#  Despliegue en Render:
#    1) Subir este archivo + requirements.txt al repo de GitHub
#    2) En Render: New > Web Service > conectar repo
#    3) Build command:  pip install -r requirements.txt
#    4) Start command:  uvicorn main:app --host 0.0.0.0 --port $PORT
#    5) Variables de entorno: MONGO_URI = mongodb://usuario:pass@157.253.236.88:8087/
#
#  requirements.txt necesario:
#    fastapi
#    uvicorn
#    pymongo
# ════════════════════════════════════════════════════════════════════════════

from fastapi import FastAPI, HTTPException, Query
from fastapi.middleware.cors import CORSMiddleware
from pymongo import MongoClient, ASCENDING, DESCENDING
from pymongo.errors import DuplicateKeyError, OperationFailure
from bson import ObjectId
from datetime import datetime
import os

app = FastAPI(title="Dann-Alpes Reseñas API", version="1.0")

# CORS abierto: APEX consume desde un dominio diferente
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_methods=["*"],
    allow_headers=["*"],
)

# Conexión a MongoDB
client  = MongoClient(os.environ["MONGO_URI"])
db      = client["ISIS2304F06202610"]
resenas = db["resenas"]


# ─── HELPERS ────────────────────────────────────────────────────────────────

def serializar(doc):
    """Convierte ObjectId a string para que FastAPI pueda serializar a JSON."""
    if doc is None:
        return None
    doc["_id"] = str(doc["_id"])
    return doc


def validar_oid(resena_id: str) -> ObjectId:
    """Convierte el string a ObjectId o lanza 400 si es inválido."""
    if not ObjectId.is_valid(resena_id):
        raise HTTPException(status_code=400, detail="ID de reseña inválido.")
    return ObjectId(resena_id)


# ════════════════════════════════════════════════════════════════════════════
#  RAÍZ — health check
# ════════════════════════════════════════════════════════════════════════════

@app.get("/")
def inicio():
    return {"estado": "API Dann-Alpes Reseñas funcionando correctamente"}

# OBTENER TODAS LAS RESEÑAS
@app.get("/resenas")
def get_todas_resenas():
    return list(resenas.find({}, {"_id": 0}))

#  RF1 — CREAR RESEÑA

@app.post("/resenas")
def crear_resena(data: dict):
    """
    RF1: Crea una reseña.

    APEX valida previamente (con SQL contra Oracle):
      • La reserva existe y está en estado 'completada'
      • El cliente es el dueño de la reserva

    MongoDB enforza:
      • Unicidad de id_reserva (índice uq_id_reserva)
      • Esquema (calificación 1–5, estado, longitud de texto, etc.)

    Body esperado:
      { id_reserva: int, id_hotel: int, id_cliente: int,
        calificacion: int (1-5), texto: str }
    """
    documento = {
        "id_reserva":     int(data["id_reserva"]),
        "id_hotel":       int(data["id_hotel"]),
        "id_cliente":     int(data["id_cliente"]),
        "calificacion":   int(data["calificacion"]),
        "texto":          data["texto"],
        "fecha_creacion": datetime.utcnow(),
        "estado":         "publicada",
        "destacada":      False,
        "votos_util": {
            "count":    0,
            "usuarios": []
        }
    }

    try:
        result = resenas.insert_one(documento)
        return {"mensaje": "Reseña creada", "id": str(result.inserted_id)}
    except DuplicateKeyError:
        raise HTTPException(409, "Esta reserva ya tiene una reseña asociada.")
    except OperationFailure as e:
        raise HTTPException(400, f"Validación de esquema fallida: {e.details.get('errmsg', str(e))}")


#  RF2 — EDITAR RESEÑA (cliente)

@app.put("/resenas/{resena_id}")
def editar_resena(resena_id: str, data: dict):
    """
    RF2: El cliente edita el texto y/o la calificación de su reseña.
    APEX verifica autoría (id_cliente coincide) antes de llamar.

    Body: { texto?: str, calificacion?: int }
    """
    oid = validar_oid(resena_id)

    actualizacion = {}
    if "calificacion" in data:
        actualizacion["calificacion"] = int(data["calificacion"])
    if "texto" in data:
        actualizacion["texto"] = data["texto"]

    if not actualizacion:
        raise HTTPException(400, "Debe especificar 'texto' y/o 'calificacion'.")

    try:
        result = resenas.update_one(
            {"_id": oid, "estado": "publicada"},
            {"$set": actualizacion}
        )
    except OperationFailure as e:
        raise HTTPException(400, f"Validación de esquema fallida: {e.details.get('errmsg', str(e))}")

    if result.matched_count == 0:
        raise HTTPException(404, "Reseña no encontrada o ya eliminada.")

    return {"mensaje": "Reseña actualizada"}

#  RF3 — ELIMINAR RESEÑA (cliente, soft delete)

@app.delete("/resenas/{resena_id}")
def eliminar_resena_cliente(resena_id: str):
    """
    RF3: El cliente elimina su reseña (soft delete: estado = 'eliminada').
    Se desmarca también como destacada por consistencia.
    APEX verifica autoría.
    """
    oid = validar_oid(resena_id)

    result = resenas.update_one(
        {"_id": oid},
        {"$set": {"estado": "eliminada", "destacada": False}}
    )

    if result.matched_count == 0:
        raise HTTPException(404, "Reseña no encontrada.")

    return {"mensaje": "Reseña eliminada"}


#  RF4 — CONSULTAR RESEÑAS DE UN HOTEL (paginado, público)

@app.get("/hoteles/{id_hotel}/resenas")
def resenas_hotel(
    id_hotel: int,
    orden: str = Query("fecha", pattern="^(fecha|utilidad)$"),
    page: int = Query(1, ge=1),
    page_size: int = Query(10, ge=1, le=50)
):
    """
    RF4: Consultar reseñas publicadas de un hotel, paginadas.
    La reseña destacada (si existe) se devuelve aparte, fuera de la paginación.
    """
    # 1. Reseña destacada (RF9). Siempre va primero en la UI.
    destacada = resenas.find_one({
        "id_hotel":  id_hotel,
        "estado":    "publicada",
        "destacada": True
    })

    # 2. Resto de reseñas, excluyendo la destacada para no duplicarla.
    orden_clave = "fecha_creacion" if orden == "fecha" else "votos_util.count"

    filtro = {"id_hotel": id_hotel, "estado": "publicada"}
    if destacada:
        filtro["_id"] = {"$ne": destacada["_id"]}

    skip = (page - 1) * page_size
    cursor = (resenas.find(filtro)
                     .sort(orden_clave, DESCENDING)
                     .skip(skip)
                     .limit(page_size))

    total = resenas.count_documents({"id_hotel": id_hotel, "estado": "publicada"})

    return {
        "destacada": serializar(destacada),
        "resenas":   [serializar(d) for d in cursor],
        "page":      page,
        "page_size": page_size,
        "total":     total
    }

#  RF5 — MARCAR RESEÑA COMO ÚTIL

@app.post("/resenas/{resena_id}/votos")
def votar_util(resena_id: str, data: dict):
    """
    RF5: Un usuario autenticado marca una reseña como útil.

    Operación atómica que previene doble voto:
      - El filtro exige que id_usuario NO esté ya en votos_util.usuarios
      - Si lo está, matched_count = 0 y devolvemos 409
      - Si no, se agrega al array y se incrementa el contador atómicamente

    Body: { id_usuario: int }
    """
    oid = validar_oid(resena_id)
    id_usuario = int(data["id_usuario"])

    result = resenas.update_one(
        {
            "_id":                  oid,
            "estado":               "publicada",
            "votos_util.usuarios":  {"$ne": id_usuario}
        },
        {
            "$push": {"votos_util.usuarios": id_usuario},
            "$inc":  {"votos_util.count":     1}
        }
    )

    if result.matched_count == 0:
        # Diagnóstico fino para devolver el código HTTP correcto
        existe = resenas.find_one({"_id": oid})
        if existe is None:
            raise HTTPException(404, "Reseña no encontrada.")
        if existe["estado"] != "publicada":
            raise HTTPException(400, "No se puede votar una reseña eliminada.")
        raise HTTPException(409, "El usuario ya marcó esta reseña como útil.")

    return {"mensaje": "Voto registrado"}


#  RF6 — HISTORIAL DE RESEÑAS PROPIAS

@app.get("/clientes/{id_cliente}/resenas")
def resenas_cliente(
    id_cliente: int,
    orden: str = Query("fecha", pattern="^(fecha|hotel)$")
):
    """
    RF6: Reseñas escritas por un cliente, incluye publicadas y eliminadas
    (el cliente ve su historial completo). Incluye campos derivados:
      • tiene_respuesta: bool
      • total_votos: int
    """
    orden_clave = "fecha_creacion" if orden == "fecha" else "id_hotel"
    direccion   = DESCENDING if orden == "fecha" else ASCENDING

    cursor = resenas.find({"id_cliente": id_cliente}).sort(orden_clave, direccion)

    salida = []
    for d in cursor:
        item = serializar(d)
        item["tiene_respuesta"] = d.get("respuesta_admin") is not None
        item["total_votos"]     = d.get("votos_util", {}).get("count", 0)
        salida.append(item)

    return salida

#  RF7 — RESPONDER RESEÑA (administrador)

@app.put("/resenas/{resena_id}/respuesta")
def responder_resena(resena_id: str, data: dict):
    """
    RF7: El admin agrega o edita la respuesta oficial a una reseña.
    APEX verifica que el admin pertenezca al hotel de la reseña.

    Body: { id_admin: int, texto: str }
    """
    oid = validar_oid(resena_id)

    respuesta = {
        "id_admin": int(data["id_admin"]),
        "texto":    data["texto"],
        "fecha":    datetime.utcnow()
    }

    try:
        result = resenas.update_one(
            {"_id": oid, "estado": "publicada"},
            {"$set": {"respuesta_admin": respuesta}}
        )
    except OperationFailure as e:
        raise HTTPException(400, f"Validación de esquema fallida: {e.details.get('errmsg', str(e))}")

    if result.matched_count == 0:
        raise HTTPException(404, "Reseña no encontrada o eliminada.")

    return {"mensaje": "Respuesta registrada"}


#  RF8 — ELIMINAR RESEÑA (administrador, moderación)

@app.delete("/admin/resenas/{resena_id}")
def eliminar_resena_admin(resena_id: str):
    """
    RF8: El admin elimina una reseña por moderación (soft delete).
    APEX verifica privilegios de admin.
    """
    oid = validar_oid(resena_id)

    result = resenas.update_one(
        {"_id": oid},
        {"$set": {"estado": "eliminada", "destacada": False}}
    )

    if result.matched_count == 0:
        raise HTTPException(404, "Reseña no encontrada.")

    return {"mensaje": "Reseña eliminada por moderación"}


#  RF9 — DESTACAR RESEÑA

@app.put("/resenas/{resena_id}/destacar")
def destacar_resena(resena_id: str):
    """
    RF9: Marca una reseña como destacada para su hotel.
    Solo puede haber UNA reseña destacada por hotel a la vez:
      1. Desmarca cualquier destacada previa del mismo hotel
      2. Marca esta como destacada
    """
    oid = validar_oid(resena_id)

    resena = resenas.find_one({"_id": oid})
    if not resena:
        raise HTTPException(404, "Reseña no encontrada.")
    if resena["estado"] != "publicada":
        raise HTTPException(400, "Solo reseñas publicadas pueden destacarse.")

    # 1. Desmarcar destacada(s) previa(s) del hotel
    resenas.update_many(
        {"id_hotel": resena["id_hotel"], "destacada": True},
        {"$set": {"destacada": False}}
    )

    # 2. Marcar esta como destacada
    resenas.update_one({"_id": oid}, {"$set": {"destacada": True}})

    return {"mensaje": "Reseña destacada"}


#  AUXILIAR — obtener una reseña por ID
#  (útil para flujos de edición en APEX)

@app.get("/resenas/{resena_id}")
def obtener_resena(resena_id: str):
    oid = validar_oid(resena_id)
    doc = resenas.find_one({"_id": oid})
    if not doc:
        raise HTTPException(404, "Reseña no encontrada.")
    return serializar(doc)

#  RFC1 — TOP 10 HOTELES POR CALIFICACIÓN PROMEDIO

@app.get("/analytics/top-hoteles")
def top_hoteles(
    desde: str = Query(..., description="Fecha inicio ISO YYYY-MM-DD"),
    hasta: str = Query(..., description="Fecha fin ISO YYYY-MM-DD"),
    limit: int = Query(10, ge=1, le=50)
):
    """
    RFC1: Los N hoteles con mejor calificación promedio en un período.
    APEX luego cruza id_hotel con Oracle para obtener nombre y ciudad.
    """
    desde_dt = datetime.fromisoformat(desde)
    hasta_dt = datetime.fromisoformat(hasta)

    pipeline = [
        {"$match": {
            "estado":         "publicada",
            "fecha_creacion": {"$gte": desde_dt, "$lte": hasta_dt}
        }},
        {"$group": {
            "_id":                    "$id_hotel",
            "calificacion_promedio":  {"$avg": "$calificacion"},
            "total_resenas":          {"$sum": 1}
        }},
        {"$sort":  {"calificacion_promedio": -1}},
        {"$limit": limit},
        {"$project": {
            "_id":                   0,
            "id_hotel":              "$_id",
            "calificacion_promedio": {"$round": ["$calificacion_promedio", 2]},
            "total_resenas":         1
        }}
    ]

    return list(resenas.aggregate(pipeline))

#  RFC2 — EVOLUCIÓN MENSUAL DE LA REPUTACIÓN DE UN HOTEL

@app.get("/hoteles/{id_hotel}/reputacion-mensual")
def reputacion_mensual(id_hotel: int, ano: int = Query(..., ge=2020, le=2030)):
    """
    RFC2: Calificación promedio mes a mes para un hotel en un año dado.
    Devuelve un punto por mes (solo meses con al menos una reseña).
    """
    inicio = datetime(ano, 1, 1)
    fin    = datetime(ano + 1, 1, 1)

    pipeline = [
        {"$match": {
            "id_hotel":       id_hotel,
            "estado":         "publicada",
            "fecha_creacion": {"$gte": inicio, "$lt": fin}
        }},
        {"$group": {
            "_id":                   {"$month": "$fecha_creacion"},
            "calificacion_promedio": {"$avg":   "$calificacion"},
            "total_resenas":         {"$sum":   1}
        }},
        {"$sort": {"_id": 1}},
        {"$project": {
            "_id":                   0,
            "mes":                   "$_id",
            "calificacion_promedio": {"$round": ["$calificacion_promedio", 2]},
            "total_resenas":         1
        }}
    ]

    return list(resenas.aggregate(pipeline))


#  RFC3 — PERFIL COMPARATIVO DE HOTELES DE UNA CIUDAD

@app.get("/analytics/comparativa-hoteles")
def comparativa_hoteles(
    hoteles: str = Query(..., description="IDs separados por coma, ej. 1,2,3,4,5")
):
    """
    RFC3: Métricas comparativas para una lista de hoteles (típicamente
    los de una ciudad). APEX hace primero el query a Oracle para obtener
    los id_hotel de la ciudad y los pasa aquí como CSV.

    Para cada hotel devuelve:
      • calificacion_promedio
      • total_resenas
      • pct_con_respuesta del admin
      • pct_destacadas
    """
    try:
        ids_hotel = [int(x.strip()) for x in hoteles.split(",") if x.strip()]
    except ValueError:
        raise HTTPException(400, "Parámetro 'hoteles' debe ser CSV de enteros.")

    if not ids_hotel:
        raise HTTPException(400, "Debe enviar al menos un id de hotel.")

    pipeline = [
        {"$match": {
            "id_hotel": {"$in": ids_hotel},
            "estado":   "publicada"
        }},
        {"$group": {
            "_id":                   "$id_hotel",
            "calificacion_promedio": {"$avg": "$calificacion"},
            "total_resenas":         {"$sum": 1},
            "con_respuesta": {
                "$sum": {"$cond": [{"$ifNull": ["$respuesta_admin", False]}, 1, 0]}
            },
            "destacadas": {
                "$sum": {"$cond": ["$destacada", 1, 0]}
            }
        }},
        {"$project": {
            "_id":                   0,
            "id_hotel":              "$_id",
            "calificacion_promedio": {"$round": ["$calificacion_promedio", 2]},
            "total_resenas":         1,
            "pct_con_respuesta": {
                "$round": [
                    {"$multiply": [
                        {"$divide": ["$con_respuesta", "$total_resenas"]},
                        100
                    ]},
                    1
                ]
            },
            "pct_destacadas": {
                "$round": [
                    {"$multiply": [
                        {"$divide": ["$destacadas", "$total_resenas"]},
                        100
                    ]},
                    1
                ]
            }
        }},
        {"$sort": {"calificacion_promedio": -1}}
    ]

    return list(resenas.aggregate(pipeline))
