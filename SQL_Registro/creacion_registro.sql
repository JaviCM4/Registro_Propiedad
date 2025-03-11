CREATE TABLE Departamento (
    id NUMBER(2) PRIMARY KEY,
    nombre VARCHAR2(75),
    codigo_postal NUMBER(7)
);

CREATE TABLE Naturaleza (
    id NUMBER(3) PRIMARY KEY,
    nombre VARCHAR2(75),
    descripcion VARCHAR2(250)
);

CREATE TABLE Orientacion (
    id NUMBER(3) PRIMARY KEY,
    nombre VARCHAR2(75)
);

CREATE TABLE Tipo_Servidumbre (
    id NUMBER(3) PRIMARY KEY,
    nombre VARCHAR2(75)
);

CREATE TABLE Tipo_Accion (
    id NUMBER(3) PRIMARY KEY,
    nombre VARCHAR2(50)
);

CREATE TABLE Tipo_Limitacion (
    id NUMBER(3) PRIMARY KEY,
    nombre VARCHAR2(75)
);

CREATE TABLE Nivel_Familiar (
    id NUMBER(2) PRIMARY KEY,
    nombre VARCHAR2(75),
    prioridad NUMBER(2)
);

CREATE TABLE Tipo_Propietario (
    id NUMBER(3) PRIMARY KEY,
    nombre VARCHAR2(75)
);

CREATE TABLE Moneda (
    id NUMBER(3) PRIMARY KEY,
    pais VARCHAR2(75),
    nombre_moneda VARCHAR2(75),
    cambio_promedio NUMBER(5)
);

CREATE TABLE Municipio (
    id NUMBER(4) PRIMARY KEY,
    id_departamento NUMBER(2),
    nombre VARCHAR2(75),
    codigo_postal NUMBER(7),
    CONSTRAINT fk_municipio_departamento FOREIGN KEY (id_departamento) REFERENCES Departamento(id)
);

CREATE TABLE Representante (
    id NUMBER(5) PRIMARY KEY,
    id_municipio NUMBER(4),
    colegiado NUMBER(9),
    cui NUMBER(13),
    nombres VARCHAR2(75),
    apellidos VARCHAR2(75),
    telefono NUMBER(8),
    direccion VARCHAR2(100),
    CONSTRAINT fk_representante_municipio FOREIGN KEY (id_municipio) REFERENCES Municipio(id)
);

CREATE TABLE Inscripcion_Finca (
    no_finca NUMBER(15) PRIMARY KEY,
    id_municipio NUMBER(4),
    id_naturaleza NUMBER(3),
    no_folio NUMBER(15),
    no_libro NUMBER(15),
    area NUMBER(10),
    nombre VARCHAR2(75),
    tipo_finca VARCHAR2(50),
    edificacion VARCHAR2(75),
    direccion VARCHAR2(100),
    fecha_emision DATE,
    fecha_modificacion DATE,
    CONSTRAINT fk_inscripcion_finca_municipio FOREIGN KEY (id_municipio) REFERENCES Municipio(id),
    CONSTRAINT fk_inscripcion_finca_naturaleza FOREIGN KEY (id_naturaleza) REFERENCES Naturaleza(id)
);

CREATE TABLE Amenidad (
    id NUMBER(5) PRIMARY KEY,
    no_finca NUMBER(15),
    tipo VARCHAR2(50),
    descripcion VARCHAR2(250),
    CONSTRAINT fk_amenidad_finca FOREIGN KEY (no_finca) REFERENCES Inscripcion_Finca(no_finca)
);

CREATE TABLE Colindante (
    id NUMBER(5) PRIMARY KEY,
    no_finca NUMBER(15),
    id_orientacion NUMBER(3),
    nombre VARCHAR2(75),
    descripcion VARCHAR2(250),
    fecha_registro DATE,
    CONSTRAINT fk_colindante_finca FOREIGN KEY (no_finca) REFERENCES Inscripcion_Finca(no_finca),
    CONSTRAINT fk_colindante_orientacion FOREIGN KEY (id_orientacion) REFERENCES Orientacion(id)
);

CREATE TABLE Servidumbre (
    id NUMBER(5) PRIMARY KEY,
    no_finca NUMBER(15),
    id_tipo_servidumbre NUMBER(3),
    descripcion VARCHAR2(250),
    fecha_inicio DATE,
    fecha_final DATE,
    dominante CHAR(1),
    estado VARCHAR2(50),
    CONSTRAINT fk_servidumbre_finca FOREIGN KEY (no_finca) REFERENCES Inscripcion_Finca(no_finca),
    CONSTRAINT fk_servidumbre_tipo FOREIGN KEY (id_tipo_servidumbre) REFERENCES Tipo_Servidumbre(id)
);

CREATE TABLE Finca_Involucrado (
    id NUMBER(5) PRIMARY KEY,
    id_servidumbre NUMBER(5),
    no_finca NUMBER(15),
    CONSTRAINT fk_finca_involucrado_servidumbre FOREIGN KEY (id_servidumbre) REFERENCES Servidumbre(id),
    CONSTRAINT fk_finca_involucrado_finca FOREIGN KEY (no_finca) REFERENCES Inscripcion_Finca(no_finca)
);

CREATE TABLE Coordenada (
    id NUMBER(5) PRIMARY KEY,
    no_finca NUMBER(15),
    latitud NUMBER(3),
    longitud NUMBER(3),
    fecha_registro DATE,
    CONSTRAINT fk_coordenada_finca FOREIGN KEY (no_finca) REFERENCES Inscripcion_Finca(no_finca)
);

CREATE TABLE Propietario (
    id NUMBER(9) PRIMARY KEY,
    no_finca NUMBER(15),
    id_tipo_propietario NUMBER(3),
    fecha_registro DATE,
    CONSTRAINT fk_propietario_finca FOREIGN KEY (no_finca) REFERENCES Inscripcion_Finca(no_finca),
    CONSTRAINT fk_propietario_tipo FOREIGN KEY (id_tipo_propietario) REFERENCES Tipo_Propietario(id)
);

CREATE TABLE Persona (
    id NUMBER(9) PRIMARY KEY,
    id_propietario NUMBER(9),
    nombres VARCHAR2(75),
    apellidos VARCHAR2(75),
    cui NUMBER(13),
    nit NUMBER(9),
    telefono NUMBER(8),
    correo VARCHAR2(100),
    direccion VARCHAR2(100),
    fecha_nacimiento DATE,
    porcentaje NUMBER(3),
    CONSTRAINT fk_persona_propietario FOREIGN KEY (id_propietario) REFERENCES Propietario(id)
);

CREATE TABLE Acta_Defuncion (
    id NUMBER(9) PRIMARY KEY,
    id_persona NUMBER(9),
    observaciones VARCHAR2(250),
    fecha_fallecimiento DATE,
    CONSTRAINT fk_acta_defuncion_persona FOREIGN KEY (id_persona) REFERENCES Persona(id)
);

CREATE TABLE Causas (
    id NUMBER(5) PRIMARY KEY,
    id_acta_defuncion NUMBER(9),
    cuadro VARCHAR2(75),
    descripcion VARCHAR2(250),
    CONSTRAINT fk_causas_acta_defuncion FOREIGN KEY (id_acta_defuncion) REFERENCES Acta_Defuncion(id)
);

CREATE TABLE Testamento (
    id NUMBER(5) PRIMARY KEY,
    no_finca NUMBER(15),
    cui_heredero NUMBER(13),
    nombres VARCHAR2(75),
    apellidos VARCHAR2(75),
    porcentaje NUMBER(3),
    fecha DATE,
    CONSTRAINT fk_testamento_finca FOREIGN KEY (no_finca) REFERENCES Inscripcion_Finca(no_finca)
);

CREATE TABLE Accion (
    id NUMBER(8) PRIMARY KEY,
    no_finca NUMBER(15),
    id_tipo_accion NUMBER(3),
    id_representante NUMBER(5),
    fecha_inicio_proceso DATE,
    fecha_finalizacion_proceso DATE,
    estado VARCHAR2(50),
    CONSTRAINT fk_accion_finca FOREIGN KEY (no_finca) REFERENCES Inscripcion_Finca(no_finca),
    CONSTRAINT fk_accion_tipo FOREIGN KEY (id_tipo_accion) REFERENCES Tipo_Accion(id),
    CONSTRAINT fk_accion_representante FOREIGN KEY (id_representante) REFERENCES Representante(id)
);

CREATE TABLE Limitacion (
    id NUMBER(8) PRIMARY KEY,
    no_finca NUMBER(15),
    id_tipo_limitacion NUMBER(3),
    id_representante NUMBER(5),
    fecha_inicio DATE,
    fecha_final DATE,
    estado VARCHAR2(50),
    CONSTRAINT fk_limitacion_finca FOREIGN KEY (no_finca) REFERENCES Inscripcion_Finca(no_finca),
    CONSTRAINT fk_limitacion_tipo FOREIGN KEY (id_tipo_limitacion) REFERENCES Tipo_Limitacion(id),
    CONSTRAINT fk_limitacion_representante FOREIGN KEY (id_representante) REFERENCES Representante(id)
);

CREATE TABLE Duplicado (
    id NUMBER(5) PRIMARY KEY,
    id_acciones NUMBER(8),
    cui_solicitante NUMBER(13),
    nombre_solicitante VARCHAR2(75),
    apellido_solicitante VARCHAR2(75),
    motivo VARCHAR2(250),
    CONSTRAINT fk_duplicado_accion FOREIGN KEY (id_acciones) REFERENCES Accion(id)
);

CREATE TABLE Desmembracion (
    id NUMBER(5) PRIMARY KEY,
    id_acciones NUMBER(8),
    no_finca_nueva NUMBER(15),
    no_finca_matriz NUMBER(15),
    observaciones VARCHAR2(250),
    CONSTRAINT fk_desmembracion_accion FOREIGN KEY (id_acciones) REFERENCES Accion(id)
);

CREATE TABLE Unificacion (
    id NUMBER(5) PRIMARY KEY,
    id_acciones NUMBER(8),
    no_finca_union NUMBER(15),
    no_finca_parte NUMBER(15),
    observaciones VARCHAR2(250),
    CONSTRAINT fk_unificacion_accion FOREIGN KEY (id_acciones) REFERENCES Accion(id)
);

CREATE TABLE Hipoteca (
    id NUMBER(5) PRIMARY KEY,
    id_limitaciones NUMBER(8),
    orden VARCHAR2(75),
    tipo_credito VARCHAR2(50),
    importe VARCHAR2(50),
    plaza DATE,
    CONSTRAINT fk_hipoteca_limitacion FOREIGN KEY (id_limitaciones) REFERENCES Limitacion(id)
);

CREATE TABLE Embargo (
    id NUMBER(5) PRIMARY KEY,
    id_limitaciones NUMBER(8),
    orden VARCHAR2(75),
    solicitante_embargo VARCHAR2(100),
    motivo VARCHAR2(250),
    CONSTRAINT fk_embargo_limitacion FOREIGN KEY (id_limitaciones) REFERENCES Limitacion(id)
);

CREATE TABLE Usufructo (
    id NUMBER(5) PRIMARY KEY,
    id_limitaciones NUMBER(8),
    vitalicio CHAR(1),
    descripcion VARCHAR2(250),
    CONSTRAINT fk_usufructo_limitacion FOREIGN KEY (id_limitaciones) REFERENCES Limitacion(id)
);

CREATE TABLE Beneficiario (
    id NUMBER(5) PRIMARY KEY,
    id_usufructo NUMBER(5),
    cui NUMBER(13),
    nombres VARCHAR2(75),
    apellidos VARCHAR2(75),
    CONSTRAINT fk_beneficiario_usufructo FOREIGN KEY (id_usufructo) REFERENCES Usufructo(id)
);

CREATE TABLE Anotaciones (
    id NUMBER(5) PRIMARY KEY,
    id_limitaciones NUMBER(8),
    tipo_proceso VARCHAR2(50),
    motivo VARCHAR2(250),
    CONSTRAINT fk_anotaciones_limitacion FOREIGN KEY (id_limitaciones) REFERENCES Limitacion(id)
);

CREATE TABLE Susecion_Intestada (
    id NUMBER(5) PRIMARY KEY,
    id_acciones NUMBER(8),
    id_acta_defuncion NUMBER(9),
    CONSTRAINT fk_susecion_intestada_accion FOREIGN KEY (id_acciones) REFERENCES Accion(id),
    CONSTRAINT fk_susecion_intestada_acta FOREIGN KEY (id_acta_defuncion) REFERENCES Acta_Defuncion(id)
);

CREATE TABLE Interesado (
    id NUMBER(5) PRIMARY KEY,
    id_susecion_instestada NUMBER(5),
    id_nivel_familiar NUMBER(2),
    cui NUMBER(13),
    nombres VARCHAR2(75),
    apellidos VARCHAR2(75),
    CONSTRAINT fk_interesado_susecion FOREIGN KEY (id_susecion_instestada) REFERENCES Susecion_Intestada(id),
    CONSTRAINT fk_interesado_nivel FOREIGN KEY (id_nivel_familiar) REFERENCES Nivel_Familiar(id)
);

CREATE TABLE Susecion_Hereditaria (
    id NUMBER(5) PRIMARY KEY,
    id_acciones NUMBER(8),
    id_acta_defuncion NUMBER(9),
    id_testamento NUMBER(5),
    CONSTRAINT fk_susecion_hereditaria_accion FOREIGN KEY (id_acciones) REFERENCES Accion(id),
    CONSTRAINT fk_susecion_hereditaria_acta FOREIGN KEY (id_acta_defuncion) REFERENCES Acta_Defuncion(id),
    CONSTRAINT fk_susecion_hereditaria_testamento FOREIGN KEY (id_testamento) REFERENCES Testamento(id)
);

CREATE TABLE Pago (
    id NUMBER(5) PRIMARY KEY,
    id_moneda NUMBER(3),
    precio NUMBER(10),
    tasa_cambio NUMBER(5),
    forma_pago VARCHAR2(25),
    estado CHAR(1),
    CONSTRAINT fk_pago_moneda FOREIGN KEY (id_moneda) REFERENCES Moneda(id)
);

CREATE TABLE Compraventa (
    id NUMBER(5) PRIMARY KEY,
    id_acciones NUMBER(8),
    id_pago NUMBER(5),
    cui NUMBER(13),
    nombres VARCHAR2(75),
    apellidos VARCHAR2(75),
    observaciones VARCHAR2(250),
    CONSTRAINT fk_compraventa_accion FOREIGN KEY (id_acciones) REFERENCES Accion(id),
    CONSTRAINT fk_compraventa_pago FOREIGN KEY (id_pago) REFERENCES Pago(id)
);

CREATE TABLE Donacion (
    id NUMBER(5) PRIMARY KEY,
    id_acciones NUMBER(8),
    cui NUMBER(13),
    nombres VARCHAR2(75),
    apelllidos VARCHAR2(75),
    mensaje_aceptacion VARCHAR2(250),
    CONSTRAINT fk_donacion_accion FOREIGN KEY (id_acciones) REFERENCES Accion(id)
);

CREATE TABLE Permuta (
    id NUMBER(5) PRIMARY KEY,
    id_acciones NUMBER(8),
    no_finca_intercambio NUMBER(10),
    CONSTRAINT fk_permuta_accion FOREIGN KEY (id_acciones) REFERENCES Accion(id)
);