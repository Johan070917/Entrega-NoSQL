-- ── SECUENCIAS ──────────────────────────────────────────────────────────────
CREATE SEQUENCE seq_ciudades  START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE SEQUENCE seq_hoteles   START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE SEQUENCE seq_usuarios  START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE SEQUENCE seq_reservas  START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;

-- 1. CIUDADES  (PK:id SA, NN:nombre)
CREATE TABLE Ciudades (
    id     NUMBER DEFAULT seq_ciudades.NEXTVAL NOT NULL,
    nombre VARCHAR2(100) NOT NULL,
    CONSTRAINT pk_ciudades PRIMARY KEY (id)
);

-- 2. HOTELES  (PK:id SA, FK->Ciudades, CK:telefono)
CREATE TABLE Hoteles (
    id          NUMBER DEFAULT seq_hoteles.NEXTVAL NOT NULL,
    nombre      VARCHAR2(150) NOT NULL,
    direccion   VARCHAR2(250) NOT NULL,
    telefono    NUMBER(10) NOT NULL,
    descripcion VARCHAR2(1000) NOT NULL,
    id_ciudades NUMBER NOT NULL,
    CONSTRAINT pk_hoteles           PRIMARY KEY (id),
    CONSTRAINT fk_hoteles_ciudades  FOREIGN KEY (id_ciudades) REFERENCES Ciudades(id),
    CONSTRAINT ck_hoteles_telefono  CHECK (telefono BETWEEN 1000000 AND 9999999999)
);

-- 3. TIPOS_HABITACION  (PK:(nombre,id_hoteles), FK->Hoteles, CKs en costos/dim/cap)
-- costo_base_alta y costo_base_baja son NULLABLE segun el modelo (solo CK).
CREATE TABLE Tipos_habitacion (
    nombre          VARCHAR2(100) NOT NULL,
    id_hoteles      NUMBER NOT NULL,
    costo_base_alta NUMBER(12,2),
    costo_base_baja NUMBER(12,2),
    dimensiones     NUMBER(7,2) NOT NULL,
    cap_maxima      NUMBER NOT NULL,
    tipo_vista      VARCHAR2(50) NOT NULL,
    CONSTRAINT pk_tipos_habitacion       PRIMARY KEY (nombre, id_hoteles),
    CONSTRAINT fk_tipos_hab_hoteles      FOREIGN KEY (id_hoteles) REFERENCES Hoteles(id),
    CONSTRAINT ck_tipos_costo_alta       CHECK (costo_base_alta BETWEEN 0.01 AND 99999999.99),
    CONSTRAINT ck_tipos_costo_baja       CHECK (costo_base_baja BETWEEN 0.01 AND 99999999.99),
    CONSTRAINT ck_tipos_dimensiones      CHECK (dimensiones BETWEEN 0.01 AND 9999.99),
    CONSTRAINT ck_tipos_cap              CHECK (cap_maxima BETWEEN 0 AND 8)
);

-- 4. HABITACIONES  (PK:(numero,id_hoteles), FK->Hoteles, FK->Tipos_habitacion)
-- CK de dominio en estado_mantenimiento anadida (regla de negocio).
CREATE TABLE Habitaciones (
    numero                 NUMBER NOT NULL,
    id_hoteles             NUMBER NOT NULL,
    estado_mantenimiento   VARCHAR2(30) NOT NULL,
    nombre_tipo_habitacion VARCHAR2(100) NOT NULL,
    CONSTRAINT pk_habitaciones  PRIMARY KEY (numero, id_hoteles),
    CONSTRAINT fk_hab_hoteles   FOREIGN KEY (id_hoteles) REFERENCES Hoteles(id),
    CONSTRAINT fk_hab_tipo      FOREIGN KEY (nombre_tipo_habitacion, id_hoteles)
                                REFERENCES Tipos_habitacion(nombre, id_hoteles),
    CONSTRAINT ck_hab_estado    CHECK (estado_mantenimiento IN ('disponible','en mantenimiento','fuera de servicio'))
);

-- 5. CAMAS  (PK:tipo)  — catalogo de tipos de cama (sin atributo cantidad)
CREATE TABLE Camas (
    tipo VARCHAR2(20) NOT NULL,
    CONSTRAINT pk_camas PRIMARY KEY (tipo)
);

-- 6. CAMAS_POR_HABITACION  (PK compuesta, cantidad con CK[1-5])
-- cantidad es NULLABLE segun el modelo (solo CK).
CREATE TABLE Camas_por_habitacion (
    cantidad               NUMBER,
    tipo_cama              VARCHAR2(20)  NOT NULL,
    nombre_tipo_habitacion VARCHAR2(100) NOT NULL,
    id_hoteles             NUMBER        NOT NULL,
    CONSTRAINT pk_camas_por_hab PRIMARY KEY (tipo_cama, nombre_tipo_habitacion, id_hoteles),
    CONSTRAINT fk_cpb_camas     FOREIGN KEY (tipo_cama) REFERENCES Camas(tipo),
    CONSTRAINT fk_cpb_tipos     FOREIGN KEY (nombre_tipo_habitacion, id_hoteles)
                                REFERENCES Tipos_habitacion(nombre, id_hoteles),
    CONSTRAINT ck_cpb_cantidad  CHECK (cantidad BETWEEN 1 AND 5)
);

-- 7. COMODIDADES  (PK:nombre)
CREATE TABLE Comodidades (
    nombre VARCHAR2(50) NOT NULL,
    CONSTRAINT pk_comodidades PRIMARY KEY (nombre)
);

-- 8. COMODIDADES_POR_TIPO  (PK compuesta de tres FKs)
CREATE TABLE Comodidades_por_tipo (
    nombre_comodidad       VARCHAR2(50)  NOT NULL,
    nombre_tipo_habitacion VARCHAR2(100) NOT NULL,
    id_hoteles             NUMBER        NOT NULL,
    CONSTRAINT pk_comod_por_tipo PRIMARY KEY (nombre_comodidad, nombre_tipo_habitacion, id_hoteles),
    CONSTRAINT fk_cpt_comod      FOREIGN KEY (nombre_comodidad) REFERENCES Comodidades(nombre),
    CONSTRAINT fk_cpt_tipos      FOREIGN KEY (nombre_tipo_habitacion, id_hoteles)
                                 REFERENCES Tipos_habitacion(nombre, id_hoteles)
);

-- 9. SERVICIOS  (PK:nombre, CK precio>0, CK dominio en tipo_costo)
CREATE TABLE Servicios (
    nombre      VARCHAR2(100) NOT NULL,
    precio      NUMBER(12,2)  NOT NULL,
    tipo_costo  VARCHAR2(20)  NOT NULL,
    descripcion VARCHAR2(500) NOT NULL,
    CONSTRAINT pk_servicios     PRIMARY KEY (nombre),
    CONSTRAINT ck_serv_precio   CHECK (precio > 0),
    CONSTRAINT ck_serv_tcosto   CHECK (tipo_costo IN ('fijo','por consumo'))
);

-- 10. SERVICIOS_POR_TIPO  (PK compuesta de tres FKs)
CREATE TABLE Servicios_por_tipo (
    nombre_servicio        VARCHAR2(100) NOT NULL,
    nombre_tipo_habitacion VARCHAR2(100) NOT NULL,
    id_hoteles             NUMBER        NOT NULL,
    CONSTRAINT pk_serv_por_tipo  PRIMARY KEY (nombre_servicio, nombre_tipo_habitacion, id_hoteles),
    CONSTRAINT fk_spt_servicio   FOREIGN KEY (nombre_servicio) REFERENCES Servicios(nombre),
    CONSTRAINT fk_spt_tipos      FOREIGN KEY (nombre_tipo_habitacion, id_hoteles)
                                 REFERENCES Tipos_habitacion(nombre, id_hoteles)
);

-- 11. USUARIOS  (PK:id_usuario SA, CK telefono, UQ email)
-- UQ email anadida para asegurar unicidad de cuentas (regla de negocio).
CREATE TABLE Usuarios (
    id_usuario NUMBER DEFAULT seq_usuarios.NEXTVAL NOT NULL,
    nombre     VARCHAR2(100) NOT NULL,
    apellido   VARCHAR2(100) NOT NULL,
    telefono   NUMBER(10)    NOT NULL,
    email      VARCHAR2(200) NOT NULL,
    contrasena VARCHAR2(200) NOT NULL,
    CONSTRAINT pk_usuarios       PRIMARY KEY (id_usuario),
    CONSTRAINT ck_usuarios_tel   CHECK (telefono BETWEEN 1000000 AND 9999999999),
    CONSTRAINT uq_usuarios_email UNIQUE (email)
);

-- 12. ADMINISTRADORES  (PK:id_usuario, FK->Usuarios)
CREATE TABLE Administradores (
    id_usuario NUMBER NOT NULL,
    CONSTRAINT pk_administradores PRIMARY KEY (id_usuario),
    CONSTRAINT fk_admin_usuarios  FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);

-- 13. CLIENTES  (PK:id_usuario, FK->Usuarios, NN:doc_identidad)
-- doc_identidad es solo NN segun el modelo (sin UQ).
CREATE TABLE Clientes (
    id_usuario    NUMBER NOT NULL,
    doc_identidad VARCHAR2(20) NOT NULL,
    CONSTRAINT pk_clientes     PRIMARY KEY (id_usuario),
    CONSTRAINT fk_cli_usuarios FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);

-- 14. RESERVAS  (PK:id SA, FKs, CK numericos)
-- precio_total es atributo derivado (DD): calculado y almacenado por la aplicacion.
-- Segun el modelo: estado, nombre_tipo_habitacion, id_hoteles e id_usuario_cliente
-- son nullable (no aparecen marcados NN). num_ninos sin enie por portabilidad.
CREATE TABLE Reservas (
    id                     NUMBER DEFAULT seq_reservas.NEXTVAL NOT NULL,
    fecha_entrada          DATE          NOT NULL,
    fecha_salida           DATE          NOT NULL,
    num_adultos            NUMBER        NOT NULL,
    num_ninos              NUMBER        NOT NULL,
    precio_total           NUMBER(14,2)  NOT NULL,
    estado                 VARCHAR2(20)  NOT NULL,
    nombre_tipo_habitacion VARCHAR2(100),
    id_hoteles             NUMBER,
    id_usuario_cliente     NUMBER,
    CONSTRAINT pk_reservas    PRIMARY KEY (id),
    CONSTRAINT fk_res_tipo    FOREIGN KEY (nombre_tipo_habitacion, id_hoteles)
                              REFERENCES Tipos_habitacion(nombre, id_hoteles),
    CONSTRAINT fk_res_cliente FOREIGN KEY (id_usuario_cliente) REFERENCES Clientes(id_usuario),
    CONSTRAINT ck_res_adultos CHECK (num_adultos > 0),
    CONSTRAINT ck_res_ninos   CHECK (num_ninos >= 0),
    CONSTRAINT ck_res_estado  CHECK (estado IN ('activa','cancelada','completada','pendiente')),
    CONSTRAINT ck_res_fechas  CHECK (fecha_salida > fecha_entrada)
);