use("ISIS2304F06202610");

function probar(descripcion, fn) {
    print("\n──────────────────────────────────────────");
    print("TEST: " + descripcion);
    try {
        fn();
        print("❌ RESULTADO: El documento fue aceptado (No debería haberlo sido)");
    } catch (e) {
        print("✅ RESULTADO: Documento rechazado correctamente");
        print("   Error: " + e.message.substring(0, 120));
    }
}


//  RF1 — INSERTS INVÁLIDOS

print("\n\n╔══════════════════════════════════════════╗");
print("║   RF1 — INSERTS INVÁLIDOS                ║");
print("╚══════════════════════════════════════════╝");


// ── TEST 1: Falta campo requerido (texto)
probar("RF1-T1 — Falta campo requerido: 'texto'", () => {
    db.resenas.insertOne({
        id_reserva:     9999,
        id_hotel:       1,
        id_cliente:     3,
        calificacion:   4,
        // texto: ausente intencionalmente
        fecha_creacion: new Date(),
        estado:         "publicada",
        destacada:      false,
        votos_util:     { count: 0, usuarios: [] }
    });
});


// ── TEST 2: Calificación fuera de rango (> 5)
probar("RF1-T2 — Calificación fuera de rango: calificacion = 6", () => {
    db.resenas.insertOne({
        id_reserva:     9998,
        id_hotel:       1,
        id_cliente:     3,
        calificacion:   6,          // máximo permitido es 5
        texto:          "Muy buen hotel",
        fecha_creacion: new Date(),
        estado:         "publicada",
        destacada:      false,
        votos_util:     { count: 0, usuarios: [] }
    });
});


// ── TEST 3: Calificación fuera de rango (< 1)
probar("RF1-T3 — Calificación fuera de rango: calificacion = 0", () => {
    db.resenas.insertOne({
        id_reserva:     9997,
        id_hotel:       1,
        id_cliente:     3,
        calificacion:   0,          // mínimo permitido es 1
        texto:          "Pésimo hotel",
        fecha_creacion: new Date(),
        estado:         "publicada",
        destacada:      false,
        votos_util:     { count: 0, usuarios: [] }
    });
});


// ── TEST 4: Estado con valor no permitido
probar("RF1-T4 — Estado inválido: estado = 'borrador'", () => {
    db.resenas.insertOne({
        id_reserva:     9996,
        id_hotel:       1,
        id_cliente:     3,
        calificacion:   4,
        texto:          "Buena experiencia",
        fecha_creacion: new Date(),
        estado:         "borrador",  // solo "publicada" o "eliminada"
        destacada:      false,
        votos_util:     { count: 0, usuarios: [] }
    });
});


// ── TEST 5: Texto vacío (minLength = 1)
probar("RF1-T5 — Texto vacío: texto = ''", () => {
    db.resenas.insertOne({
        id_reserva:     9995,
        id_hotel:       1,
        id_cliente:     3,
        calificacion:   3,
        texto:          "",          // mínimo 1 carácter
        fecha_creacion: new Date(),
        estado:         "publicada",
        destacada:      false,
        votos_util:     { count: 0, usuarios: [] }
    });
});


// ── TEST 6: votos_util mal formado (falta 'usuarios') 
probar("RF1-T6 — votos_util incompleto: falta campo 'usuarios'", () => {
    db.resenas.insertOne({
        id_reserva:     9993,
        id_hotel:       1,
        id_cliente:     3,
        calificacion:   4,
        texto:          "Buena experiencia",
        fecha_creacion: new Date(),
        estado:         "publicada",
        destacada:      false,
        votos_util:     { count: 0 }   // falta 'usuarios'
    });
});

// ── TEST 7: respuesta_admin mal formada (falta 'fecha')
probar("RF1-T7 — respuesta_admin incompleta: falta campo 'fecha'", () => {
    db.resenas.insertOne({
        id_reserva:     9990,
        id_hotel:       1,
        id_cliente:     3,
        calificacion:   4,
        texto:          "Buena experiencia",
        fecha_creacion: new Date(),
        estado:         "publicada",
        destacada:      false,
        votos_util:     { count: 0, usuarios: [] },
        respuesta_admin: {
            id_admin: 1,
            texto:    "Gracias por su visita"
            // fecha: ausente intencionalmente
        }
    });
});



//  RF2 — UPDATES INVÁLIDOS
//  validationLevel "strict" aplica el esquema también en updates

print("\n\n╔══════════════════════════════════════════╗");
print("║   RF2 — UPDATES INVÁLIDOS                ║");
print("╚══════════════════════════════════════════╝");

// Primero insertamos una reseña válida sobre la cual haremos los updates
print("\n── Insertando reseña base válida para updates...");
const resenaBase = {
    id_reserva:     8002,
    id_hotel:       3,
    id_cliente:     15,
    calificacion:   3,
    texto:          "Reseña base para pruebas de edición RF2",
    fecha_creacion: new Date(),
    estado:         "publicada",
    destacada:      false,
    votos_util:     { count: 0, usuarios: [] }
};
const insertResult = db.resenas.insertOne(resenaBase);
const idBase = insertResult.insertedId;
print("   Reseña base insertada con _id: " + idBase);


// ── TEST 8: Update con calificación inválida
probar("RF2-T8 — Editar calificacion a valor inválido: calificacion = 10", () => {
    db.resenas.updateOne(
        { _id: idBase },
        { $set: { calificacion: 10 } }   // máximo es 5
    );
});


// ── TEST 9: Update con texto vacío
probar("RF2-T9 — Editar texto a string vacío: texto = ''", () => {
    db.resenas.updateOne(
        { _id: idBase },
        { $set: { texto: "" } }   // minLength es 1
    );
});


// ── TEST 10: Update que cambia estado a valor no permitido 
probar("RF2-T10 — Editar estado a valor no permitido: estado = 'suspendida'", () => {
    db.resenas.updateOne(
        { _id: idBase },
        { $set: { estado: "suspendida" } }   // solo "publicada" o "eliminada"
    );
});


print("\n\n╔══════════════════════════════════════════╗");
print("║   INSERTS VÁLIDOS (deben funcionar)      ║");
print("╚══════════════════════════════════════════╝");

print("\n── Insertando documento válido sin respuesta admin...");
try {
    db.resenas.insertOne({
        id_reserva:     8003,
        id_hotel:       5,
        id_cliente:     20,
        calificacion:   5,
        texto:          "Hotel excelente, volveré sin duda.",
        fecha_creacion: new Date(),
        estado:         "publicada",
        destacada:      false,
        votos_util:     { count: 2, usuarios: [11, 45] }
    });
    print("✅ Insertado correctamente (sin respuesta_admin)");
} catch (e) {
    print("❌ Error inesperado: " + e.message);
}

print("\n── Insertando documento válido con respuesta admin...");
try {
    db.resenas.insertOne({
        id_reserva:     8004,
        id_hotel:       5,
        id_cliente:     22,
        calificacion:   4,
        texto:          "Muy buena experiencia en general.",
        fecha_creacion: new Date(),
        estado:         "publicada",
        destacada:      false,
        votos_util:     { count: 1, usuarios: [78] },
        respuesta_admin: {
            id_admin: 2,
            texto:    "Gracias por elegirnos, esperamos verle pronto.",
            fecha:    new Date()
        }
    });
    print("✅ Insertado correctamente (con respuesta_admin)");
} catch (e) {
    print("❌ Error inesperado: " + e.message);
}

print("\n── Update válido sobre reseña base (RF2)...");
try {
    db.resenas.updateOne(
        { _id: idBase },
        { $set: { calificacion: 5, texto: "Actualicé mi reseña, fue mejor de lo que pensé." } }
    );
    print("✅ Update válido aceptado correctamente");
} catch (e) {
    print("❌ Error inesperado: " + e.message);
}

//  LIMPIEZA — eliminar documentos de prueba

print("\n\n── Limpiando documentos de prueba...");
const resultado = db.resenas.deleteMany({
    id_reserva: { $in: [8001, 8002, 8003, 8004] }
});
print("   Documentos de prueba eliminados: " + resultado.deletedCount);

print("\n\n[OK] Escenarios de prueba completados.\n");
