-- ── 1. CIUDADES (8) ──────────────────────────────────────────────────────────
INSERT INTO Ciudades (nombre) VALUES ('Bogota');
INSERT INTO Ciudades (nombre) VALUES ('Medellin');
INSERT INTO Ciudades (nombre) VALUES ('Cartagena');
INSERT INTO Ciudades (nombre) VALUES ('Santa Marta');
INSERT INTO Ciudades (nombre) VALUES ('Cali');
INSERT INTO Ciudades (nombre) VALUES ('Barranquilla');
INSERT INTO Ciudades (nombre) VALUES ('San Andres');
INSERT INTO Ciudades (nombre) VALUES ('Pereira');
COMMIT;

-- ── 2. HOTELES (18) ──────────────────────────────────────────────────────────
INSERT INTO Hoteles (nombre, direccion, telefono, descripcion, id_ciudades)
  VALUES ('Dann-Alpes Bogota Norte', 'Calle 100 No 15-20', 6011001001, 'Hotel de lujo en el norte de Bogota, cerca de centros comerciales y zona empresarial.', 1);
INSERT INTO Hoteles (nombre, direccion, telefono, descripcion, id_ciudades)
  VALUES ('Dann-Alpes Bogota Centro', 'Carrera 7 No 32-16', 6011002002, 'Hotel en el centro historico de Bogota con vistas privilegiadas a la ciudad.', 1);
INSERT INTO Hoteles (nombre, direccion, telefono, descripcion, id_ciudades)
  VALUES ('Dann-Alpes Bogota Zona Rosa', 'Calle 82 No 11-37', 6011003003, 'Hotel boutique en la vibrante Zona Rosa, rodeado de restaurantes y vida nocturna.', 1);
INSERT INTO Hoteles (nombre, direccion, telefono, descripcion, id_ciudades)
  VALUES ('Dann-Alpes Medellin El Poblado', 'Carrera 43A No 7-50', 6042001001, 'Hotel premium en el exclusivo barrio El Poblado con piscina y spa de lujo.', 2);
INSERT INTO Hoteles (nombre, direccion, telefono, descripcion, id_ciudades)
  VALUES ('Dann-Alpes Medellin Laureles', 'Calle 33 No 76-40', 6042002002, 'Acogedor hotel en el tranquilo barrio Laureles, ideal para viajes de negocios.', 2);
INSERT INTO Hoteles (nombre, direccion, telefono, descripcion, id_ciudades)
  VALUES ('Dann-Alpes Medellin Centro', 'Carrera 52 No 49-32', 6042003003, 'Hotel clasico ubicado en el corazon de Medellin, proximo al Metro.', 2);
INSERT INTO Hoteles (nombre, direccion, telefono, descripcion, id_ciudades)
  VALUES ('Dann-Alpes Cartagena Bocagrande', 'Calle 2 No 2-10 Bocagrande', 6052001001, 'Hotel frente al mar en la peninsula de Bocagrande con playa privada.', 3);
INSERT INTO Hoteles (nombre, direccion, telefono, descripcion, id_ciudades)
  VALUES ('Dann-Alpes Cartagena Centro Hist', 'Calle del Arsenal No 8-146', 6052002002, 'Hotel colonial en el corazon amurallado de Cartagena, Patrimonio de la Humanidad.', 3);
INSERT INTO Hoteles (nombre, direccion, telefono, descripcion, id_ciudades)
  VALUES ('Dann-Alpes Cartagena Laguito', 'Avenida del Lago No 1-20', 6052003003, 'Hotel de alto standing en El Laguito con acceso directo a la playa.', 3);
INSERT INTO Hoteles (nombre, direccion, telefono, descripcion, id_ciudades)
  VALUES ('Dann-Alpes Santa Marta Bello Hor', 'Carretera Bello Horizonte Km3', 6054001001, 'Resort con playa privada y deportes acuaticos en Bello Horizonte.', 4);
INSERT INTO Hoteles (nombre, direccion, telefono, descripcion, id_ciudades)
  VALUES ('Dann-Alpes Santa Marta Rodadero', 'Carrera 2 No 11-27 El Rodadero', 6054002002, 'Hotel frente al mar en El Rodadero, zona turistica mas popular de Santa Marta.', 4);
INSERT INTO Hoteles (nombre, direccion, telefono, descripcion, id_ciudades)
  VALUES ('Dann-Alpes Cali Granada', 'Avenida 9N No 14-06', 6022001001, 'Hotel moderno en el barrio Granada, el mas exclusivo de Cali.', 5);
INSERT INTO Hoteles (nombre, direccion, telefono, descripcion, id_ciudades)
  VALUES ('Dann-Alpes Cali Ciudad Jardin', 'Calle 9 No 43-65', 6022002002, 'Elegante hotel en Ciudad Jardin con hermosos jardines tropicales y piscina.', 5);
INSERT INTO Hoteles (nombre, direccion, telefono, descripcion, id_ciudades)
  VALUES ('Dann-Alpes Barranquilla El Prado', 'Carrera 54 No 75-60', 6053001001, 'Hotel historico en el clasico barrio El Prado, patrimonio arquitectonico de Barranquilla.', 6);
INSERT INTO Hoteles (nombre, direccion, telefono, descripcion, id_ciudades)
  VALUES ('Dann-Alpes Barranquilla Pto Colombia', 'Calle del Malecon No 3-15', 6053002002, 'Hotel costero en Puerto Colombia con vista panoramica al Caribe.', 6);
INSERT INTO Hoteles (nombre, direccion, telefono, descripcion, id_ciudades)
  VALUES ('Dann-Alpes San Andres Sunrise', 'Avenida Colombia No 1-20', 6085001001, 'Resort en la playa de San Andres con acceso directo al mar de los siete colores.', 7);
INSERT INTO Hoteles (nombre, direccion, telefono, descripcion, id_ciudades)
  VALUES ('Dann-Alpes San Andres Centro', 'Avenida Newball No 3-40', 6085002002, 'Hotel central en San Andres, a pasos del comercio y actividades de buceo.', 7);
INSERT INTO Hoteles (nombre, direccion, telefono, descripcion, id_ciudades)
  VALUES ('Dann-Alpes Pereira Pinares', 'Carrera 12 No 1-60 Pinares', 6063001001, 'Hotel familiar en el exclusivo sector Pinares de Pereira con piscina y spa.', 8);
COMMIT;

-- ── 3. CAMAS — catalogo de tipos de cama (sin atributo cantidad) ────────────
INSERT INTO Camas (tipo) VALUES ('King');
INSERT INTO Camas (tipo) VALUES ('Queen');
INSERT INTO Camas (tipo) VALUES ('Doble');
INSERT INTO Camas (tipo) VALUES ('Single');
COMMIT;

-- ── 4. COMODIDADES — catalogo de amenidades ──────────────────────────────────
INSERT INTO Comodidades (nombre) VALUES ('Aire acondicionado');
INSERT INTO Comodidades (nombre) VALUES ('Calefaccion');
INSERT INTO Comodidades (nombre) VALUES ('Television');
INSERT INTO Comodidades (nombre) VALUES ('WiFi');
INSERT INTO Comodidades (nombre) VALUES ('Minibar');
INSERT INTO Comodidades (nombre) VALUES ('Bano privado');
COMMIT;

-- ── 5. SERVICIOS — catalogo de servicios adicionales ────────────────────────
INSERT INTO Servicios (nombre, precio, tipo_costo, descripcion)
  VALUES ('Cancelacion flexible', 50000, 'fijo', 'Cancelacion sin cargo hasta 1 dia antes del check-in.');
INSERT INTO Servicios (nombre, precio, tipo_costo, descripcion)
  VALUES ('Airport Shuttle', 80000, 'fijo', 'Traslado desde y hacia el aeropuerto.');
INSERT INTO Servicios (nombre, precio, tipo_costo, descripcion)
  VALUES ('Check-in temprano', 40000, 'fijo', 'Ingreso a la habitacion desde las 9:00 AM.');
INSERT INTO Servicios (nombre, precio, tipo_costo, descripcion)
  VALUES ('Check-out tardio', 40000, 'fijo', 'Salida de la habitacion hasta las 4:00 PM.');
INSERT INTO Servicios (nombre, precio, tipo_costo, descripcion)
  VALUES ('Cuna para bebe', 30000, 'fijo', 'Cuna certificada disponible en la habitacion.');
INSERT INTO Servicios (nombre, precio, tipo_costo, descripcion)
  VALUES ('Acceso a sauna', 35000, 'fijo', 'Acceso ilimitado al sauna durante la estadia.');
INSERT INTO Servicios (nombre, precio, tipo_costo, descripcion)
  VALUES ('Desayuno', 45000, 'por consumo', 'Desayuno buffet por persona por dia.');
INSERT INTO Servicios (nombre, precio, tipo_costo, descripcion)
  VALUES ('Valet Parking', 25000, 'por consumo', 'Servicio de parqueo con asistente.');
INSERT INTO Servicios (nombre, precio, tipo_costo, descripcion)
  VALUES ('Almuerzo', 55000, 'por consumo', 'Almuerzo en el restaurante por persona.');
INSERT INTO Servicios (nombre, precio, tipo_costo, descripcion)
  VALUES ('Servicio de masajes', 90000, 'por consumo', 'Sesion de masajes relajantes de 60 minutos.');
INSERT INTO Servicios (nombre, precio, tipo_costo, descripcion)
  VALUES ('Plan de deportes', 60000, 'por consumo', 'Acceso a actividades deportivas y recreativas.');
COMMIT;

-- ── 6. TIPOS_HABITACION (4 × 18 = 72) ───────────────────────────────────────
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Estandar', 1, 171000.0, 133000.0, 22.5, 2, 'estandar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Doble', 1, 266000.0, 209000.0, 30.0, 4, 'estandar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Junior', 1, 456000.0, 361000.0, 55.0, 4, 'a monumentos');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Presidencial', 1, 902500.0, 712500.0, 90.0, 6, 'a piscina');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Estandar', 2, 180000.0, 140000.0, 22.5, 2, 'estandar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Doble', 2, 280000.0, 220000.0, 30.0, 4, 'estandar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Junior', 2, 480000.0, 380000.0, 55.0, 4, 'a monumentos');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Presidencial', 2, 950000.0, 750000.0, 90.0, 6, 'a piscina');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Estandar', 3, 189000.0, 147000.0, 22.5, 2, 'estandar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Doble', 3, 294000.0, 231000.0, 30.0, 4, 'estandar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Junior', 3, 504000.0, 399000.0, 55.0, 4, 'a monumentos');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Presidencial', 3, 997500.0, 787500.0, 90.0, 6, 'a piscina');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Estandar', 4, 198000.0, 154000.0, 22.5, 2, 'estandar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Doble', 4, 308000.0, 242000.0, 30.0, 4, 'estandar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Junior', 4, 528000.0, 418000.0, 55.0, 4, 'a monumentos');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Presidencial', 4, 1045000.0, 825000.0, 90.0, 6, 'a piscina');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Estandar', 5, 162000.0, 126000.0, 22.5, 2, 'estandar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Doble', 5, 252000.0, 198000.0, 30.0, 4, 'estandar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Junior', 5, 432000.0, 342000.0, 55.0, 4, 'a monumentos');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Presidencial', 5, 855000.0, 675000.0, 90.0, 6, 'a piscina');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Estandar', 6, 171000.0, 133000.0, 22.5, 2, 'estandar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Doble', 6, 266000.0, 209000.0, 30.0, 4, 'estandar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Junior', 6, 456000.0, 361000.0, 55.0, 4, 'a monumentos');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Presidencial', 6, 902500.0, 712500.0, 90.0, 6, 'a piscina');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Estandar', 7, 180000.0, 140000.0, 22.5, 2, 'estandar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Doble', 7, 280000.0, 220000.0, 30.0, 4, 'a piscina');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Junior', 7, 480000.0, 380000.0, 55.0, 4, 'al mar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Presidencial', 7, 950000.0, 750000.0, 90.0, 6, 'al mar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Estandar', 8, 189000.0, 147000.0, 22.5, 2, 'estandar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Doble', 8, 294000.0, 231000.0, 30.0, 4, 'a piscina');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Junior', 8, 504000.0, 399000.0, 55.0, 4, 'al mar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Presidencial', 8, 997500.0, 787500.0, 90.0, 6, 'al mar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Estandar', 9, 198000.0, 154000.0, 22.5, 2, 'estandar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Doble', 9, 308000.0, 242000.0, 30.0, 4, 'a piscina');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Junior', 9, 528000.0, 418000.0, 55.0, 4, 'al mar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Presidencial', 9, 1045000.0, 825000.0, 90.0, 6, 'al mar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Estandar', 10, 162000.0, 126000.0, 22.5, 2, 'estandar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Doble', 10, 252000.0, 198000.0, 30.0, 4, 'a piscina');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Junior', 10, 432000.0, 342000.0, 55.0, 4, 'al mar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Presidencial', 10, 855000.0, 675000.0, 90.0, 6, 'al mar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Estandar', 11, 171000.0, 133000.0, 22.5, 2, 'estandar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Doble', 11, 266000.0, 209000.0, 30.0, 4, 'a piscina');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Junior', 11, 456000.0, 361000.0, 55.0, 4, 'al mar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Presidencial', 11, 902500.0, 712500.0, 90.0, 6, 'al mar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Estandar', 12, 180000.0, 140000.0, 22.5, 2, 'estandar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Doble', 12, 280000.0, 220000.0, 30.0, 4, 'estandar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Junior', 12, 480000.0, 380000.0, 55.0, 4, 'a monumentos');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Presidencial', 12, 950000.0, 750000.0, 90.0, 6, 'a piscina');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Estandar', 13, 189000.0, 147000.0, 22.5, 2, 'estandar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Doble', 13, 294000.0, 231000.0, 30.0, 4, 'estandar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Junior', 13, 504000.0, 399000.0, 55.0, 4, 'a monumentos');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Presidencial', 13, 997500.0, 787500.0, 90.0, 6, 'a piscina');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Estandar', 14, 198000.0, 154000.0, 22.5, 2, 'estandar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Doble', 14, 308000.0, 242000.0, 30.0, 4, 'a piscina');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Junior', 14, 528000.0, 418000.0, 55.0, 4, 'al mar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Presidencial', 14, 1045000.0, 825000.0, 90.0, 6, 'al mar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Estandar', 15, 162000.0, 126000.0, 22.5, 2, 'estandar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Doble', 15, 252000.0, 198000.0, 30.0, 4, 'a piscina');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Junior', 15, 432000.0, 342000.0, 55.0, 4, 'al mar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Presidencial', 15, 855000.0, 675000.0, 90.0, 6, 'al mar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Estandar', 16, 171000.0, 133000.0, 22.5, 2, 'estandar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Doble', 16, 266000.0, 209000.0, 30.0, 4, 'a piscina');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Junior', 16, 456000.0, 361000.0, 55.0, 4, 'al mar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Presidencial', 16, 902500.0, 712500.0, 90.0, 6, 'al mar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Estandar', 17, 180000.0, 140000.0, 22.5, 2, 'estandar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Doble', 17, 280000.0, 220000.0, 30.0, 4, 'a piscina');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Junior', 17, 480000.0, 380000.0, 55.0, 4, 'al mar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Presidencial', 17, 950000.0, 750000.0, 90.0, 6, 'al mar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Estandar', 18, 189000.0, 147000.0, 22.5, 2, 'estandar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Habitacion Doble', 18, 294000.0, 231000.0, 30.0, 4, 'estandar');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Junior', 18, 504000.0, 399000.0, 55.0, 4, 'a monumentos');
INSERT INTO Tipos_habitacion
  (nombre, id_hoteles, costo_base_alta, costo_base_baja, dimensiones, cap_maxima, tipo_vista)
  VALUES ('Suite Presidencial', 18, 997500.0, 787500.0, 90.0, 6, 'a piscina');
COMMIT;

-- ── 7. HABITACIONES (3 × 4 × 18 = 216) ──────────────────────────────────────
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (111, 1, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (112, 1, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (113, 1, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (121, 1, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (122, 1, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (123, 1, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (131, 1, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (132, 1, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (133, 1, 'en mantenimiento', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (141, 1, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (142, 1, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (143, 1, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (211, 2, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (212, 2, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (213, 2, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (221, 2, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (222, 2, 'en mantenimiento', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (223, 2, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (231, 2, 'en mantenimiento', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (232, 2, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (233, 2, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (241, 2, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (242, 2, 'en mantenimiento', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (243, 2, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (311, 3, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (312, 3, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (313, 3, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (321, 3, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (322, 3, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (323, 3, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (331, 3, 'en mantenimiento', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (332, 3, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (333, 3, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (341, 3, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (342, 3, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (343, 3, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (411, 4, 'en mantenimiento', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (412, 4, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (413, 4, 'en mantenimiento', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (421, 4, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (422, 4, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (423, 4, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (431, 4, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (432, 4, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (433, 4, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (441, 4, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (442, 4, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (443, 4, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (511, 5, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (512, 5, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (513, 5, 'en mantenimiento', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (521, 5, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (522, 5, 'en mantenimiento', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (523, 5, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (531, 5, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (532, 5, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (533, 5, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (541, 5, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (542, 5, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (543, 5, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (611, 6, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (612, 6, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (613, 6, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (621, 6, 'en mantenimiento', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (622, 6, 'en mantenimiento', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (623, 6, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (631, 6, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (632, 6, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (633, 6, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (641, 6, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (642, 6, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (643, 6, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (711, 7, 'en mantenimiento', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (712, 7, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (713, 7, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (721, 7, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (722, 7, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (723, 7, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (731, 7, 'en mantenimiento', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (732, 7, 'en mantenimiento', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (733, 7, 'en mantenimiento', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (741, 7, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (742, 7, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (743, 7, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (811, 8, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (812, 8, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (813, 8, 'en mantenimiento', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (821, 8, 'en mantenimiento', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (822, 8, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (823, 8, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (831, 8, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (832, 8, 'en mantenimiento', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (833, 8, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (841, 8, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (842, 8, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (843, 8, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (911, 9, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (912, 9, 'en mantenimiento', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (913, 9, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (921, 9, 'en mantenimiento', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (922, 9, 'en mantenimiento', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (923, 9, 'en mantenimiento', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (931, 9, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (932, 9, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (933, 9, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (941, 9, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (942, 9, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (943, 9, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1011, 10, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1012, 10, 'en mantenimiento', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1013, 10, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1021, 10, 'en mantenimiento', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1022, 10, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1023, 10, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1031, 10, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1032, 10, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1033, 10, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1041, 10, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1042, 10, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1043, 10, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1111, 11, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1112, 11, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1113, 11, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1121, 11, 'en mantenimiento', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1122, 11, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1123, 11, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1131, 11, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1132, 11, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1133, 11, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1141, 11, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1142, 11, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1143, 11, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1211, 12, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1212, 12, 'en mantenimiento', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1213, 12, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1221, 12, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1222, 12, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1223, 12, 'en mantenimiento', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1231, 12, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1232, 12, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1233, 12, 'en mantenimiento', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1241, 12, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1242, 12, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1243, 12, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1311, 13, 'en mantenimiento', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1312, 13, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1313, 13, 'en mantenimiento', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1321, 13, 'en mantenimiento', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1322, 13, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1323, 13, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1331, 13, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1332, 13, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1333, 13, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1341, 13, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1342, 13, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1343, 13, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1411, 14, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1412, 14, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1413, 14, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1421, 14, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1422, 14, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1423, 14, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1431, 14, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1432, 14, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1433, 14, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1441, 14, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1442, 14, 'en mantenimiento', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1443, 14, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1511, 15, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1512, 15, 'en mantenimiento', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1513, 15, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1521, 15, 'en mantenimiento', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1522, 15, 'en mantenimiento', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1523, 15, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1531, 15, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1532, 15, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1533, 15, 'en mantenimiento', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1541, 15, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1542, 15, 'en mantenimiento', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1543, 15, 'en mantenimiento', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1611, 16, 'en mantenimiento', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1612, 16, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1613, 16, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1621, 16, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1622, 16, 'en mantenimiento', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1623, 16, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1631, 16, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1632, 16, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1633, 16, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1641, 16, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1642, 16, 'en mantenimiento', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1643, 16, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1711, 17, 'en mantenimiento', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1712, 17, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1713, 17, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1721, 17, 'en mantenimiento', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1722, 17, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1723, 17, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1731, 17, 'en mantenimiento', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1732, 17, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1733, 17, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1741, 17, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1742, 17, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1743, 17, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1811, 18, 'disponible', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1812, 18, 'en mantenimiento', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1813, 18, 'en mantenimiento', 'Habitacion Estandar');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1821, 18, 'en mantenimiento', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1822, 18, 'disponible', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1823, 18, 'en mantenimiento', 'Habitacion Doble');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1831, 18, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1832, 18, 'disponible', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1833, 18, 'en mantenimiento', 'Suite Junior');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1841, 18, 'disponible', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1842, 18, 'en mantenimiento', 'Suite Presidencial');
INSERT INTO Habitaciones (numero, id_hoteles, estado_mantenimiento, nombre_tipo_habitacion)
  VALUES (1843, 18, 'disponible', 'Suite Presidencial');
COMMIT;

-- ── 8. CAMAS_POR_HABITACION (con atributo cantidad) ─────────────────────────
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Estandar', 1);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Doble', 1);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Single', 'Habitacion Doble', 1);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Junior', 1);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (2, 'Single', 'Suite Junior', 1);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'King', 'Suite Presidencial', 1);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Presidencial', 1);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Estandar', 2);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Doble', 2);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Single', 'Habitacion Doble', 2);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Junior', 2);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (2, 'Single', 'Suite Junior', 2);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'King', 'Suite Presidencial', 2);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Presidencial', 2);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Estandar', 3);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Doble', 3);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Single', 'Habitacion Doble', 3);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Junior', 3);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (2, 'Single', 'Suite Junior', 3);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'King', 'Suite Presidencial', 3);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Presidencial', 3);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Estandar', 4);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Doble', 4);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Single', 'Habitacion Doble', 4);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Junior', 4);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (2, 'Single', 'Suite Junior', 4);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'King', 'Suite Presidencial', 4);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Presidencial', 4);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Estandar', 5);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Doble', 5);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Single', 'Habitacion Doble', 5);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Junior', 5);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (2, 'Single', 'Suite Junior', 5);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'King', 'Suite Presidencial', 5);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Presidencial', 5);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Estandar', 6);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Doble', 6);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Single', 'Habitacion Doble', 6);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Junior', 6);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (2, 'Single', 'Suite Junior', 6);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'King', 'Suite Presidencial', 6);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Presidencial', 6);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Estandar', 7);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Doble', 7);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Single', 'Habitacion Doble', 7);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Junior', 7);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (2, 'Single', 'Suite Junior', 7);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'King', 'Suite Presidencial', 7);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Presidencial', 7);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Estandar', 8);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Doble', 8);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Single', 'Habitacion Doble', 8);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Junior', 8);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (2, 'Single', 'Suite Junior', 8);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'King', 'Suite Presidencial', 8);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Presidencial', 8);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Estandar', 9);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Doble', 9);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Single', 'Habitacion Doble', 9);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Junior', 9);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (2, 'Single', 'Suite Junior', 9);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'King', 'Suite Presidencial', 9);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Presidencial', 9);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Estandar', 10);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Doble', 10);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Single', 'Habitacion Doble', 10);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Junior', 10);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (2, 'Single', 'Suite Junior', 10);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'King', 'Suite Presidencial', 10);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Presidencial', 10);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Estandar', 11);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Doble', 11);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Single', 'Habitacion Doble', 11);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Junior', 11);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (2, 'Single', 'Suite Junior', 11);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'King', 'Suite Presidencial', 11);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Presidencial', 11);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Estandar', 12);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Doble', 12);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Single', 'Habitacion Doble', 12);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Junior', 12);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (2, 'Single', 'Suite Junior', 12);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'King', 'Suite Presidencial', 12);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Presidencial', 12);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Estandar', 13);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Doble', 13);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Single', 'Habitacion Doble', 13);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Junior', 13);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (2, 'Single', 'Suite Junior', 13);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'King', 'Suite Presidencial', 13);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Presidencial', 13);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Estandar', 14);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Doble', 14);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Single', 'Habitacion Doble', 14);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Junior', 14);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (2, 'Single', 'Suite Junior', 14);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'King', 'Suite Presidencial', 14);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Presidencial', 14);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Estandar', 15);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Doble', 15);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Single', 'Habitacion Doble', 15);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Junior', 15);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (2, 'Single', 'Suite Junior', 15);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'King', 'Suite Presidencial', 15);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Presidencial', 15);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Estandar', 16);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Doble', 16);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Single', 'Habitacion Doble', 16);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Junior', 16);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (2, 'Single', 'Suite Junior', 16);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'King', 'Suite Presidencial', 16);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Presidencial', 16);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Estandar', 17);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Doble', 17);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Single', 'Habitacion Doble', 17);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Junior', 17);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (2, 'Single', 'Suite Junior', 17);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'King', 'Suite Presidencial', 17);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Presidencial', 17);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Estandar', 18);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Doble', 'Habitacion Doble', 18);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Single', 'Habitacion Doble', 18);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Junior', 18);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (2, 'Single', 'Suite Junior', 18);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'King', 'Suite Presidencial', 18);
INSERT INTO Camas_por_habitacion (cantidad, tipo_cama, nombre_tipo_habitacion, id_hoteles)
  VALUES (1, 'Queen', 'Suite Presidencial', 18);
COMMIT;

-- ── 9. COMODIDADES_POR_TIPO ──────────────────────────────────────────────────
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Estandar', 1);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Estandar', 1);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Estandar', 1);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Estandar', 1);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Doble', 1);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Doble', 1);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Doble', 1);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Doble', 1);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Junior', 1);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Junior', 1);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Junior', 1);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Junior', 1);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Junior', 1);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Presidencial', 1);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Calefaccion', 'Suite Presidencial', 1);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Presidencial', 1);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Presidencial', 1);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Presidencial', 1);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Presidencial', 1);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Estandar', 2);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Estandar', 2);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Estandar', 2);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Estandar', 2);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Doble', 2);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Doble', 2);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Doble', 2);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Doble', 2);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Junior', 2);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Junior', 2);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Junior', 2);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Junior', 2);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Junior', 2);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Presidencial', 2);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Calefaccion', 'Suite Presidencial', 2);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Presidencial', 2);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Presidencial', 2);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Presidencial', 2);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Presidencial', 2);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Estandar', 3);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Estandar', 3);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Estandar', 3);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Estandar', 3);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Doble', 3);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Doble', 3);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Doble', 3);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Doble', 3);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Junior', 3);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Junior', 3);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Junior', 3);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Junior', 3);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Junior', 3);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Presidencial', 3);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Calefaccion', 'Suite Presidencial', 3);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Presidencial', 3);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Presidencial', 3);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Presidencial', 3);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Presidencial', 3);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Estandar', 4);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Estandar', 4);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Estandar', 4);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Estandar', 4);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Doble', 4);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Doble', 4);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Doble', 4);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Doble', 4);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Junior', 4);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Junior', 4);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Junior', 4);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Junior', 4);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Junior', 4);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Presidencial', 4);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Calefaccion', 'Suite Presidencial', 4);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Presidencial', 4);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Presidencial', 4);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Presidencial', 4);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Presidencial', 4);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Estandar', 5);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Estandar', 5);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Estandar', 5);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Estandar', 5);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Doble', 5);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Doble', 5);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Doble', 5);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Doble', 5);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Junior', 5);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Junior', 5);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Junior', 5);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Junior', 5);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Junior', 5);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Presidencial', 5);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Calefaccion', 'Suite Presidencial', 5);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Presidencial', 5);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Presidencial', 5);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Presidencial', 5);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Presidencial', 5);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Estandar', 6);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Estandar', 6);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Estandar', 6);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Estandar', 6);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Doble', 6);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Doble', 6);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Doble', 6);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Doble', 6);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Junior', 6);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Junior', 6);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Junior', 6);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Junior', 6);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Junior', 6);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Presidencial', 6);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Calefaccion', 'Suite Presidencial', 6);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Presidencial', 6);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Presidencial', 6);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Presidencial', 6);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Presidencial', 6);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Estandar', 7);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Estandar', 7);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Estandar', 7);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Estandar', 7);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Doble', 7);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Doble', 7);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Doble', 7);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Doble', 7);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Junior', 7);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Junior', 7);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Junior', 7);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Junior', 7);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Junior', 7);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Presidencial', 7);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Calefaccion', 'Suite Presidencial', 7);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Presidencial', 7);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Presidencial', 7);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Presidencial', 7);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Presidencial', 7);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Estandar', 8);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Estandar', 8);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Estandar', 8);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Estandar', 8);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Doble', 8);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Doble', 8);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Doble', 8);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Doble', 8);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Junior', 8);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Junior', 8);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Junior', 8);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Junior', 8);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Junior', 8);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Presidencial', 8);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Calefaccion', 'Suite Presidencial', 8);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Presidencial', 8);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Presidencial', 8);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Presidencial', 8);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Presidencial', 8);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Estandar', 9);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Estandar', 9);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Estandar', 9);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Estandar', 9);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Doble', 9);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Doble', 9);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Doble', 9);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Doble', 9);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Junior', 9);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Junior', 9);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Junior', 9);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Junior', 9);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Junior', 9);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Presidencial', 9);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Calefaccion', 'Suite Presidencial', 9);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Presidencial', 9);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Presidencial', 9);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Presidencial', 9);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Presidencial', 9);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Estandar', 10);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Estandar', 10);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Estandar', 10);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Estandar', 10);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Doble', 10);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Doble', 10);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Doble', 10);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Doble', 10);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Junior', 10);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Junior', 10);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Junior', 10);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Junior', 10);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Junior', 10);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Presidencial', 10);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Calefaccion', 'Suite Presidencial', 10);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Presidencial', 10);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Presidencial', 10);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Presidencial', 10);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Presidencial', 10);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Estandar', 11);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Estandar', 11);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Estandar', 11);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Estandar', 11);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Doble', 11);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Doble', 11);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Doble', 11);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Doble', 11);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Junior', 11);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Junior', 11);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Junior', 11);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Junior', 11);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Junior', 11);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Presidencial', 11);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Calefaccion', 'Suite Presidencial', 11);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Presidencial', 11);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Presidencial', 11);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Presidencial', 11);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Presidencial', 11);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Estandar', 12);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Estandar', 12);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Estandar', 12);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Estandar', 12);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Doble', 12);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Doble', 12);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Doble', 12);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Doble', 12);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Junior', 12);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Junior', 12);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Junior', 12);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Junior', 12);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Junior', 12);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Presidencial', 12);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Calefaccion', 'Suite Presidencial', 12);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Presidencial', 12);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Presidencial', 12);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Presidencial', 12);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Presidencial', 12);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Estandar', 13);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Estandar', 13);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Estandar', 13);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Estandar', 13);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Doble', 13);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Doble', 13);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Doble', 13);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Doble', 13);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Junior', 13);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Junior', 13);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Junior', 13);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Junior', 13);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Junior', 13);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Presidencial', 13);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Calefaccion', 'Suite Presidencial', 13);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Presidencial', 13);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Presidencial', 13);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Presidencial', 13);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Presidencial', 13);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Estandar', 14);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Estandar', 14);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Estandar', 14);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Estandar', 14);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Doble', 14);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Doble', 14);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Doble', 14);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Doble', 14);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Junior', 14);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Junior', 14);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Junior', 14);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Junior', 14);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Junior', 14);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Presidencial', 14);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Calefaccion', 'Suite Presidencial', 14);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Presidencial', 14);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Presidencial', 14);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Presidencial', 14);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Presidencial', 14);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Estandar', 15);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Estandar', 15);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Estandar', 15);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Estandar', 15);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Doble', 15);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Doble', 15);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Doble', 15);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Doble', 15);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Junior', 15);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Junior', 15);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Junior', 15);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Junior', 15);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Junior', 15);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Presidencial', 15);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Calefaccion', 'Suite Presidencial', 15);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Presidencial', 15);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Presidencial', 15);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Presidencial', 15);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Presidencial', 15);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Estandar', 16);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Estandar', 16);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Estandar', 16);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Estandar', 16);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Doble', 16);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Doble', 16);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Doble', 16);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Doble', 16);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Junior', 16);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Junior', 16);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Junior', 16);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Junior', 16);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Junior', 16);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Presidencial', 16);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Calefaccion', 'Suite Presidencial', 16);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Presidencial', 16);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Presidencial', 16);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Presidencial', 16);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Presidencial', 16);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Estandar', 17);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Estandar', 17);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Estandar', 17);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Estandar', 17);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Doble', 17);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Doble', 17);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Doble', 17);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Doble', 17);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Junior', 17);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Junior', 17);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Junior', 17);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Junior', 17);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Junior', 17);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Presidencial', 17);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Calefaccion', 'Suite Presidencial', 17);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Presidencial', 17);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Presidencial', 17);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Presidencial', 17);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Presidencial', 17);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Estandar', 18);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Estandar', 18);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Estandar', 18);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Estandar', 18);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Habitacion Doble', 18);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Habitacion Doble', 18);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Habitacion Doble', 18);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Habitacion Doble', 18);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Junior', 18);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Junior', 18);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Junior', 18);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Junior', 18);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Junior', 18);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Aire acondicionado', 'Suite Presidencial', 18);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Calefaccion', 'Suite Presidencial', 18);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Television', 'Suite Presidencial', 18);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('WiFi', 'Suite Presidencial', 18);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Bano privado', 'Suite Presidencial', 18);
INSERT INTO Comodidades_por_tipo (nombre_comodidad, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Minibar', 'Suite Presidencial', 18);
COMMIT;

-- ── 10. SERVICIOS_POR_TIPO ──────────────────────────────────────────────────
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Estandar', 1);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Estandar', 1);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Estandar', 1);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Estandar', 1);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Doble', 1);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Doble', 1);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Doble', 1);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Doble', 1);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cuna para bebe', 'Habitacion Doble', 1);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Junior', 1);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Junior', 1);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Junior', 1);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Junior', 1);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Junior', 1);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Junior', 1);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Junior', 1);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Presidencial', 1);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Almuerzo', 'Suite Presidencial', 1);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Presidencial', 1);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Presidencial', 1);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Presidencial', 1);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Presidencial', 1);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Presidencial', 1);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Presidencial', 1);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Plan de deportes', 'Suite Presidencial', 1);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Acceso a sauna', 'Suite Presidencial', 1);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Estandar', 2);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Estandar', 2);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Estandar', 2);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Estandar', 2);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Doble', 2);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Doble', 2);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Doble', 2);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Doble', 2);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cuna para bebe', 'Habitacion Doble', 2);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Junior', 2);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Junior', 2);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Junior', 2);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Junior', 2);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Junior', 2);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Junior', 2);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Junior', 2);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Presidencial', 2);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Almuerzo', 'Suite Presidencial', 2);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Presidencial', 2);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Presidencial', 2);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Presidencial', 2);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Presidencial', 2);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Presidencial', 2);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Presidencial', 2);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Plan de deportes', 'Suite Presidencial', 2);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Acceso a sauna', 'Suite Presidencial', 2);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Estandar', 3);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Estandar', 3);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Estandar', 3);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Estandar', 3);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Doble', 3);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Doble', 3);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Doble', 3);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Doble', 3);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cuna para bebe', 'Habitacion Doble', 3);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Junior', 3);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Junior', 3);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Junior', 3);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Junior', 3);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Junior', 3);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Junior', 3);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Junior', 3);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Presidencial', 3);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Almuerzo', 'Suite Presidencial', 3);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Presidencial', 3);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Presidencial', 3);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Presidencial', 3);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Presidencial', 3);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Presidencial', 3);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Presidencial', 3);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Plan de deportes', 'Suite Presidencial', 3);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Acceso a sauna', 'Suite Presidencial', 3);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Estandar', 4);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Estandar', 4);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Estandar', 4);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Estandar', 4);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Doble', 4);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Doble', 4);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Doble', 4);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Doble', 4);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cuna para bebe', 'Habitacion Doble', 4);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Junior', 4);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Junior', 4);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Junior', 4);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Junior', 4);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Junior', 4);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Junior', 4);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Junior', 4);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Presidencial', 4);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Almuerzo', 'Suite Presidencial', 4);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Presidencial', 4);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Presidencial', 4);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Presidencial', 4);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Presidencial', 4);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Presidencial', 4);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Presidencial', 4);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Plan de deportes', 'Suite Presidencial', 4);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Acceso a sauna', 'Suite Presidencial', 4);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Estandar', 5);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Estandar', 5);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Estandar', 5);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Estandar', 5);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Doble', 5);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Doble', 5);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Doble', 5);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Doble', 5);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cuna para bebe', 'Habitacion Doble', 5);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Junior', 5);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Junior', 5);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Junior', 5);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Junior', 5);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Junior', 5);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Junior', 5);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Junior', 5);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Presidencial', 5);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Almuerzo', 'Suite Presidencial', 5);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Presidencial', 5);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Presidencial', 5);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Presidencial', 5);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Presidencial', 5);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Presidencial', 5);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Presidencial', 5);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Plan de deportes', 'Suite Presidencial', 5);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Acceso a sauna', 'Suite Presidencial', 5);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Estandar', 6);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Estandar', 6);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Estandar', 6);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Estandar', 6);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Doble', 6);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Doble', 6);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Doble', 6);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Doble', 6);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cuna para bebe', 'Habitacion Doble', 6);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Junior', 6);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Junior', 6);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Junior', 6);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Junior', 6);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Junior', 6);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Junior', 6);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Junior', 6);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Presidencial', 6);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Almuerzo', 'Suite Presidencial', 6);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Presidencial', 6);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Presidencial', 6);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Presidencial', 6);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Presidencial', 6);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Presidencial', 6);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Presidencial', 6);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Plan de deportes', 'Suite Presidencial', 6);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Acceso a sauna', 'Suite Presidencial', 6);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Estandar', 7);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Estandar', 7);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Estandar', 7);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Estandar', 7);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Doble', 7);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Doble', 7);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Doble', 7);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Doble', 7);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cuna para bebe', 'Habitacion Doble', 7);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Junior', 7);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Junior', 7);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Junior', 7);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Junior', 7);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Junior', 7);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Junior', 7);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Junior', 7);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Presidencial', 7);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Almuerzo', 'Suite Presidencial', 7);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Presidencial', 7);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Presidencial', 7);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Presidencial', 7);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Presidencial', 7);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Presidencial', 7);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Presidencial', 7);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Plan de deportes', 'Suite Presidencial', 7);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Acceso a sauna', 'Suite Presidencial', 7);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Estandar', 8);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Estandar', 8);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Estandar', 8);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Estandar', 8);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Doble', 8);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Doble', 8);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Doble', 8);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Doble', 8);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cuna para bebe', 'Habitacion Doble', 8);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Junior', 8);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Junior', 8);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Junior', 8);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Junior', 8);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Junior', 8);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Junior', 8);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Junior', 8);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Presidencial', 8);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Almuerzo', 'Suite Presidencial', 8);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Presidencial', 8);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Presidencial', 8);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Presidencial', 8);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Presidencial', 8);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Presidencial', 8);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Presidencial', 8);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Plan de deportes', 'Suite Presidencial', 8);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Acceso a sauna', 'Suite Presidencial', 8);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Estandar', 9);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Estandar', 9);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Estandar', 9);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Estandar', 9);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Doble', 9);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Doble', 9);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Doble', 9);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Doble', 9);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cuna para bebe', 'Habitacion Doble', 9);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Junior', 9);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Junior', 9);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Junior', 9);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Junior', 9);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Junior', 9);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Junior', 9);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Junior', 9);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Presidencial', 9);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Almuerzo', 'Suite Presidencial', 9);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Presidencial', 9);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Presidencial', 9);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Presidencial', 9);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Presidencial', 9);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Presidencial', 9);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Presidencial', 9);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Plan de deportes', 'Suite Presidencial', 9);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Acceso a sauna', 'Suite Presidencial', 9);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Estandar', 10);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Estandar', 10);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Estandar', 10);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Estandar', 10);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Doble', 10);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Doble', 10);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Doble', 10);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Doble', 10);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cuna para bebe', 'Habitacion Doble', 10);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Junior', 10);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Junior', 10);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Junior', 10);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Junior', 10);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Junior', 10);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Junior', 10);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Junior', 10);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Presidencial', 10);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Almuerzo', 'Suite Presidencial', 10);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Presidencial', 10);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Presidencial', 10);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Presidencial', 10);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Presidencial', 10);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Presidencial', 10);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Presidencial', 10);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Plan de deportes', 'Suite Presidencial', 10);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Acceso a sauna', 'Suite Presidencial', 10);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Estandar', 11);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Estandar', 11);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Estandar', 11);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Estandar', 11);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Doble', 11);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Doble', 11);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Doble', 11);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Doble', 11);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cuna para bebe', 'Habitacion Doble', 11);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Junior', 11);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Junior', 11);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Junior', 11);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Junior', 11);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Junior', 11);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Junior', 11);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Junior', 11);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Presidencial', 11);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Almuerzo', 'Suite Presidencial', 11);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Presidencial', 11);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Presidencial', 11);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Presidencial', 11);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Presidencial', 11);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Presidencial', 11);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Presidencial', 11);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Plan de deportes', 'Suite Presidencial', 11);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Acceso a sauna', 'Suite Presidencial', 11);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Estandar', 12);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Estandar', 12);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Estandar', 12);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Estandar', 12);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Doble', 12);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Doble', 12);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Doble', 12);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Doble', 12);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cuna para bebe', 'Habitacion Doble', 12);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Junior', 12);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Junior', 12);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Junior', 12);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Junior', 12);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Junior', 12);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Junior', 12);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Junior', 12);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Presidencial', 12);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Almuerzo', 'Suite Presidencial', 12);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Presidencial', 12);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Presidencial', 12);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Presidencial', 12);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Presidencial', 12);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Presidencial', 12);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Presidencial', 12);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Plan de deportes', 'Suite Presidencial', 12);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Acceso a sauna', 'Suite Presidencial', 12);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Estandar', 13);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Estandar', 13);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Estandar', 13);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Estandar', 13);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Doble', 13);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Doble', 13);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Doble', 13);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Doble', 13);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cuna para bebe', 'Habitacion Doble', 13);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Junior', 13);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Junior', 13);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Junior', 13);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Junior', 13);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Junior', 13);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Junior', 13);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Junior', 13);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Presidencial', 13);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Almuerzo', 'Suite Presidencial', 13);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Presidencial', 13);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Presidencial', 13);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Presidencial', 13);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Presidencial', 13);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Presidencial', 13);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Presidencial', 13);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Plan de deportes', 'Suite Presidencial', 13);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Acceso a sauna', 'Suite Presidencial', 13);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Estandar', 14);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Estandar', 14);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Estandar', 14);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Estandar', 14);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Doble', 14);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Doble', 14);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Doble', 14);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Doble', 14);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cuna para bebe', 'Habitacion Doble', 14);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Junior', 14);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Junior', 14);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Junior', 14);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Junior', 14);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Junior', 14);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Junior', 14);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Junior', 14);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Presidencial', 14);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Almuerzo', 'Suite Presidencial', 14);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Presidencial', 14);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Presidencial', 14);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Presidencial', 14);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Presidencial', 14);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Presidencial', 14);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Presidencial', 14);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Plan de deportes', 'Suite Presidencial', 14);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Acceso a sauna', 'Suite Presidencial', 14);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Estandar', 15);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Estandar', 15);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Estandar', 15);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Estandar', 15);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Doble', 15);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Doble', 15);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Doble', 15);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Doble', 15);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cuna para bebe', 'Habitacion Doble', 15);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Junior', 15);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Junior', 15);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Junior', 15);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Junior', 15);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Junior', 15);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Junior', 15);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Junior', 15);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Presidencial', 15);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Almuerzo', 'Suite Presidencial', 15);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Presidencial', 15);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Presidencial', 15);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Presidencial', 15);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Presidencial', 15);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Presidencial', 15);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Presidencial', 15);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Plan de deportes', 'Suite Presidencial', 15);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Acceso a sauna', 'Suite Presidencial', 15);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Estandar', 16);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Estandar', 16);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Estandar', 16);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Estandar', 16);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Doble', 16);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Doble', 16);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Doble', 16);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Doble', 16);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cuna para bebe', 'Habitacion Doble', 16);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Junior', 16);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Junior', 16);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Junior', 16);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Junior', 16);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Junior', 16);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Junior', 16);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Junior', 16);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Presidencial', 16);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Almuerzo', 'Suite Presidencial', 16);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Presidencial', 16);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Presidencial', 16);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Presidencial', 16);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Presidencial', 16);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Presidencial', 16);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Presidencial', 16);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Plan de deportes', 'Suite Presidencial', 16);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Acceso a sauna', 'Suite Presidencial', 16);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Estandar', 17);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Estandar', 17);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Estandar', 17);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Estandar', 17);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Doble', 17);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Doble', 17);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Doble', 17);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Doble', 17);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cuna para bebe', 'Habitacion Doble', 17);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Junior', 17);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Junior', 17);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Junior', 17);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Junior', 17);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Junior', 17);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Junior', 17);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Junior', 17);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Presidencial', 17);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Almuerzo', 'Suite Presidencial', 17);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Presidencial', 17);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Presidencial', 17);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Presidencial', 17);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Presidencial', 17);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Presidencial', 17);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Presidencial', 17);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Plan de deportes', 'Suite Presidencial', 17);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Acceso a sauna', 'Suite Presidencial', 17);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Estandar', 18);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Estandar', 18);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Estandar', 18);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Estandar', 18);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Habitacion Doble', 18);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Habitacion Doble', 18);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Habitacion Doble', 18);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Habitacion Doble', 18);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cuna para bebe', 'Habitacion Doble', 18);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Junior', 18);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Junior', 18);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Junior', 18);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Junior', 18);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Junior', 18);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Junior', 18);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Junior', 18);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Desayuno', 'Suite Presidencial', 18);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Almuerzo', 'Suite Presidencial', 18);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-in temprano', 'Suite Presidencial', 18);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Check-out tardio', 'Suite Presidencial', 18);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Valet Parking', 'Suite Presidencial', 18);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Cancelacion flexible', 'Suite Presidencial', 18);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Airport Shuttle', 'Suite Presidencial', 18);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Servicio de masajes', 'Suite Presidencial', 18);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Plan de deportes', 'Suite Presidencial', 18);
INSERT INTO Servicios_por_tipo (nombre_servicio, nombre_tipo_habitacion, id_hoteles)
  VALUES ('Acceso a sauna', 'Suite Presidencial', 18);
COMMIT;

-- ── 11. USUARIOS ADMINISTRADORES (2) — Bloque PL/SQL ────────────────────────
DECLARE
    v_id NUMBER;
BEGIN
    -- Admin Principal
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Admin', 'Principal', 3001000001, 'admin@dannalpes.com', 'Admin2024#');
    INSERT INTO Administradores (id_usuario) VALUES (v_id);

    -- Admin Supervisor
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Supervisor', 'Regional', 3001000002, 'supervisor@dannalpes.com', 'Super2024#');
    INSERT INTO Administradores (id_usuario) VALUES (v_id);
    COMMIT;
END;
/

-- ── 12. USUARIOS + CLIENTES (320) — Bloque PL/SQL ──────────────────────────
-- Cada cliente con nombre y apellido reales. Email y doc_identidad se generan
-- como valores unicos por la aplicacion (aunque el modelo no exige UNIQUE).
DECLARE
    v_id NUMBER;
BEGIN
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Santiago', 'Garcia', 3010000001, 'santiago.garcia1@correo.com', 'Clave0001#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000001');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Maria', 'Rodriguez', 3010000002, 'maria.rodriguez2@correo.com', 'Clave0002#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000002');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Carlos', 'Martinez', 3010000003, 'carlos.martinez3@correo.com', 'Clave0003#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000003');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Laura', 'Lopez', 3010000004, 'laura.lopez4@correo.com', 'Clave0004#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000004');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Andres', 'Hernandez', 3010000005, 'andres.hernandez5@correo.com', 'Clave0005#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000005');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Valentina', 'Gonzalez', 3010000006, 'valentina.gonzalez6@correo.com', 'Clave0006#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000006');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Juan', 'Perez', 3010000007, 'juan.perez7@correo.com', 'Clave0007#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000007');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Camila', 'Sanchez', 3010000008, 'camila.sanchez8@correo.com', 'Clave0008#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000008');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Diego', 'Ramirez', 3010000009, 'diego.ramirez9@correo.com', 'Clave0009#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000009');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Isabella', 'Torres', 3010000010, 'isabella.torres10@correo.com', 'Clave0010#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000010');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Sebastian', 'Flores', 3010000011, 'sebastian.flores11@correo.com', 'Clave0011#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000011');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Daniela', 'Rivera', 3010000012, 'daniela.rivera12@correo.com', 'Clave0012#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000012');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Felipe', 'Gomez', 3010000013, 'felipe.gomez13@correo.com', 'Clave0013#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000013');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Natalia', 'Diaz', 3010000014, 'natalia.diaz14@correo.com', 'Clave0014#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000014');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Alejandro', 'Morales', 3010000015, 'alejandro.morales15@correo.com', 'Clave0015#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000015');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Gabriela', 'Jimenez', 3010000016, 'gabriela.jimenez16@correo.com', 'Clave0016#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000016');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Ricardo', 'Vargas', 3010000017, 'ricardo.vargas17@correo.com', 'Clave0017#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000017');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Paula', 'Castillo', 3010000018, 'paula.castillo18@correo.com', 'Clave0018#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000018');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Jorge', 'Romero', 3010000019, 'jorge.romero19@correo.com', 'Clave0019#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000019');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Ana', 'Cruz', 3010000020, 'ana.cruz20@correo.com', 'Clave0020#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000020');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Mateo', 'Rios', 3010000021, 'mateo.rios21@correo.com', 'Clave0021#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000021');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Sofia', 'Moreno', 3010000022, 'sofia.moreno22@correo.com', 'Clave0022#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000022');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'David', 'Ortiz', 3010000023, 'david.ortiz23@correo.com', 'Clave0023#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000023');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Monica', 'Reyes', 3010000024, 'monica.reyes24@correo.com', 'Clave0024#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000024');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Luis', 'Suarez', 3010000025, 'luis.suarez25@correo.com', 'Clave0025#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000025');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Paola', 'Castro', 3010000026, 'paola.castro26@correo.com', 'Clave0026#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000026');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Miguel', 'Ramos', 3010000027, 'miguel.ramos27@correo.com', 'Clave0027#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000027');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Juliana', 'Ortega', 3010000028, 'juliana.ortega28@correo.com', 'Clave0028#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000028');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Nicolas', 'Ruiz', 3010000029, 'nicolas.ruiz29@correo.com', 'Clave0029#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000029');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Marcela', 'Medina', 3010000030, 'marcela.medina30@correo.com', 'Clave0030#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000030');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Sergio', 'Aguilar', 3010000031, 'sergio.aguilar31@correo.com', 'Clave0031#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000031');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Catalina', 'Mendez', 3010000032, 'catalina.mendez32@correo.com', 'Clave0032#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000032');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Fernando', 'Herrera', 3010000033, 'fernando.herrera33@correo.com', 'Clave0033#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000033');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Andrea', 'Gutierrez', 3010000034, 'andrea.gutierrez34@correo.com', 'Clave0034#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000034');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Rafael', 'Guerrero', 3010000035, 'rafael.guerrero35@correo.com', 'Clave0035#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000035');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Adriana', 'Soto', 3010000036, 'adriana.soto36@correo.com', 'Clave0036#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000036');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Manuel', 'Rojas', 3010000037, 'manuel.rojas37@correo.com', 'Clave0037#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000037');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Patricia', 'Salazar', 3010000038, 'patricia.salazar38@correo.com', 'Clave0038#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000038');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Oscar', 'Molina', 3010000039, 'oscar.molina39@correo.com', 'Clave0039#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000039');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Diana', 'Navarro', 3010000040, 'diana.navarro40@correo.com', 'Clave0040#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000040');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Cristian', 'Chavez', 3010000041, 'cristian.chavez41@correo.com', 'Clave0041#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000041');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Mariana', 'Serrano', 3010000042, 'mariana.serrano42@correo.com', 'Clave0042#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000042');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Jairo', 'Blanco', 3010000043, 'jairo.blanco43@correo.com', 'Clave0043#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000043');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Sandra', 'Vega', 3010000044, 'sandra.vega44@correo.com', 'Clave0044#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000044');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Hector', 'Nunez', 3010000045, 'hector.nunez45@correo.com', 'Clave0045#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000045');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Claudia', 'Dominguez', 3010000046, 'claudia.dominguez46@correo.com', 'Clave0046#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000046');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Rodrigo', 'Ibarra', 3010000047, 'rodrigo.ibarra47@correo.com', 'Clave0047#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000047');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Elena', 'Pardo', 3010000048, 'elena.pardo48@correo.com', 'Clave0048#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000048');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Alberto', 'Acosta', 3010000049, 'alberto.acosta49@correo.com', 'Clave0049#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000049');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Lucia', 'Fuentes', 3010000050, 'lucia.fuentes50@correo.com', 'Clave0050#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000050');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Roberto', 'Cardona', 3010000051, 'roberto.cardona51@correo.com', 'Clave0051#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000051');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Pilar', 'Ospina', 3010000052, 'pilar.ospina52@correo.com', 'Clave0052#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000052');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Eduardo', 'Castano', 3010000053, 'eduardo.castano53@correo.com', 'Clave0053#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000053');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Teresa', 'Mejia', 3010000054, 'teresa.mejia54@correo.com', 'Clave0054#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000054');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Gonzalo', 'Londono', 3010000055, 'gonzalo.londono55@correo.com', 'Clave0055#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000055');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Carmen', 'Correa', 3010000056, 'carmen.correa56@correo.com', 'Clave0056#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000056');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Victor', 'Arango', 3010000057, 'victor.arango57@correo.com', 'Clave0057#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000057');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Esperanza', 'Jaramillo', 3010000058, 'esperanza.jaramillo58@correo.com', 'Clave0058#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000058');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Gustavo', 'Velez', 3010000059, 'gustavo.velez59@correo.com', 'Clave0059#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000059');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Silvia', 'Zapata', 3010000060, 'silvia.zapata60@correo.com', 'Clave0060#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000060');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Santiago', 'Rodriguez', 3010000061, 'santiago.rodriguez61@correo.com', 'Clave0061#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000061');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Maria', 'Martinez', 3010000062, 'maria.martinez62@correo.com', 'Clave0062#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000062');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Carlos', 'Lopez', 3010000063, 'carlos.lopez63@correo.com', 'Clave0063#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000063');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Laura', 'Hernandez', 3010000064, 'laura.hernandez64@correo.com', 'Clave0064#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000064');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Andres', 'Gonzalez', 3010000065, 'andres.gonzalez65@correo.com', 'Clave0065#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000065');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Valentina', 'Perez', 3010000066, 'valentina.perez66@correo.com', 'Clave0066#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000066');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Juan', 'Sanchez', 3010000067, 'juan.sanchez67@correo.com', 'Clave0067#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000067');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Camila', 'Ramirez', 3010000068, 'camila.ramirez68@correo.com', 'Clave0068#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000068');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Diego', 'Torres', 3010000069, 'diego.torres69@correo.com', 'Clave0069#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000069');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Isabella', 'Flores', 3010000070, 'isabella.flores70@correo.com', 'Clave0070#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000070');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Sebastian', 'Rivera', 3010000071, 'sebastian.rivera71@correo.com', 'Clave0071#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000071');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Daniela', 'Gomez', 3010000072, 'daniela.gomez72@correo.com', 'Clave0072#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000072');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Felipe', 'Diaz', 3010000073, 'felipe.diaz73@correo.com', 'Clave0073#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000073');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Natalia', 'Morales', 3010000074, 'natalia.morales74@correo.com', 'Clave0074#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000074');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Alejandro', 'Jimenez', 3010000075, 'alejandro.jimenez75@correo.com', 'Clave0075#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000075');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Gabriela', 'Vargas', 3010000076, 'gabriela.vargas76@correo.com', 'Clave0076#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000076');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Ricardo', 'Castillo', 3010000077, 'ricardo.castillo77@correo.com', 'Clave0077#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000077');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Paula', 'Romero', 3010000078, 'paula.romero78@correo.com', 'Clave0078#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000078');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Jorge', 'Cruz', 3010000079, 'jorge.cruz79@correo.com', 'Clave0079#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000079');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Ana', 'Rios', 3010000080, 'ana.rios80@correo.com', 'Clave0080#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000080');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Mateo', 'Moreno', 3010000081, 'mateo.moreno81@correo.com', 'Clave0081#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000081');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Sofia', 'Ortiz', 3010000082, 'sofia.ortiz82@correo.com', 'Clave0082#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000082');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'David', 'Reyes', 3010000083, 'david.reyes83@correo.com', 'Clave0083#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000083');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Monica', 'Suarez', 3010000084, 'monica.suarez84@correo.com', 'Clave0084#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000084');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Luis', 'Castro', 3010000085, 'luis.castro85@correo.com', 'Clave0085#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000085');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Paola', 'Ramos', 3010000086, 'paola.ramos86@correo.com', 'Clave0086#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000086');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Miguel', 'Ortega', 3010000087, 'miguel.ortega87@correo.com', 'Clave0087#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000087');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Juliana', 'Ruiz', 3010000088, 'juliana.ruiz88@correo.com', 'Clave0088#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000088');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Nicolas', 'Medina', 3010000089, 'nicolas.medina89@correo.com', 'Clave0089#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000089');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Marcela', 'Aguilar', 3010000090, 'marcela.aguilar90@correo.com', 'Clave0090#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000090');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Sergio', 'Mendez', 3010000091, 'sergio.mendez91@correo.com', 'Clave0091#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000091');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Catalina', 'Herrera', 3010000092, 'catalina.herrera92@correo.com', 'Clave0092#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000092');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Fernando', 'Gutierrez', 3010000093, 'fernando.gutierrez93@correo.com', 'Clave0093#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000093');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Andrea', 'Guerrero', 3010000094, 'andrea.guerrero94@correo.com', 'Clave0094#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000094');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Rafael', 'Soto', 3010000095, 'rafael.soto95@correo.com', 'Clave0095#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000095');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Adriana', 'Rojas', 3010000096, 'adriana.rojas96@correo.com', 'Clave0096#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000096');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Manuel', 'Salazar', 3010000097, 'manuel.salazar97@correo.com', 'Clave0097#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000097');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Patricia', 'Molina', 3010000098, 'patricia.molina98@correo.com', 'Clave0098#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000098');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Oscar', 'Navarro', 3010000099, 'oscar.navarro99@correo.com', 'Clave0099#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000099');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Diana', 'Chavez', 3010000100, 'diana.chavez100@correo.com', 'Clave0100#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000100');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Cristian', 'Serrano', 3010000101, 'cristian.serrano101@correo.com', 'Clave0101#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000101');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Mariana', 'Blanco', 3010000102, 'mariana.blanco102@correo.com', 'Clave0102#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000102');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Jairo', 'Vega', 3010000103, 'jairo.vega103@correo.com', 'Clave0103#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000103');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Sandra', 'Nunez', 3010000104, 'sandra.nunez104@correo.com', 'Clave0104#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000104');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Hector', 'Dominguez', 3010000105, 'hector.dominguez105@correo.com', 'Clave0105#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000105');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Claudia', 'Ibarra', 3010000106, 'claudia.ibarra106@correo.com', 'Clave0106#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000106');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Rodrigo', 'Pardo', 3010000107, 'rodrigo.pardo107@correo.com', 'Clave0107#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000107');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Elena', 'Acosta', 3010000108, 'elena.acosta108@correo.com', 'Clave0108#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000108');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Alberto', 'Fuentes', 3010000109, 'alberto.fuentes109@correo.com', 'Clave0109#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000109');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Lucia', 'Cardona', 3010000110, 'lucia.cardona110@correo.com', 'Clave0110#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000110');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Roberto', 'Ospina', 3010000111, 'roberto.ospina111@correo.com', 'Clave0111#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000111');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Pilar', 'Castano', 3010000112, 'pilar.castano112@correo.com', 'Clave0112#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000112');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Eduardo', 'Mejia', 3010000113, 'eduardo.mejia113@correo.com', 'Clave0113#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000113');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Teresa', 'Londono', 3010000114, 'teresa.londono114@correo.com', 'Clave0114#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000114');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Gonzalo', 'Correa', 3010000115, 'gonzalo.correa115@correo.com', 'Clave0115#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000115');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Carmen', 'Arango', 3010000116, 'carmen.arango116@correo.com', 'Clave0116#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000116');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Victor', 'Jaramillo', 3010000117, 'victor.jaramillo117@correo.com', 'Clave0117#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000117');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Esperanza', 'Velez', 3010000118, 'esperanza.velez118@correo.com', 'Clave0118#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000118');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Gustavo', 'Zapata', 3010000119, 'gustavo.zapata119@correo.com', 'Clave0119#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000119');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Silvia', 'Garcia', 3010000120, 'silvia.garcia120@correo.com', 'Clave0120#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000120');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Santiago', 'Martinez', 3010000121, 'santiago.martinez121@correo.com', 'Clave0121#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000121');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Maria', 'Lopez', 3010000122, 'maria.lopez122@correo.com', 'Clave0122#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000122');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Carlos', 'Hernandez', 3010000123, 'carlos.hernandez123@correo.com', 'Clave0123#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000123');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Laura', 'Gonzalez', 3010000124, 'laura.gonzalez124@correo.com', 'Clave0124#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000124');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Andres', 'Perez', 3010000125, 'andres.perez125@correo.com', 'Clave0125#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000125');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Valentina', 'Sanchez', 3010000126, 'valentina.sanchez126@correo.com', 'Clave0126#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000126');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Juan', 'Ramirez', 3010000127, 'juan.ramirez127@correo.com', 'Clave0127#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000127');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Camila', 'Torres', 3010000128, 'camila.torres128@correo.com', 'Clave0128#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000128');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Diego', 'Flores', 3010000129, 'diego.flores129@correo.com', 'Clave0129#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000129');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Isabella', 'Rivera', 3010000130, 'isabella.rivera130@correo.com', 'Clave0130#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000130');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Sebastian', 'Gomez', 3010000131, 'sebastian.gomez131@correo.com', 'Clave0131#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000131');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Daniela', 'Diaz', 3010000132, 'daniela.diaz132@correo.com', 'Clave0132#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000132');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Felipe', 'Morales', 3010000133, 'felipe.morales133@correo.com', 'Clave0133#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000133');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Natalia', 'Jimenez', 3010000134, 'natalia.jimenez134@correo.com', 'Clave0134#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000134');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Alejandro', 'Vargas', 3010000135, 'alejandro.vargas135@correo.com', 'Clave0135#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000135');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Gabriela', 'Castillo', 3010000136, 'gabriela.castillo136@correo.com', 'Clave0136#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000136');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Ricardo', 'Romero', 3010000137, 'ricardo.romero137@correo.com', 'Clave0137#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000137');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Paula', 'Cruz', 3010000138, 'paula.cruz138@correo.com', 'Clave0138#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000138');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Jorge', 'Rios', 3010000139, 'jorge.rios139@correo.com', 'Clave0139#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000139');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Ana', 'Moreno', 3010000140, 'ana.moreno140@correo.com', 'Clave0140#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000140');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Mateo', 'Ortiz', 3010000141, 'mateo.ortiz141@correo.com', 'Clave0141#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000141');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Sofia', 'Reyes', 3010000142, 'sofia.reyes142@correo.com', 'Clave0142#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000142');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'David', 'Suarez', 3010000143, 'david.suarez143@correo.com', 'Clave0143#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000143');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Monica', 'Castro', 3010000144, 'monica.castro144@correo.com', 'Clave0144#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000144');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Luis', 'Ramos', 3010000145, 'luis.ramos145@correo.com', 'Clave0145#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000145');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Paola', 'Ortega', 3010000146, 'paola.ortega146@correo.com', 'Clave0146#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000146');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Miguel', 'Ruiz', 3010000147, 'miguel.ruiz147@correo.com', 'Clave0147#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000147');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Juliana', 'Medina', 3010000148, 'juliana.medina148@correo.com', 'Clave0148#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000148');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Nicolas', 'Aguilar', 3010000149, 'nicolas.aguilar149@correo.com', 'Clave0149#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000149');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Marcela', 'Mendez', 3010000150, 'marcela.mendez150@correo.com', 'Clave0150#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000150');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Sergio', 'Herrera', 3010000151, 'sergio.herrera151@correo.com', 'Clave0151#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000151');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Catalina', 'Gutierrez', 3010000152, 'catalina.gutierrez152@correo.com', 'Clave0152#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000152');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Fernando', 'Guerrero', 3010000153, 'fernando.guerrero153@correo.com', 'Clave0153#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000153');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Andrea', 'Soto', 3010000154, 'andrea.soto154@correo.com', 'Clave0154#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000154');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Rafael', 'Rojas', 3010000155, 'rafael.rojas155@correo.com', 'Clave0155#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000155');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Adriana', 'Salazar', 3010000156, 'adriana.salazar156@correo.com', 'Clave0156#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000156');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Manuel', 'Molina', 3010000157, 'manuel.molina157@correo.com', 'Clave0157#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000157');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Patricia', 'Navarro', 3010000158, 'patricia.navarro158@correo.com', 'Clave0158#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000158');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Oscar', 'Chavez', 3010000159, 'oscar.chavez159@correo.com', 'Clave0159#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000159');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Diana', 'Serrano', 3010000160, 'diana.serrano160@correo.com', 'Clave0160#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000160');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Cristian', 'Blanco', 3010000161, 'cristian.blanco161@correo.com', 'Clave0161#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000161');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Mariana', 'Vega', 3010000162, 'mariana.vega162@correo.com', 'Clave0162#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000162');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Jairo', 'Nunez', 3010000163, 'jairo.nunez163@correo.com', 'Clave0163#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000163');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Sandra', 'Dominguez', 3010000164, 'sandra.dominguez164@correo.com', 'Clave0164#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000164');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Hector', 'Ibarra', 3010000165, 'hector.ibarra165@correo.com', 'Clave0165#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000165');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Claudia', 'Pardo', 3010000166, 'claudia.pardo166@correo.com', 'Clave0166#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000166');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Rodrigo', 'Acosta', 3010000167, 'rodrigo.acosta167@correo.com', 'Clave0167#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000167');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Elena', 'Fuentes', 3010000168, 'elena.fuentes168@correo.com', 'Clave0168#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000168');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Alberto', 'Cardona', 3010000169, 'alberto.cardona169@correo.com', 'Clave0169#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000169');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Lucia', 'Ospina', 3010000170, 'lucia.ospina170@correo.com', 'Clave0170#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000170');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Roberto', 'Castano', 3010000171, 'roberto.castano171@correo.com', 'Clave0171#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000171');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Pilar', 'Mejia', 3010000172, 'pilar.mejia172@correo.com', 'Clave0172#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000172');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Eduardo', 'Londono', 3010000173, 'eduardo.londono173@correo.com', 'Clave0173#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000173');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Teresa', 'Correa', 3010000174, 'teresa.correa174@correo.com', 'Clave0174#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000174');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Gonzalo', 'Arango', 3010000175, 'gonzalo.arango175@correo.com', 'Clave0175#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000175');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Carmen', 'Jaramillo', 3010000176, 'carmen.jaramillo176@correo.com', 'Clave0176#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000176');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Victor', 'Velez', 3010000177, 'victor.velez177@correo.com', 'Clave0177#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000177');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Esperanza', 'Zapata', 3010000178, 'esperanza.zapata178@correo.com', 'Clave0178#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000178');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Gustavo', 'Garcia', 3010000179, 'gustavo.garcia179@correo.com', 'Clave0179#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000179');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Silvia', 'Rodriguez', 3010000180, 'silvia.rodriguez180@correo.com', 'Clave0180#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000180');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Santiago', 'Lopez', 3010000181, 'santiago.lopez181@correo.com', 'Clave0181#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000181');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Maria', 'Hernandez', 3010000182, 'maria.hernandez182@correo.com', 'Clave0182#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000182');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Carlos', 'Gonzalez', 3010000183, 'carlos.gonzalez183@correo.com', 'Clave0183#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000183');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Laura', 'Perez', 3010000184, 'laura.perez184@correo.com', 'Clave0184#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000184');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Andres', 'Sanchez', 3010000185, 'andres.sanchez185@correo.com', 'Clave0185#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000185');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Valentina', 'Ramirez', 3010000186, 'valentina.ramirez186@correo.com', 'Clave0186#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000186');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Juan', 'Torres', 3010000187, 'juan.torres187@correo.com', 'Clave0187#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000187');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Camila', 'Flores', 3010000188, 'camila.flores188@correo.com', 'Clave0188#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000188');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Diego', 'Rivera', 3010000189, 'diego.rivera189@correo.com', 'Clave0189#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000189');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Isabella', 'Gomez', 3010000190, 'isabella.gomez190@correo.com', 'Clave0190#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000190');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Sebastian', 'Diaz', 3010000191, 'sebastian.diaz191@correo.com', 'Clave0191#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000191');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Daniela', 'Morales', 3010000192, 'daniela.morales192@correo.com', 'Clave0192#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000192');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Felipe', 'Jimenez', 3010000193, 'felipe.jimenez193@correo.com', 'Clave0193#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000193');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Natalia', 'Vargas', 3010000194, 'natalia.vargas194@correo.com', 'Clave0194#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000194');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Alejandro', 'Castillo', 3010000195, 'alejandro.castillo195@correo.com', 'Clave0195#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000195');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Gabriela', 'Romero', 3010000196, 'gabriela.romero196@correo.com', 'Clave0196#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000196');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Ricardo', 'Cruz', 3010000197, 'ricardo.cruz197@correo.com', 'Clave0197#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000197');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Paula', 'Rios', 3010000198, 'paula.rios198@correo.com', 'Clave0198#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000198');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Jorge', 'Moreno', 3010000199, 'jorge.moreno199@correo.com', 'Clave0199#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000199');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Ana', 'Ortiz', 3010000200, 'ana.ortiz200@correo.com', 'Clave0200#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000200');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Mateo', 'Reyes', 3010000201, 'mateo.reyes201@correo.com', 'Clave0201#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000201');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Sofia', 'Suarez', 3010000202, 'sofia.suarez202@correo.com', 'Clave0202#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000202');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'David', 'Castro', 3010000203, 'david.castro203@correo.com', 'Clave0203#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000203');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Monica', 'Ramos', 3010000204, 'monica.ramos204@correo.com', 'Clave0204#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000204');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Luis', 'Ortega', 3010000205, 'luis.ortega205@correo.com', 'Clave0205#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000205');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Paola', 'Ruiz', 3010000206, 'paola.ruiz206@correo.com', 'Clave0206#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000206');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Miguel', 'Medina', 3010000207, 'miguel.medina207@correo.com', 'Clave0207#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000207');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Juliana', 'Aguilar', 3010000208, 'juliana.aguilar208@correo.com', 'Clave0208#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000208');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Nicolas', 'Mendez', 3010000209, 'nicolas.mendez209@correo.com', 'Clave0209#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000209');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Marcela', 'Herrera', 3010000210, 'marcela.herrera210@correo.com', 'Clave0210#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000210');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Sergio', 'Gutierrez', 3010000211, 'sergio.gutierrez211@correo.com', 'Clave0211#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000211');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Catalina', 'Guerrero', 3010000212, 'catalina.guerrero212@correo.com', 'Clave0212#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000212');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Fernando', 'Soto', 3010000213, 'fernando.soto213@correo.com', 'Clave0213#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000213');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Andrea', 'Rojas', 3010000214, 'andrea.rojas214@correo.com', 'Clave0214#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000214');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Rafael', 'Salazar', 3010000215, 'rafael.salazar215@correo.com', 'Clave0215#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000215');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Adriana', 'Molina', 3010000216, 'adriana.molina216@correo.com', 'Clave0216#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000216');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Manuel', 'Navarro', 3010000217, 'manuel.navarro217@correo.com', 'Clave0217#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000217');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Patricia', 'Chavez', 3010000218, 'patricia.chavez218@correo.com', 'Clave0218#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000218');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Oscar', 'Serrano', 3010000219, 'oscar.serrano219@correo.com', 'Clave0219#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000219');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Diana', 'Blanco', 3010000220, 'diana.blanco220@correo.com', 'Clave0220#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000220');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Cristian', 'Vega', 3010000221, 'cristian.vega221@correo.com', 'Clave0221#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000221');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Mariana', 'Nunez', 3010000222, 'mariana.nunez222@correo.com', 'Clave0222#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000222');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Jairo', 'Dominguez', 3010000223, 'jairo.dominguez223@correo.com', 'Clave0223#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000223');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Sandra', 'Ibarra', 3010000224, 'sandra.ibarra224@correo.com', 'Clave0224#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000224');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Hector', 'Pardo', 3010000225, 'hector.pardo225@correo.com', 'Clave0225#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000225');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Claudia', 'Acosta', 3010000226, 'claudia.acosta226@correo.com', 'Clave0226#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000226');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Rodrigo', 'Fuentes', 3010000227, 'rodrigo.fuentes227@correo.com', 'Clave0227#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000227');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Elena', 'Cardona', 3010000228, 'elena.cardona228@correo.com', 'Clave0228#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000228');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Alberto', 'Ospina', 3010000229, 'alberto.ospina229@correo.com', 'Clave0229#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000229');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Lucia', 'Castano', 3010000230, 'lucia.castano230@correo.com', 'Clave0230#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000230');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Roberto', 'Mejia', 3010000231, 'roberto.mejia231@correo.com', 'Clave0231#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000231');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Pilar', 'Londono', 3010000232, 'pilar.londono232@correo.com', 'Clave0232#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000232');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Eduardo', 'Correa', 3010000233, 'eduardo.correa233@correo.com', 'Clave0233#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000233');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Teresa', 'Arango', 3010000234, 'teresa.arango234@correo.com', 'Clave0234#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000234');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Gonzalo', 'Jaramillo', 3010000235, 'gonzalo.jaramillo235@correo.com', 'Clave0235#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000235');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Carmen', 'Velez', 3010000236, 'carmen.velez236@correo.com', 'Clave0236#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000236');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Victor', 'Zapata', 3010000237, 'victor.zapata237@correo.com', 'Clave0237#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000237');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Esperanza', 'Garcia', 3010000238, 'esperanza.garcia238@correo.com', 'Clave0238#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000238');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Gustavo', 'Rodriguez', 3010000239, 'gustavo.rodriguez239@correo.com', 'Clave0239#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000239');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Silvia', 'Martinez', 3010000240, 'silvia.martinez240@correo.com', 'Clave0240#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000240');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Santiago', 'Hernandez', 3010000241, 'santiago.hernandez241@correo.com', 'Clave0241#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000241');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Maria', 'Gonzalez', 3010000242, 'maria.gonzalez242@correo.com', 'Clave0242#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000242');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Carlos', 'Perez', 3010000243, 'carlos.perez243@correo.com', 'Clave0243#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000243');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Laura', 'Sanchez', 3010000244, 'laura.sanchez244@correo.com', 'Clave0244#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000244');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Andres', 'Ramirez', 3010000245, 'andres.ramirez245@correo.com', 'Clave0245#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000245');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Valentina', 'Torres', 3010000246, 'valentina.torres246@correo.com', 'Clave0246#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000246');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Juan', 'Flores', 3010000247, 'juan.flores247@correo.com', 'Clave0247#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000247');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Camila', 'Rivera', 3010000248, 'camila.rivera248@correo.com', 'Clave0248#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000248');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Diego', 'Gomez', 3010000249, 'diego.gomez249@correo.com', 'Clave0249#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000249');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Isabella', 'Diaz', 3010000250, 'isabella.diaz250@correo.com', 'Clave0250#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000250');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Sebastian', 'Morales', 3010000251, 'sebastian.morales251@correo.com', 'Clave0251#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000251');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Daniela', 'Jimenez', 3010000252, 'daniela.jimenez252@correo.com', 'Clave0252#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000252');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Felipe', 'Vargas', 3010000253, 'felipe.vargas253@correo.com', 'Clave0253#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000253');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Natalia', 'Castillo', 3010000254, 'natalia.castillo254@correo.com', 'Clave0254#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000254');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Alejandro', 'Romero', 3010000255, 'alejandro.romero255@correo.com', 'Clave0255#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000255');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Gabriela', 'Cruz', 3010000256, 'gabriela.cruz256@correo.com', 'Clave0256#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000256');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Ricardo', 'Rios', 3010000257, 'ricardo.rios257@correo.com', 'Clave0257#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000257');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Paula', 'Moreno', 3010000258, 'paula.moreno258@correo.com', 'Clave0258#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000258');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Jorge', 'Ortiz', 3010000259, 'jorge.ortiz259@correo.com', 'Clave0259#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000259');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Ana', 'Reyes', 3010000260, 'ana.reyes260@correo.com', 'Clave0260#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000260');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Mateo', 'Suarez', 3010000261, 'mateo.suarez261@correo.com', 'Clave0261#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000261');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Sofia', 'Castro', 3010000262, 'sofia.castro262@correo.com', 'Clave0262#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000262');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'David', 'Ramos', 3010000263, 'david.ramos263@correo.com', 'Clave0263#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000263');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Monica', 'Ortega', 3010000264, 'monica.ortega264@correo.com', 'Clave0264#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000264');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Luis', 'Ruiz', 3010000265, 'luis.ruiz265@correo.com', 'Clave0265#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000265');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Paola', 'Medina', 3010000266, 'paola.medina266@correo.com', 'Clave0266#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000266');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Miguel', 'Aguilar', 3010000267, 'miguel.aguilar267@correo.com', 'Clave0267#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000267');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Juliana', 'Mendez', 3010000268, 'juliana.mendez268@correo.com', 'Clave0268#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000268');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Nicolas', 'Herrera', 3010000269, 'nicolas.herrera269@correo.com', 'Clave0269#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000269');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Marcela', 'Gutierrez', 3010000270, 'marcela.gutierrez270@correo.com', 'Clave0270#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000270');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Sergio', 'Guerrero', 3010000271, 'sergio.guerrero271@correo.com', 'Clave0271#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000271');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Catalina', 'Soto', 3010000272, 'catalina.soto272@correo.com', 'Clave0272#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000272');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Fernando', 'Rojas', 3010000273, 'fernando.rojas273@correo.com', 'Clave0273#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000273');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Andrea', 'Salazar', 3010000274, 'andrea.salazar274@correo.com', 'Clave0274#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000274');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Rafael', 'Molina', 3010000275, 'rafael.molina275@correo.com', 'Clave0275#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000275');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Adriana', 'Navarro', 3010000276, 'adriana.navarro276@correo.com', 'Clave0276#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000276');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Manuel', 'Chavez', 3010000277, 'manuel.chavez277@correo.com', 'Clave0277#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000277');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Patricia', 'Serrano', 3010000278, 'patricia.serrano278@correo.com', 'Clave0278#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000278');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Oscar', 'Blanco', 3010000279, 'oscar.blanco279@correo.com', 'Clave0279#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000279');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Diana', 'Vega', 3010000280, 'diana.vega280@correo.com', 'Clave0280#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000280');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Cristian', 'Nunez', 3010000281, 'cristian.nunez281@correo.com', 'Clave0281#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000281');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Mariana', 'Dominguez', 3010000282, 'mariana.dominguez282@correo.com', 'Clave0282#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000282');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Jairo', 'Ibarra', 3010000283, 'jairo.ibarra283@correo.com', 'Clave0283#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000283');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Sandra', 'Pardo', 3010000284, 'sandra.pardo284@correo.com', 'Clave0284#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000284');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Hector', 'Acosta', 3010000285, 'hector.acosta285@correo.com', 'Clave0285#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000285');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Claudia', 'Fuentes', 3010000286, 'claudia.fuentes286@correo.com', 'Clave0286#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000286');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Rodrigo', 'Cardona', 3010000287, 'rodrigo.cardona287@correo.com', 'Clave0287#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000287');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Elena', 'Ospina', 3010000288, 'elena.ospina288@correo.com', 'Clave0288#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000288');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Alberto', 'Castano', 3010000289, 'alberto.castano289@correo.com', 'Clave0289#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000289');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Lucia', 'Mejia', 3010000290, 'lucia.mejia290@correo.com', 'Clave0290#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000290');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Roberto', 'Londono', 3010000291, 'roberto.londono291@correo.com', 'Clave0291#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000291');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Pilar', 'Correa', 3010000292, 'pilar.correa292@correo.com', 'Clave0292#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000292');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Eduardo', 'Arango', 3010000293, 'eduardo.arango293@correo.com', 'Clave0293#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000293');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Teresa', 'Jaramillo', 3010000294, 'teresa.jaramillo294@correo.com', 'Clave0294#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000294');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Gonzalo', 'Velez', 3010000295, 'gonzalo.velez295@correo.com', 'Clave0295#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000295');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Carmen', 'Zapata', 3010000296, 'carmen.zapata296@correo.com', 'Clave0296#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000296');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Victor', 'Garcia', 3010000297, 'victor.garcia297@correo.com', 'Clave0297#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000297');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Esperanza', 'Rodriguez', 3010000298, 'esperanza.rodriguez298@correo.com', 'Clave0298#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000298');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Gustavo', 'Martinez', 3010000299, 'gustavo.martinez299@correo.com', 'Clave0299#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000299');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Silvia', 'Lopez', 3010000300, 'silvia.lopez300@correo.com', 'Clave0300#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000300');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Santiago', 'Gonzalez', 3010000301, 'santiago.gonzalez301@correo.com', 'Clave0301#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000301');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Maria', 'Perez', 3010000302, 'maria.perez302@correo.com', 'Clave0302#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000302');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Carlos', 'Sanchez', 3010000303, 'carlos.sanchez303@correo.com', 'Clave0303#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000303');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Laura', 'Ramirez', 3010000304, 'laura.ramirez304@correo.com', 'Clave0304#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000304');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Andres', 'Torres', 3010000305, 'andres.torres305@correo.com', 'Clave0305#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000305');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Valentina', 'Flores', 3010000306, 'valentina.flores306@correo.com', 'Clave0306#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000306');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Juan', 'Rivera', 3010000307, 'juan.rivera307@correo.com', 'Clave0307#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000307');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Camila', 'Gomez', 3010000308, 'camila.gomez308@correo.com', 'Clave0308#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000308');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Diego', 'Diaz', 3010000309, 'diego.diaz309@correo.com', 'Clave0309#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000309');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Isabella', 'Morales', 3010000310, 'isabella.morales310@correo.com', 'Clave0310#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000310');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Sebastian', 'Jimenez', 3010000311, 'sebastian.jimenez311@correo.com', 'Clave0311#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000311');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Daniela', 'Vargas', 3010000312, 'daniela.vargas312@correo.com', 'Clave0312#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000312');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Felipe', 'Castillo', 3010000313, 'felipe.castillo313@correo.com', 'Clave0313#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000313');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Natalia', 'Romero', 3010000314, 'natalia.romero314@correo.com', 'Clave0314#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000314');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Alejandro', 'Cruz', 3010000315, 'alejandro.cruz315@correo.com', 'Clave0315#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000315');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Gabriela', 'Rios', 3010000316, 'gabriela.rios316@correo.com', 'Clave0316#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000316');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Ricardo', 'Moreno', 3010000317, 'ricardo.moreno317@correo.com', 'Clave0317#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000317');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Paula', 'Ortiz', 3010000318, 'paula.ortiz318@correo.com', 'Clave0318#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000318');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Jorge', 'Reyes', 3010000319, 'jorge.reyes319@correo.com', 'Clave0319#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000319');
    v_id := seq_usuarios.NEXTVAL;
    INSERT INTO Usuarios (id_usuario, nombre, apellido, telefono, email, contrasena)
      VALUES (v_id, 'Ana', 'Suarez', 3010000320, 'ana.suarez320@correo.com', 'Clave0320#');
    INSERT INTO Clientes (id_usuario, doc_identidad) VALUES (v_id, '0001000320');
    COMMIT;
END;
/

-- ── 13. RESERVAS (20 × 18 hoteles = 360) — Bloque PL/SQL ────────────────────
-- Clientes con id_usuario 3..322 (los 320 clientes insertados arriba).
-- Alta temporada: junio-agosto (meses 6, 7, 8). num_ninos sin enie.
DECLARE
    v_tipo  VARCHAR2(100);
    v_ent   DATE;
    v_sal   DATE;
    v_noch  NUMBER;
    v_adu   NUMBER;
    v_nin   NUMBER;
    v_prec  NUMBER;
    v_est   VARCHAR2(20);
    v_ca    NUMBER;
    v_cb    NUMBER;
    TYPE t_rt IS TABLE OF VARCHAR2(100) INDEX BY PLS_INTEGER;
    rts t_rt;
BEGIN
    rts(1):='Habitacion Estandar'; rts(2):='Habitacion Doble';
    rts(3):='Suite Junior';        rts(4):='Suite Presidencial';

    FOR h IN 1..18 LOOP
        FOR r IN 1..20 LOOP
            v_tipo := rts(MOD(r-1,4)+1);
            v_noch := MOD(h+r,6) + 2;
            v_ent  := DATE '2025-01-01' + MOD((h-1)*40+(r-1)*17, 450);
            v_sal  := v_ent + v_noch;
            v_adu  := MOD(r,3) + 1;
            v_nin  := MOD(r+h,3);
            IF    v_ent < SYSDATE - 30 THEN v_est := 'completada';
            ELSIF v_ent < SYSDATE      THEN v_est := CASE WHEN MOD(r,7)=0 THEN 'cancelada' ELSE 'activa' END;
            ELSE                            v_est := CASE WHEN MOD(r,8)=0 THEN 'cancelada' ELSE 'activa' END;
            END IF;
            SELECT costo_base_alta, costo_base_baja INTO v_ca, v_cb
            FROM   Tipos_habitacion WHERE nombre=v_tipo AND id_hoteles=h;
            v_prec := ROUND(CASE WHEN EXTRACT(MONTH FROM v_ent) IN (6,7,8)
                            THEN v_ca ELSE v_cb END * v_noch, 2);
            INSERT INTO Reservas
              (id, fecha_entrada, fecha_salida, num_adultos, num_ninos,
               precio_total, estado, nombre_tipo_habitacion, id_hoteles, id_usuario_cliente)
            VALUES (seq_reservas.NEXTVAL, v_ent, v_sal, v_adu, v_nin,
                    v_prec, v_est, v_tipo, h, 3 + MOD((h-1)*20+(r-1), 320));
        END LOOP;
    END LOOP;
    COMMIT;
END;
/