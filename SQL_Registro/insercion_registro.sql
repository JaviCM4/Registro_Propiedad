-- Inserciones para tabla Departamento
INSERT INTO Departamento (id, nombre, codigo_postal) VALUES (1, 'Guatemala', '01001');
INSERT INTO Departamento (id, nombre, codigo_postal) VALUES (2, 'El Progreso', '02001');
INSERT INTO Departamento (id, nombre, codigo_postal) VALUES (3, 'Sacatepéquez', '03001');
INSERT INTO Departamento (id, nombre, codigo_postal) VALUES (4, 'Chimaltenango', '04001');
INSERT INTO Departamento (id, nombre, codigo_postal) VALUES (5, 'Escuintla', '05001');
INSERT INTO Departamento (id, nombre, codigo_postal) VALUES (6, 'Santa Rosa', '06001');
INSERT INTO Departamento (id, nombre, codigo_postal) VALUES (7, 'Sololá', '07001');
INSERT INTO Departamento (id, nombre, codigo_postal) VALUES (8, 'Totonicapán', '08001');
INSERT INTO Departamento (id, nombre, codigo_postal) VALUES (9, 'Quetzaltenango', '09001');
INSERT INTO Departamento (id, nombre, codigo_postal) VALUES (10, 'Suchitepéquez', '10001');
INSERT INTO Departamento (id, nombre, codigo_postal) VALUES (11, 'Retalhuleu', '11001');
INSERT INTO Departamento (id, nombre, codigo_postal) VALUES (12, 'San Marcos', '12001');
INSERT INTO Departamento (id, nombre, codigo_postal) VALUES (13, 'Huehuetenango', '13001');
INSERT INTO Departamento (id, nombre, codigo_postal) VALUES (14, 'Quiché', '14001');
INSERT INTO Departamento (id, nombre, codigo_postal) VALUES (15, 'Baja Verapaz', '15001');
INSERT INTO Departamento (id, nombre, codigo_postal) VALUES (16, 'Alta Verapaz', '16001');
INSERT INTO Departamento (id, nombre, codigo_postal) VALUES (17, 'Petén', '17001');
INSERT INTO Departamento (id, nombre, codigo_postal) VALUES (18, 'Izabal', '18001');
INSERT INTO Departamento (id, nombre, codigo_postal) VALUES (19, 'Zacapa', '19001');
INSERT INTO Departamento (id, nombre, codigo_postal) VALUES (20, 'Chiquimula', '20001');
INSERT INTO Departamento (id, nombre, codigo_postal) VALUES (21, 'Jalapa', '21001');
INSERT INTO Departamento (id, nombre, codigo_postal) VALUES (22, 'Jutiapa', '22001');

-- Inserciones para tabla Municipio
INSERT INTO Municipio (id, id_departamento, nombre, codigo_postal) VALUES (1, 1, 'Guatemala', '01001');
INSERT INTO Municipio (id, id_departamento, nombre, codigo_postal) VALUES (2, 1, 'Mixco', '01057');
INSERT INTO Municipio (id, id_departamento, nombre, codigo_postal) VALUES (3, 1, 'Villa Nueva', '01064');
INSERT INTO Municipio (id, id_departamento, nombre, codigo_postal) VALUES (4, 2, 'Guastatoya', '02001');
INSERT INTO Municipio (id, id_departamento, nombre, codigo_postal) VALUES (5, 2, 'Morazán', '02011');
INSERT INTO Municipio (id, id_departamento, nombre, codigo_postal) VALUES (6, 2, 'San Agustín Acasaguastlán', '02013');
INSERT INTO Municipio (id, id_departamento, nombre, codigo_postal) VALUES (7, 3, 'Antigua Guatemala', '03001');
INSERT INTO Municipio (id, id_departamento, nombre, codigo_postal) VALUES (8, 3, 'Jocotenango', '03009');
INSERT INTO Municipio (id, id_departamento, nombre, codigo_postal) VALUES (9, 3, 'Ciudad Vieja', '03005');
INSERT INTO Municipio (id, id_departamento, nombre, codigo_postal) VALUES (10, 9, 'Quetzaltenango', '09001');
INSERT INTO Municipio (id, id_departamento, nombre, codigo_postal) VALUES (11, 9, 'Salcajá', '09003');
INSERT INTO Municipio (id, id_departamento, nombre, codigo_postal) VALUES (12, 9, 'Olintepeque', '09011');
INSERT INTO Municipio (id, id_departamento, nombre, codigo_postal) VALUES (13, 12, 'San Marcos', '12001');
INSERT INTO Municipio (id, id_departamento, nombre, codigo_postal) VALUES (14, 12, 'San Pedro Sacatepéquez', '12008');
INSERT INTO Municipio (id, id_departamento, nombre, codigo_postal) VALUES (15, 12, 'Esquipulas Palo Gordo', '12026');

-- Inserciones para tabla Naturaleza
INSERT INTO Naturaleza (id, nombre, descripcion) VALUES (1, 'Urbana', 'Propiedad ubicada dentro del límite urbano municipal');
INSERT INTO Naturaleza (id, nombre, descripcion) VALUES (2, 'Rural', 'Propiedad ubicada fuera del límite urbano municipal');
INSERT INTO Naturaleza (id, nombre, descripcion) VALUES (3, 'Rústica', 'Propiedad destinada a usos agrícolas o ganaderos');
INSERT INTO Naturaleza (id, nombre, descripcion) VALUES (4, 'Industrial', 'Propiedad destinada a uso industrial');
INSERT INTO Naturaleza (id, nombre, descripcion) VALUES (5, 'Comercial', 'Propiedad destinada a uso comercial');
INSERT INTO Naturaleza (id, nombre, descripcion) VALUES (6, 'Mixta', 'Propiedad con múltiples usos (comercial/residencial)');

-- Inserciones para tabla Orientacion
INSERT INTO Orientacion (id, nombre) VALUES (1, 'Norte');
INSERT INTO Orientacion (id, nombre) VALUES (2, 'Noreste');
INSERT INTO Orientacion (id, nombre) VALUES (3, 'Este');
INSERT INTO Orientacion (id, nombre) VALUES (4, 'Sureste');
INSERT INTO Orientacion (id, nombre) VALUES (5, 'Sur');
INSERT INTO Orientacion (id, nombre) VALUES (6, 'Suroeste');
INSERT INTO Orientacion (id, nombre) VALUES (7, 'Oeste');
INSERT INTO Orientacion (id, nombre) VALUES (8, 'Noroeste');

-- Inserciones para tabla Tipo_Servidumbre
INSERT INTO Tipo_Servidumbre (id, nombre) VALUES (1, 'Paso');
INSERT INTO Tipo_Servidumbre (id, nombre) VALUES (2, 'Acueducto');
INSERT INTO Tipo_Servidumbre (id, nombre) VALUES (3, 'Energía Eléctrica');
INSERT INTO Tipo_Servidumbre (id, nombre) VALUES (4, 'Vista');
INSERT INTO Tipo_Servidumbre (id, nombre) VALUES (5, 'Desagüe');
INSERT INTO Tipo_Servidumbre (id, nombre) VALUES (6, 'Medianería');
INSERT INTO Tipo_Servidumbre (id, nombre) VALUES (7, 'Luces y Vistas');
INSERT INTO Tipo_Servidumbre (id, nombre) VALUES (8, 'Telecomunicaciones');

-- Inserciones para tabla Tipo_Accion
INSERT INTO Tipo_Accion (id, nombre) VALUES (1, 'Duplicado');
INSERT INTO Tipo_Accion (id, nombre) VALUES (2, 'Desmembración');
INSERT INTO Tipo_Accion (id, nombre) VALUES (3, 'Unificación');
INSERT INTO Tipo_Accion (id, nombre) VALUES (4, 'Compraventa');
INSERT INTO Tipo_Accion (id, nombre) VALUES (5, 'Donación');
INSERT INTO Tipo_Accion (id, nombre) VALUES (6, 'Permuta');
INSERT INTO Tipo_Accion (id, nombre) VALUES (7, 'Sucesión Hereditaria');
INSERT INTO Tipo_Accion (id, nombre) VALUES (8, 'Sucesión Intestada');
INSERT INTO Tipo_Accion (id, nombre) VALUES (9, 'Adjudicación');
INSERT INTO Tipo_Accion (id, nombre) VALUES (10, 'Registro Inicial');

-- Inserciones para tabla Tipo_Limitacion
INSERT INTO Tipo_Limitacion (id, nombre) VALUES (1, 'Hipoteca');
INSERT INTO Tipo_Limitacion (id, nombre) VALUES (2, 'Embargo');
INSERT INTO Tipo_Limitacion (id, nombre) VALUES (3, 'Usufructo');
INSERT INTO Tipo_Limitacion (id, nombre) VALUES (4, 'Anotación');

-- Inserciones para tabla Moneda
INSERT INTO Moneda (id, pais, nombre_moneda, cambio_promedio) VALUES (1, 'Guatemala', 'Quetzal', 1);
INSERT INTO Moneda (id, pais, nombre_moneda, cambio_promedio) VALUES (2, 'Estados Unidos', 'Dólar', 7.85);
INSERT INTO Moneda (id, pais, nombre_moneda, cambio_promedio) VALUES (3, 'Unión Europea', 'Euro', 8.48);
INSERT INTO Moneda (id, pais, nombre_moneda, cambio_promedio) VALUES (4, 'México', 'Peso Mexicano', 0.45);
INSERT INTO Moneda (id, pais, nombre_moneda, cambio_promedio) VALUES (5, 'Reino Unido', 'Libra Esterlina', 9.94);

-- Inserciones para tabla Nivel_Familiar
INSERT INTO Nivel_Familiar (id, nombre, prioridad) VALUES (1, 'Descendientes', 1);
INSERT INTO Nivel_Familiar (id, nombre, prioridad) VALUES (2, 'Ascendientes', 2);
INSERT INTO Nivel_Familiar (id, nombre, prioridad) VALUES (3, 'Cónyuge', 3);
INSERT INTO Nivel_Familiar (id, nombre, prioridad) VALUES (4, 'Hermanos', 4);
INSERT INTO Nivel_Familiar (id, nombre, prioridad) VALUES (5, 'Sobrinos', 5);
INSERT INTO Nivel_Familiar (id, nombre, prioridad) VALUES (6, 'Tíos', 6);
INSERT INTO Nivel_Familiar (id, nombre, prioridad) VALUES (7, 'Estado', 7);

-- Inserciones para tabla Tipo_Propietario
INSERT INTO Tipo_Propietario (id, nombre) VALUES (1, 'Persona Individual');
INSERT INTO Tipo_Propietario (id, nombre) VALUES (3, 'Copropiedad');
INSERT INTO Tipo_Propietario (id, nombre) VALUES (7, 'Asociación');
INSERT INTO Tipo_Propietario (id, nombre) VALUES (8, 'Fundación');

-- Inserciones para tabla Inscripcion_Finca
INSERT INTO Inscripcion_Finca (no_finca, id_municipio, id_naturaleza, no_folio, no_libro, area, nombre, tipo_finca, edificacion, direccion, fecha_emision, fecha_modificacion) VALUES (1001, 1, 1, 45, 327, 250, 'Residencial Los Pinos', 'Urbana', 'Casa de 2 niveles', '8va Avenida 15-63 zona 10', TO_DATE('2021-05-12', 'YYYY-MM-DD'), TO_DATE('2023-08-15', 'YYYY-MM-DD'));
INSERT INTO Inscripcion_Finca (no_finca, id_municipio, id_naturaleza, no_folio, no_libro, area, nombre, tipo_finca, edificacion, direccion, fecha_emision, fecha_modificacion) VALUES (1002, 2, 5, 78, 342, 180, 'Local Comercial Plaza Mayor', 'Comercial', 'Local de 1 nivel', 'Boulevard El Naranjo 15-89 zona 4', TO_DATE('2020-11-23', 'YYYY-MM-DD'), TO_DATE('2022-06-30', 'YYYY-MM-DD'));
INSERT INTO Inscripcion_Finca (no_finca, id_municipio, id_naturaleza, no_folio, no_libro, area, nombre, tipo_finca, edificacion, direccion, fecha_emision, fecha_modificacion) VALUES (1003, 3, 6, 112, 356, 450, 'Edificio Aurora', 'Mixta', 'Edificio de 4 niveles', 'Calzada San Juan 7-45 zona 3', TO_DATE('2019-08-17', 'YYYY-MM-DD'), TO_DATE('2023-02-10', 'YYYY-MM-DD'));
INSERT INTO Inscripcion_Finca (no_finca, id_municipio, id_naturaleza, no_folio, no_libro, area, nombre, tipo_finca, edificacion, direccion, fecha_emision, fecha_modificacion) VALUES (1004, 10, 1, 23, 289, 320, 'Casa Quetzalteca', 'Urbana', 'Casa de 3 niveles', '14 Avenida 8-25 zona 1', TO_DATE('2020-03-15', 'YYYY-MM-DD'), TO_DATE('2022-11-05', 'YYYY-MM-DD'));
INSERT INTO Inscripcion_Finca (no_finca, id_municipio, id_naturaleza, no_folio, no_libro, area, nombre, tipo_finca, edificacion, direccion, fecha_emision, fecha_modificacion) VALUES (1005, 11, 3, 56, 301, 5200, 'Finca El Horizonte', 'Rústica', 'Casa de campo y bodega', 'Aldea San José, km 5 Carretera a Salcajá', TO_DATE('2021-01-30', 'YYYY-MM-DD'), TO_DATE('2023-04-12', 'YYYY-MM-DD'));
INSERT INTO Inscripcion_Finca (no_finca, id_municipio, id_naturaleza, no_folio, no_libro, area, nombre, tipo_finca, edificacion, direccion, fecha_emision, fecha_modificacion) VALUES (1006, 12, 4, 87, 315, 1800, 'Planta Industrial Occidente', 'Industrial', 'Complejo industrial de 2 niveles', 'Kilometro 8.5 Carretera a Olintepeque', TO_DATE('2018-09-11', 'YYYY-MM-DD'), TO_DATE('2022-08-22', 'YYYY-MM-DD'));
INSERT INTO Inscripcion_Finca (no_finca, id_municipio, id_naturaleza, no_folio, no_libro, area, nombre, tipo_finca, edificacion, direccion, fecha_emision, fecha_modificacion) VALUES (1007, 13, 5, 34, 276, 120, 'Tienda El Buen Precio', 'Comercial', 'Local comercial', '5ta Calle 9-23 zona 1', TO_DATE('2019-11-07', 'YYYY-MM-DD'), TO_DATE('2021-12-19', 'YYYY-MM-DD'));
INSERT INTO Inscripcion_Finca (no_finca, id_municipio, id_naturaleza, no_folio, no_libro, area, nombre, tipo_finca, edificacion, direccion, fecha_emision, fecha_modificacion) VALUES (1008, 14, 2, 78, 322, 7500, 'Finca La Bendición', 'Rural', 'Casa principal y bodegas', 'Aldea Chamac, San Pedro Sacatepéquez', TO_DATE('2017-06-14', 'YYYY-MM-DD'), TO_DATE('2023-01-08', 'YYYY-MM-DD'));
INSERT INTO Inscripcion_Finca (no_finca, id_municipio, id_naturaleza, no_folio, no_libro, area, nombre, tipo_finca, edificacion, direccion, fecha_emision, fecha_modificacion) VALUES (1009, 15, 1, 93, 345, 175, 'Residencial El Pinar', 'Urbana', 'Casa de 1 nivel', 'Calle Principal 3-87, Esquipulas Palo Gordo', TO_DATE('2022-02-28', 'YYYY-MM-DD'), TO_DATE('2023-07-14', 'YYYY-MM-DD'));
INSERT INTO Inscripcion_Finca (no_finca, id_municipio, id_naturaleza, no_folio, no_libro, area, nombre, tipo_finca, edificacion, direccion, fecha_emision, fecha_modificacion) VALUES (1010, 7, 1, 45, 288, 195, 'Casa Colonial Antigua', 'Urbana', 'Casa colonial restaurada', '5ta Avenida Norte 12, Antigua Guatemala', TO_DATE('2020-07-18', 'YYYY-MM-DD'), TO_DATE('2022-05-23', 'YYYY-MM-DD'));
INSERT INTO Inscripcion_Finca (no_finca, id_municipio, id_naturaleza, no_folio, no_libro, area, nombre, tipo_finca, edificacion, direccion, fecha_emision, fecha_modificacion) VALUES (1011, 8, 6, 76, 310, 425, 'Centro Comercial Los Arcos', 'Mixta', 'Edificio colonial de 2 niveles', 'Calle del Arco 8-12, Jocotenango', TO_DATE('2018-12-05', 'YYYY-MM-DD'), TO_DATE('2021-11-30', 'YYYY-MM-DD'));
INSERT INTO Inscripcion_Finca (no_finca, id_municipio, id_naturaleza, no_folio, no_libro, area, nombre, tipo_finca, edificacion, direccion, fecha_emision, fecha_modificacion) VALUES (1012, 4, 2, 34, 267, 12500, 'Hacienda El Motagua', 'Rural', 'Casa patronal y áreas de cultivo', 'Km 78 Carretera al Atlántico, Guastatoya', TO_DATE('2016-09-22', 'YYYY-MM-DD'), TO_DATE('2022-03-15', 'YYYY-MM-DD'));
INSERT INTO Inscripcion_Finca (no_finca, id_municipio, id_naturaleza, no_folio, no_libro, area, nombre, tipo_finca, edificacion, direccion, fecha_emision, fecha_modificacion) VALUES (1013, 5, 3, 61, 290, 8750, 'Finca Ganadera San Miguel', 'Rústica', 'Casa, establos y potreros', 'Aldea San Miguel, Morazán', TO_DATE('2019-04-10', 'YYYY-MM-DD'), TO_DATE('2023-05-18', 'YYYY-MM-DD'));
INSERT INTO Inscripcion_Finca (no_finca, id_municipio, id_naturaleza, no_folio, no_libro, area, nombre, tipo_finca, edificacion, direccion, fecha_emision, fecha_modificacion) VALUES (1014, 6, 1, 83, 335, 150, 'Condominio Vista Hermosa', 'Urbana', 'Casa de 2 niveles en condominio', 'Residenciales Monte María, sector 3, casa 17', TO_DATE('2021-08-19', 'YYYY-MM-DD'), TO_DATE('2022-10-25', 'YYYY-MM-DD'));
INSERT INTO Inscripcion_Finca (no_finca, id_municipio, id_naturaleza, no_folio, no_libro, area, nombre, tipo_finca, edificacion, direccion, fecha_emision, fecha_modificacion) VALUES (1015, 9, 5, 98, 348, 95, 'Plaza Comercial El Bosque', 'Comercial', 'Local comercial', 'Centro Comercial El Bosque, local 12-B', TO_DATE('2020-05-12', 'YYYY-MM-DD'), TO_DATE('2023-06-07', 'YYYY-MM-DD'));

-- Inserciones para tabla Representante
INSERT INTO Representante (id, id_municipio, colegiado, cui, nombres, apellidos, telefono, direccion) VALUES (1, 1, 123456789, 1234567890123, 'Carlos Alberto', 'Méndez Rodríguez', 55123456, 'Avenida Reforma 15-23, zona 10, Guatemala');
INSERT INTO Representante (id, id_municipio, colegiado, cui, nombres, apellidos, telefono, direccion) VALUES (2, 7, 234567891, 2345678901234, 'Luisa Fernanda', 'Morales Castillo', 42789123, 'Calle del Arco 8-42, Antigua Guatemala');
INSERT INTO Representante (id, id_municipio, colegiado, cui, nombres, apellidos, telefono, direccion) VALUES (3, 10, 345678912, 3456789012345, 'Juan Pablo', 'García López', 59876543, '12 Avenida 7-25, zona 3, Quetzaltenango');
INSERT INTO Representante (id, id_municipio, colegiado, cui, nombres, apellidos, telefono, direccion) VALUES (4, 3, 456789123, 4567890123456, 'María José', 'Hernández Pérez', 47654321, 'Calzada Roosevelt 12-85, zona 2, Villa Nueva');
INSERT INTO Representante (id, id_municipio, colegiado, cui, nombres, apellidos, telefono, direccion) VALUES (5, 13, 567891234, 5678901234567, 'Roberto Antonio', 'Cifuentes Paz', 45692378, '4ta Calle 5-23, zona 1, San Marcos');

-- Inserciones para tabla Servidumbre
INSERT INTO Servidumbre (id, no_finca, id_tipo_servidumbre, descripcion, fecha_inicio, fecha_final, dominante, estado) VALUES (1, 1001, 1, 'Servidumbre de paso para acceso a calle principal', TO_DATE('2022-01-15', 'YYYY-MM-DD'), TO_DATE('2042-01-15', 'YYYY-MM-DD'), 'D', 'ACTIVO');
INSERT INTO Servidumbre (id, no_finca, id_tipo_servidumbre, descripcion, fecha_inicio, fecha_final, dominante, estado) VALUES (2, 1002, 1, 'Servidumbre de paso para acceso a calle principal', TO_DATE('2022-01-15', 'YYYY-MM-DD'), TO_DATE('2042-01-15', 'YYYY-MM-DD'), 'S', 'ACTIVO');
INSERT INTO Servidumbre (id, no_finca, id_tipo_servidumbre, descripcion, fecha_inicio, fecha_final, dominante, estado) VALUES (3, 1003, 1, 'Servidumbre de paso para acceso a calle principal', TO_DATE('2022-01-15', 'YYYY-MM-DD'), TO_DATE('2042-01-15', 'YYYY-MM-DD'), 'S', 'ACTIVO');

-- Inserciones para tabla Finca_Involucrado
INSERT INTO Finca_Involucrado (id, id_servidumbre, no_finca) VALUES (1, 1, 1001);
INSERT INTO Finca_Involucrado (id, id_servidumbre, no_finca) VALUES (2, 1, 1002);
INSERT INTO Finca_Involucrado (id, id_servidumbre, no_finca) VALUES (3, 1, 1003);
INSERT INTO Finca_Involucrado (id, id_servidumbre, no_finca) VALUES (4, 2, 1001);
INSERT INTO Finca_Involucrado (id, id_servidumbre, no_finca) VALUES (5, 2, 1002);
INSERT INTO Finca_Involucrado (id, id_servidumbre, no_finca) VALUES (6, 2, 1003);
INSERT INTO Finca_Involucrado (id, id_servidumbre, no_finca) VALUES (7, 3, 1001);
INSERT INTO Finca_Involucrado (id, id_servidumbre, no_finca) VALUES (8, 3, 1002);
INSERT INTO Finca_Involucrado (id, id_servidumbre, no_finca) VALUES (9, 3, 1003);

-- Propietarios - Cada propietario en su propio INSERT
INSERT INTO Propietario (id, no_finca, id_tipo_propietario, fecha_registro) VALUES (1, 1001, 1, TO_DATE('2025-01-01', 'YYYY-MM-DD'));
INSERT INTO Propietario (id, no_finca, id_tipo_propietario, fecha_registro) VALUES (2, 1002, 1, TO_DATE('2025-01-05', 'YYYY-MM-DD'));
INSERT INTO Propietario (id, no_finca, id_tipo_propietario, fecha_registro) VALUES (3, 1003, 1, TO_DATE('2025-01-09', 'YYYY-MM-DD'));
INSERT INTO Propietario (id, no_finca, id_tipo_propietario, fecha_registro) VALUES (4, 1004, 3, TO_DATE('2025-01-12', 'YYYY-MM-DD'));
INSERT INTO Propietario (id, no_finca, id_tipo_propietario, fecha_registro) VALUES (5, 1005, 7, TO_DATE('2025-02-05', 'YYYY-MM-DD'));
INSERT INTO Propietario (id, no_finca, id_tipo_propietario, fecha_registro) VALUES (6, 1006, 8, TO_DATE('2025-02-19', 'YYYY-MM-DD'));
INSERT INTO Propietario (id, no_finca, id_tipo_propietario, fecha_registro) VALUES (7, 1007, 1, TO_DATE('2025-02-25', 'YYYY-MM-DD'));
INSERT INTO Propietario (id, no_finca, id_tipo_propietario, fecha_registro) VALUES (8, 1008, 3, TO_DATE('2025-02-28', 'YYYY-MM-DD'));
INSERT INTO Propietario (id, no_finca, id_tipo_propietario, fecha_registro) VALUES (9, 1009, 1, TO_DATE('2025-03-01', 'YYYY-MM-DD'));
INSERT INTO Propietario (id, no_finca, id_tipo_propietario, fecha_registro) VALUES (10, 1010, 7, TO_DATE('2025-03-02', 'YYYY-MM-DD'));
INSERT INTO Propietario (id, no_finca, id_tipo_propietario, fecha_registro) VALUES (11, 1011, 8, TO_DATE('2025-03-03', 'YYYY-MM-DD'));
INSERT INTO Propietario (id, no_finca, id_tipo_propietario, fecha_registro) VALUES (12, 1012, 3, TO_DATE('2025-03-04', 'YYYY-MM-DD'));
INSERT INTO Propietario (id, no_finca, id_tipo_propietario, fecha_registro) VALUES (13, 1013, 1, TO_DATE('2025-03-05', 'YYYY-MM-DD'));
INSERT INTO Propietario (id, no_finca, id_tipo_propietario, fecha_registro) VALUES (14, 1014, 1, TO_DATE('2025-03-06', 'YYYY-MM-DD'));
INSERT INTO Propietario (id, no_finca, id_tipo_propietario, fecha_registro) VALUES (15, 1015, 3, TO_DATE('2025-03-07', 'YYYY-MM-DD'));
INSERT INTO Propietario (id, no_finca, id_tipo_propietario, fecha_registro) VALUES (16, 1003, 1, TO_DATE('2025-03-10', 'YYYY-MM-DD'));
INSERT INTO Propietario (id, no_finca, id_tipo_propietario, fecha_registro) VALUES (17, 1003, 3, TO_DATE('2025-03-12', 'YYYY-MM-DD'));
INSERT INTO Propietario (id, no_finca, id_tipo_propietario, fecha_registro) VALUES (18, 1005, 1, TO_DATE('2025-03-15', 'YYYY-MM-DD'));
INSERT INTO Propietario (id, no_finca, id_tipo_propietario, fecha_registro) VALUES (19, 1012, 7, TO_DATE('2025-03-18', 'YYYY-MM-DD'));

-- Personas - Cada persona en su propio INSERT
INSERT INTO Persona (id, id_propietario, nombres, apellidos, cui, nit, telefono, correo, direccion, fecha_nacimiento, porcentaje) VALUES (1, 1, 'Carlos', 'Pérez López', 1234567890123, 123456789, 55551234, 'carlos.perez@email.com', '8va Avenida 15-63 zona 10', TO_DATE('1985-06-15', 'YYYY-MM-DD'), 100);
INSERT INTO Persona (id, id_propietario, nombres, apellidos, cui, nit, telefono, correo, direccion, fecha_nacimiento, porcentaje) VALUES (2, 3, 'María', 'Gómez Ramírez', 2345678901234, 234567890, 55556789, 'maria.gomez@email.com', 'Boulevard El Naranjo 15-89 zona 4', TO_DATE('1990-09-22', 'YYYY-MM-DD'), 100);
INSERT INTO Persona (id, id_propietario, nombres, apellidos, cui, nit, telefono, correo, direccion, fecha_nacimiento, porcentaje) VALUES (3, 16, 'Jorge', 'López García', 3456789012345, 345678901, 55557890, 'jorge.lopez@email.com', 'Calzada San Juan 7-45 zona 3', TO_DATE('1978-12-05', 'YYYY-MM-DD'), 40);
INSERT INTO Persona (id, id_propietario, nombres, apellidos, cui, nit, telefono, correo, direccion, fecha_nacimiento, porcentaje) VALUES (4, 16, 'Ana', 'Rodríguez Castillo', 4567890123456, 456789012, 55558901, 'ana.rodriguez@email.com', 'Calzada San Juan 7-45 zona 3', TO_DATE('1982-03-17', 'YYYY-MM-DD'), 30);
INSERT INTO Persona (id, id_propietario, nombres, apellidos, cui, nit, telefono, correo, direccion, fecha_nacimiento, porcentaje) VALUES (5, 16, 'Luis', 'Martínez Herrera', 5678901234567, 567890123, 55559012, 'luis.martinez@email.com', 'Calzada San Juan 7-45 zona 3', TO_DATE('1975-07-29', 'YYYY-MM-DD'), 20);
INSERT INTO Persona (id, id_propietario, nombres, apellidos, cui, nit, telefono, correo, direccion, fecha_nacimiento, porcentaje) VALUES (6, 16, 'Elena', 'Sánchez Díaz', 6789012345678, 678901234, 55550123, 'elena.sanchez@email.com', 'Calzada San Juan 7-45 zona 3', TO_DATE('1988-11-11', 'YYYY-MM-DD'), 10);
INSERT INTO Persona (id, id_propietario, nombres, apellidos, cui, nit, telefono, correo, direccion, fecha_nacimiento, porcentaje) VALUES (7, 17, 'Ricardo', 'Hernández Fuentes', 7890123456789, 789012345, 55551245, 'ricardo.hernandez@email.com', 'Aldea San José, km 5 Carretera a Salcajá', TO_DATE('1992-04-30', 'YYYY-MM-DD'), 50);
INSERT INTO Persona (id, id_propietario, nombres, apellidos, cui, nit, telefono, correo, direccion, fecha_nacimiento, porcentaje) VALUES (8, 17, 'Patricia', 'Cruz Mendez', 8901234567890, 890123456, 55552345, 'patricia.cruz@email.com', 'Aldea San José, km 5 Carretera a Salcajá', TO_DATE('1980-08-19', 'YYYY-MM-DD'), 30);
INSERT INTO Persona (id, id_propietario, nombres, apellidos, cui, nit, telefono, correo, direccion, fecha_nacimiento, porcentaje) VALUES (9, 17, 'Fernando', 'Ortiz Molina', 9012345678901, 901234567, 55553456, 'fernando.ortiz@email.com', 'Aldea San José, km 5 Carretera a Salcajá', TO_DATE('1985-10-25', 'YYYY-MM-DD'), 20);
INSERT INTO Persona (id, id_propietario, nombres, apellidos, cui, nit, telefono, correo, direccion, fecha_nacimiento, porcentaje) VALUES (10, 5, 'Gabriela', 'Navarro Ruiz', 1234509876543, 654321987, 55554567, 'gabriela.navarro@email.com', 'Km 78 Carretera al Atlántico, Guastatoya', TO_DATE('1994-01-08', 'YYYY-MM-DD'), 100);

-- Acciones - Cada acción en su propio INSERT
INSERT INTO Accion (id, no_finca, id_tipo_accion, id_representante, fecha_inicio_proceso, fecha_finalizacion_proceso, estado) VALUES (1, 1002, 2, 1, TO_DATE('2023-01-15', 'YYYY-MM-DD'), TO_DATE('2023-06-20', 'YYYY-MM-DD'), 'Finalizado');
INSERT INTO Accion (id, no_finca, id_tipo_accion, id_representante, fecha_inicio_proceso, fecha_finalizacion_proceso, estado) VALUES (2, 1006, 2, 2, TO_DATE('2022-05-10', 'YYYY-MM-DD'), TO_DATE('2022-11-30', 'YYYY-MM-DD'), 'Finalizado');
INSERT INTO Accion (id, no_finca, id_tipo_accion, id_representante, fecha_inicio_proceso, fecha_finalizacion_proceso, estado) VALUES (3, 1009, 2, 3, TO_DATE('2024-02-01', 'YYYY-MM-DD'), NULL, 'En proceso');
INSERT INTO Accion (id, no_finca, id_tipo_accion, id_representante, fecha_inicio_proceso, fecha_finalizacion_proceso, estado) VALUES (4, 1003, 4, 4, TO_DATE('2025-03-10', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 'Finalizado');
INSERT INTO Accion (id, no_finca, id_tipo_accion, id_representante, fecha_inicio_proceso, fecha_finalizacion_proceso, estado) VALUES (5, 1003, 4, 4, TO_DATE('2025-03-12', 'YYYY-MM-DD'), NULL, 'En proceso');

-- Pagos - Cada pago en su propio INSERT
INSERT INTO Pago (id, id_moneda, precio, tasa_cambio, forma_pago, estado) VALUES (1, 1, 50000, 7, 'Transferencia bancaria', 'A');
INSERT INTO Pago (id, id_moneda, precio, tasa_cambio, forma_pago, estado) VALUES (2, 2, 300000, 8, 'Cheque', 'A');

-- Compraventas - Cada compraventa en su propio INSERT
INSERT INTO Compraventa (id, id_acciones, id_pago, cui, nombres, apellidos, observaciones) VALUES (1, 4, 1, 1234567890123, 'Carlos', 'Pérez López', 'Compra de finca 1007 con pago a través de transferencia bancaria');
INSERT INTO Compraventa (id, id_acciones, id_pago, cui, nombres, apellidos, observaciones) VALUES (2, 5, 2, 2345678901234, 'Ana', 'Rodríguez Castillo', 'Compra de finca 1010 mediante pago con cheque');

-- Desmembraciones - Cada desmembración en su propio INSERT
INSERT INTO Desmembracion (id, id_acciones, no_finca_nueva, no_finca_matriz, observaciones) VALUES (1, 1, 1002, 1011, 'Desmembramiento realizado para crear una nueva finca a partir de la finca matriz 1001');
INSERT INTO Desmembracion (id, id_acciones, no_finca_nueva, no_finca_matriz, observaciones) VALUES (2, 2, 1007, 1007, 'Desmembramiento de finca 1007 para crear la nueva finca 1012');
INSERT INTO Desmembracion (id, id_acciones, no_finca_nueva, no_finca_matriz, observaciones) VALUES (3, 3, 1009, 1013, 'Desmembramiento de finca 1010 para la creación de la finca nueva 1006');

-- Limitaciones - Cada limitación en su propio INSERT
INSERT INTO Limitacion (id, no_finca, id_tipo_limitacion, id_representante, fecha_inicio, fecha_final, estado) VALUES (1, 1004, 1, 2, TO_DATE('2023-02-15', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 'Activo');
INSERT INTO Limitacion (id, no_finca, id_tipo_limitacion, id_representante, fecha_inicio, fecha_final, estado) VALUES (2, 1010, 4, 3, TO_DATE('2023-01-10', 'YYYY-MM-DD'), TO_DATE('2024-01-10', 'YYYY-MM-DD'), 'Activo');
INSERT INTO Limitacion (id, no_finca, id_tipo_limitacion, id_representante, fecha_inicio, fecha_final, estado) VALUES (3, 1007, 1, 5, TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-11-01', 'YYYY-MM-DD'), 'Activo');
INSERT INTO Limitacion (id, no_finca, id_tipo_limitacion, id_representante, fecha_inicio, fecha_final, estado) VALUES (4, 1005, 4, 1, TO_DATE('2022-08-05', 'YYYY-MM-DD'), TO_DATE('2023-08-05', 'YYYY-MM-DD'), 'Activo');
INSERT INTO Limitacion (id, no_finca, id_tipo_limitacion, id_representante, fecha_inicio, fecha_final, estado) VALUES (5, 1003, 1, 4, TO_DATE('2022-10-12', 'YYYY-MM-DD'), TO_DATE('2023-10-12', 'YYYY-MM-DD'), 'Activo');

-- Hipotecas - Cada hipoteca en su propio INSERT
INSERT INTO Hipoteca (id, id_limitaciones, orden, tipo_credito, importe, plaza) VALUES (1, 1, 'Hipoteca para finca 1004', 'Crédito hipotecario convencional', 'Q 500,000.00', TO_DATE('2023-12-15', 'YYYY-MM-DD'));
INSERT INTO Hipoteca (id, id_limitaciones, orden, tipo_credito, importe, plaza) VALUES (2, 3, 'Hipoteca para finca 1007', 'Crédito hipotecario a tasa fija', 'Q 250,000.00', TO_DATE('2023-11-01', 'YYYY-MM-DD'));
INSERT INTO Hipoteca (id, id_limitaciones, orden, tipo_credito, importe, plaza) VALUES (3, 5, 'Hipoteca para finca 1003', 'Crédito hipotecario por descuento de nómina', 'Q 600,000.00', TO_DATE('2023-10-12', 'YYYY-MM-DD'));

-- Anotaciones - Cada anotación en su propio INSERT
INSERT INTO Anotaciones (id, id_limitaciones, tipo_proceso, motivo) VALUES (1, 2, 'Proceso Judicial 1', 'Se realiza la anotación debido a un proceso de regularización para la finca 1004, con el fin de legalizar la hipoteca asociada.');
INSERT INTO Anotaciones (id, id_limitaciones, tipo_proceso, motivo) VALUES (2, 4, 'Proceso Judicial 2', 'Se agrega una anotación para limitar el uso de la finca 1007 en ciertas actividades comerciales debido a la zona de preservación ecológica.');