// ════════════════════════════════════════════════════════════════════════════
//  Dann-Alpes — ISIS1511 — Entrega 3
//  Punto 1d. Esquemas de validación (JSON Schema) para las colecciones
//
//  Ejecución en MongoDB Compass:
//    1) Conectarse al servidor MongoDB
//    2) Abrir la pestaña "MongoSH" (Ctrl/Cmd + `)
//    3) Pegar este script  ─o─ ejecutar:   load("1d_validacion.js")
//
//  Este script es AUTÓNOMO: re-crea la colección "resenas" con su validador
//  y todos los índices (incluye lo del 1c). Es idempotente.
//
//  Modelo de validación aplicado:
//    • validationLevel : "strict"  → valida inserts y updates
//    • validationAction: "error"   → rechaza documentos no conformes
// ════════════════════════════════════════════════════════════════════════════


use("dann_alpes");


// ─── 1. Limpieza preventiva ────────────────────────────────────────────────

db.resenas.drop();


// ─── 2. Creación de la colección CON validador ─────────────────────────────

db.createCollection("resenas", {

    validator: {
        $jsonSchema: {

            bsonType: "object",
            title:    "Esquema de validación — colección resenas",
            required: [
                "id_reserva", "id_hotel", "id_cliente",
                "calificacion", "texto", "fecha_creacion",
                "estado", "destacada", "votos_util"
            ],
            additionalProperties: false,
            description: "Reseña de un huésped sobre una estadía completada en Dann-Alpes.",

            properties: {

                // ── Identificador interno de MongoDB ────────────────────────
                _id: {
                    bsonType: "objectId",
                    description: "ObjectId generado automáticamente por MongoDB."
                },

                // ── Referencias a Oracle (diseño híbrido) ───────────────────
                id_reserva: {
                    bsonType: ["int", "long"],
                    minimum: 1,
                    description: "Referencia a Oracle Reservas.id. Entero positivo. " +
                                 "Único en la colección (RF1: una reserva → máx. una reseña)."
                },
                id_hotel: {
                    bsonType: ["int", "long"],
                    minimum: 1,
                    description: "Referencia a Oracle Hoteles.id. Entero positivo."
                },
                id_cliente: {
                    bsonType: ["int", "long"],
                    minimum: 1,
                    description: "Referencia a Oracle Clientes.id_usuario. Entero positivo."
                },

                // ── Contenido de la reseña ──────────────────────────────────
                calificacion: {
                    bsonType: ["int", "long"],
                    minimum: 1,
                    maximum: 5,
                    description: "Calificación entera de la reseña, entre 1 y 5 inclusive."
                },
                texto: {
                    bsonType: "string",
                    minLength: 1,
                    maxLength: 2000,
                    description: "Texto libre de la reseña. Entre 1 y 2000 caracteres."
                },
                fecha_creacion: {
                    bsonType: "date",
                    description: "Timestamp de creación de la reseña (BSON Date)."
                },

                // ── Estado y moderación ─────────────────────────────────────
                estado: {
                    enum: ["publicada", "eliminada"],
                    description: "Estado de la reseña. Valores permitidos: " +
                                 "'publicada' o 'eliminada' (soft delete RF3 / RF8)."
                },
                destacada: {
                    bsonType: "bool",
                    description: "Indica si la reseña está destacada por el admin (RF9). " +
                                 "Restricción de unicidad por hotel se valida en la aplicación."
                },

                // ── Sub-documento EMBEBIDO: respuesta del administrador ─────
                //     Relación 1:0..1 con la reseña. Campo opcional: ausente
                //     cuando el hotel aún no ha respondido. Cuando está
                //     presente, debe ser un objeto completo y bien formado.
                respuesta_admin: {
                    bsonType: "object",
                    required: ["id_admin", "texto", "fecha"],
                    additionalProperties: false,
                    description: "Respuesta oficial del administrador del hotel (RF7).",
                    properties: {
                        id_admin: {
                            bsonType: ["int", "long"],
                            minimum: 1,
                            description: "Referencia a Oracle Administradores.id_usuario."
                        },
                        texto: {
                            bsonType: "string",
                            minLength: 1,
                            maxLength: 1000,
                            description: "Texto de la respuesta. Entre 1 y 1000 caracteres."
                        },
                        fecha: {
                            bsonType: "date",
                            description: "Timestamp de la respuesta (o última edición)."
                        }
                    }
                },

                // ── Sub-documento EMBEBIDO: votos de utilidad ───────────────
                //     Relación 1:N con la reseña. Embebido por baja cardinalidad
                //     promedio (~1.46 votos/reseña/año). count se mantiene
                //     atómicamente vía $inc y usuarios previene doble voto (RF5).
                votos_util: {
                    bsonType: "object",
                    required: ["count", "usuarios"],
                    additionalProperties: false,
                    description: "Contador y lista de usuarios que marcaron útil (RF5).",
                    properties: {
                        count: {
                            bsonType: ["int", "long"],
                            minimum: 0,
                            description: "Número de votos útiles. Debe ser igual a usuarios.length."
                        },
                        usuarios: {
                            bsonType: "array",
                            uniqueItems: true,
                            description: "IDs de usuarios votantes. Únicos para prevenir doble voto.",
                            items: {
                                bsonType: ["int", "long"],
                                minimum: 1,
                                description: "ID del usuario que marcó la reseña como útil."
                            }
                        }
                    }
                }
            }
        }
    },

    validationLevel:  "strict",
    validationAction: "error"
});


// ─── 3. Re-creación de índices (idéntico a 1c) ─────────────────────────────

db.resenas.createIndex(
    { id_reserva: 1 },
    { unique: true, name: "uq_id_reserva" }
);

db.resenas.createIndex(
    { id_hotel: 1, estado: 1, fecha_creacion: -1 },
    { name: "idx_hotel_estado_fecha" }
);

db.resenas.createIndex(
    { id_hotel: 1, estado: 1, "votos_util.count": -1 },
    { name: "idx_hotel_estado_utilidad" }
);

db.resenas.createIndex(
    { id_cliente: 1, fecha_creacion: -1 },
    { name: "idx_cliente_fecha" }
);

db.resenas.createIndex(
    { id_hotel: 1 },
    { partialFilterExpression: { destacada: true }, name: "idx_hotel_destacada" }
);


// ─── 4. Verificación ───────────────────────────────────────────────────────

print("\n══════ COLECCIÓN resenas — INFORMACIÓN ══════");
const info = db.getCollectionInfos({ name: "resenas" })[0];
print("   • validationLevel  : " + info.options.validationLevel);
print("   • validationAction : " + info.options.validationAction);
print("   • validator        : configurado (ver detalle abajo)\n");

print("══════ JSON SCHEMA APLICADO ══════");
printjson(info.options.validator.$jsonSchema);

print("\n══════ ÍNDICES DE resenas ══════");
db.resenas.getIndexes().forEach(i =>
    print("   • " + i.name.padEnd(30) + " " + JSON.stringify(i.key))
);

print("\n[OK] Validación e índices aplicados correctamente.\n");
