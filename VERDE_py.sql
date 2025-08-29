-- Script de creación de base de datos para SQLite3
-- Traducido desde PostgreSQL
-- Sistema de catalogación de plantas, variedades agrícolas y comercialización

BEGIN TRANSACTION;

-- Habilitar claves foráneas en SQLite
PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS usuario (
    id_usuario INTEGER PRIMARY KEY AUTOINCREMENT,
    nom_usuario VARCHAR(50) UNIQUE,
    correo VARCHAR(100) UNIQUE,
    pass TEXT,
    rol VARCHAR(20),
    estado_activo BOOLEAN DEFAULT 1
);

CREATE TABLE IF NOT EXISTS asociacion (
    id_asociacion INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre VARCHAR(100) UNIQUE,
    tipo VARCHAR(50),
    descripcion TEXT,
    id_usuario INTEGER,
    fecha_creacion DATE DEFAULT (date('now')),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS mercado (
    id_mercado INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre VARCHAR(100),
    direccion TEXT,
    latitud NUMERIC(9, 6),
    longitud NUMERIC(9, 6),
    horario_apertura TIME,
    horario_cierre TIME,
    imagen_url TEXT,
    id_usuario INTEGER,
    fecha_creacion DATE DEFAULT (date('now')),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS asociacion_mercado (
    id_asociacion INTEGER NOT NULL,
    id_mercado INTEGER NOT NULL,
    dias_atencion VARCHAR(50),
    observaciones TEXT,
    PRIMARY KEY (id_asociacion, id_mercado),
    FOREIGN KEY (id_asociacion) REFERENCES asociacion(id_asociacion) ON DELETE CASCADE,
    FOREIGN KEY (id_mercado) REFERENCES mercado(id_mercado) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS tipo_suelo (
    id_tipo_suelo INTEGER PRIMARY KEY AUTOINCREMENT,
    tipo_suelo VARCHAR(150) NOT NULL,
    descripcion VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS caracteristica_ambiental (
    id_caract INTEGER PRIMARY KEY AUTOINCREMENT,
    ph_min NUMERIC,
    ph_max NUMERIC,
    temp_min NUMERIC,
    temp_max NUMERIC,
    humedad_optima NUMERIC,
    altitud_min NUMERIC,
    altitud_max NUMERIC,
    id_tipo_suelo INTEGER NOT NULL,
    FOREIGN KEY (id_tipo_suelo) REFERENCES tipo_suelo(id_tipo_suelo) ON DELETE RESTRICT,
    CHECK (ph_min >= 0 AND ph_min <= 14),
    CHECK (ph_max >= 0 AND ph_max <= 14),
    CHECK (ph_min <= ph_max),
    CHECK (temp_min <= temp_max),
    CHECK (humedad_optima >= 0 AND humedad_optima <= 100),
    CHECK (altitud_min <= altitud_max)
);

CREATE TABLE IF NOT EXISTS familia (
    id_familia INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre_familia VARCHAR(100) NOT NULL,
    descripcion TEXT NOT NULL,
    fecha_creacion DATE NOT NULL,
    id_usuario INTEGER NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS origen (
    id_origen INTEGER PRIMARY KEY AUTOINCREMENT,
    region_origen VARCHAR(50) NOT NULL,
    descripcion VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS papel_cadena (
    id_papel INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre_papel VARCHAR(50) UNIQUE,
    descripcion TEXT
);

CREATE TABLE IF NOT EXISTS planta (
    id_planta INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre_cientifico VARCHAR(100) NOT NULL UNIQUE,
    nombre_comun VARCHAR(100) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    fecha_registro DATE NOT NULL,
    id_usuario INTEGER,
    id_familia INTEGER NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) ON DELETE SET NULL,
    FOREIGN KEY (id_familia) REFERENCES familia(id_familia) ON DELETE RESTRICT
);

CREATE TABLE IF NOT EXISTS productor (
    id_productor INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    ced VARCHAR(10),
    telefono VARCHAR(15),
    direccion VARCHAR(150),
    tipo VARCHAR(50),
    contacto TEXT,
    fecha_creacion DATE,
    id_asociacion INTEGER,
    id_usuario INTEGER,
    FOREIGN KEY (id_asociacion) REFERENCES asociacion(id_asociacion) ON DELETE SET NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS productor_papel (
    id_productor INTEGER NOT NULL,
    id_papel INTEGER NOT NULL,
    fecha_asignacion DATE NOT NULL DEFAULT (date('now')),
    PRIMARY KEY (id_productor, id_papel),
    FOREIGN KEY (id_productor) REFERENCES productor(id_productor) ON DELETE CASCADE,
    FOREIGN KEY (id_papel) REFERENCES papel_cadena(id_papel) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS reconocimiento (
    id_reconocimiento INTEGER PRIMARY KEY AUTOINCREMENT,
    id_usuario INTEGER NOT NULL,
    fecha DATETIME DEFAULT (datetime('now', 'localtime')),
    precision_modelo NUMERIC(5, 2),
    clases_predichas TEXT,
    comentario_usuario TEXT,
    calificacion_usuario INTEGER,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) ON DELETE RESTRICT,
    CHECK (precision_modelo >= 0 AND precision_modelo <= 100),
    CHECK (calificacion_usuario >= 1 AND calificacion_usuario <= 5)
);

CREATE TABLE IF NOT EXISTS temporada (
    id_temporada INTEGER PRIMARY KEY AUTOINCREMENT,
    tipo VARCHAR(20) NOT NULL,
    nombre VARCHAR(50),
    mes_inicio INTEGER,
    mes_fin INTEGER,
    CHECK (mes_inicio >= 1 AND mes_inicio <= 12),
    CHECK (mes_fin >= 1 AND mes_fin <= 12)
);

CREATE TABLE IF NOT EXISTS tipo_riesgo (
    id_riesgo INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS ubicacion_geografica (
    id_ubicacion INTEGER PRIMARY KEY AUTOINCREMENT,
    latitud NUMERIC(9, 6),
    longitud NUMERIC(9, 6),
    altitud_msnm INTEGER,
    region VARCHAR(20),
    parroquia VARCHAR(100),
    canton VARCHAR(100),
    provincia VARCHAR(100),
    descripcion TEXT,
    CHECK (latitud >= -90 AND latitud <= 90),
    CHECK (longitud >= -180 AND longitud <= 180)
);

CREATE TABLE IF NOT EXISTS uso (
    id_uso INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre VARCHAR(50) NOT NULL,
    descripcion TEXT,
    enlace VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS variedad (
    id_variedad INTEGER PRIMARY KEY AUTOINCREMENT,
    id_planta INTEGER NOT NULL,
    id_origen INTEGER NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT NOT NULL,
    fecha_creacion_variedad DATE,
    estado VARCHAR(20) NOT NULL,
    FOREIGN KEY (id_planta) REFERENCES planta(id_planta) ON DELETE CASCADE,
    FOREIGN KEY (id_origen) REFERENCES origen(id_origen) ON DELETE RESTRICT
);

CREATE TABLE IF NOT EXISTS variedad_ambiente (
    id_variedad INTEGER NOT NULL,
    id_caract INTEGER NOT NULL,
    PRIMARY KEY (id_variedad, id_caract),
    FOREIGN KEY (id_variedad) REFERENCES variedad(id_variedad) ON DELETE CASCADE,
    FOREIGN KEY (id_caract) REFERENCES caracteristica_ambiental(id_caract) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS variedad_riesgo (
    id_variedad INTEGER NOT NULL,
    id_riesgo INTEGER NOT NULL,
    nivel INTEGER,
    descripcion TEXT,
    PRIMARY KEY (id_variedad, id_riesgo),
    FOREIGN KEY (id_variedad) REFERENCES variedad(id_variedad) ON DELETE CASCADE,
    FOREIGN KEY (id_riesgo) REFERENCES tipo_riesgo(id_riesgo) ON DELETE CASCADE,
    CHECK (nivel >= 1 AND nivel <= 5)
);

CREATE TABLE IF NOT EXISTS variedad_temporada (
    id_variedad INTEGER NOT NULL,
    id_temporada INTEGER NOT NULL,
    es_principal BOOLEAN,
    condiciones TEXT,
    PRIMARY KEY (id_variedad, id_temporada),
    FOREIGN KEY (id_variedad) REFERENCES variedad(id_variedad) ON DELETE CASCADE,
    FOREIGN KEY (id_temporada) REFERENCES temporada(id_temporada) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS variedad_ubicacion (
    id_variedad INTEGER NOT NULL,
    id_ubicacion INTEGER NOT NULL,
    tipo_sitio VARCHAR(50),
    frecuencia VARCHAR(10),
    observaciones TEXT,
    fecha_registro DATE,
    PRIMARY KEY (id_variedad, id_ubicacion),
    FOREIGN KEY (id_variedad) REFERENCES variedad(id_variedad) ON DELETE CASCADE,
    FOREIGN KEY (id_ubicacion) REFERENCES ubicacion_geografica(id_ubicacion) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS variedad_uso (
    id_variedad INTEGER NOT NULL,
    id_uso INTEGER NOT NULL,
    enlace VARCHAR(255),
    PRIMARY KEY (id_variedad, id_uso),
    FOREIGN KEY (id_variedad) REFERENCES variedad(id_variedad) ON DELETE CASCADE,
    FOREIGN KEY (id_uso) REFERENCES uso(id_uso) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS registro_venta (
    id_registro INTEGER PRIMARY KEY AUTOINCREMENT,
    id_variedad INTEGER NOT NULL,
    id_mercado INTEGER NOT NULL,
    id_productor INTEGER,
    fecha DATE,
    cantidad NUMERIC,
    unidad VARCHAR(20),
    precio_unitario NUMERIC,
    es_productor BOOLEAN,
    calificacion INTEGER,
    FOREIGN KEY (id_variedad) REFERENCES variedad(id_variedad) ON DELETE CASCADE,
    FOREIGN KEY (id_mercado) REFERENCES mercado(id_mercado) ON DELETE RESTRICT,
    FOREIGN KEY (id_productor) REFERENCES productor(id_productor) ON DELETE SET NULL,
    CHECK (cantidad >= 0),
    CHECK (precio_unitario >= 0),
    CHECK (calificacion >= 1 AND calificacion <= 5)
);
;

COMMIT;