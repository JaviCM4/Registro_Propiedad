INSERT INTO Departamento (id, nombre, codigo_postal) VALUES 
(1, 'Guatemala', 01001),
(2, 'El Progreso', 02001),
(3, 'Sacatepéquez', 03001),
(4, 'Chimaltenango', 04001),
(5, 'Escuintla', 05001),
(6, 'Santa Rosa', 06001),
(7, 'Sololá', 07001),
(8, 'Totonicapán', 08001),
(9, 'Quetzaltenango', 09001),
(10, 'Suchitepéquez', 10001),
(11, 'Retalhuleu', 11001),
(12, 'San Marcos', 12001),
(13, 'Huehuetenango', 13001),
(14, 'Quiché', 14001),
(15, 'Baja Verapaz', 15001),
(16, 'Alta Verapaz', 16001),
(17, 'Petén', 17001),
(18, 'Izabal', 18001),
(19, 'Zacapa', 19001),
(20, 'Chiquimula', 20001),
(21, 'Jalapa', 21001),
(22, 'Jutiapa', 22001);


INSERT INTO Municipio (id, id_departamento, nombre, codigo_postal) VALUES 
(1, 1, 'Guatemala', 01001),
(2, 1, 'Mixco', 01057),
(3, 1, 'Villa Nueva', 01064),
(4, 2, 'Guastatoya', 02001),
(5, 2, 'Morazán', 02011),
(6, 2, 'San Agustín Acasaguastlán', 02013),
(7, 3, 'Antigua Guatemala', 03001),
(8, 3, 'Jocotenango', 03009),
(9, 3, 'Ciudad Vieja', 03005),
(10, 9, 'Quetzaltenango', 09001),
(11, 9, 'Salcajá', 09003),
(12, 9, 'Olintepeque', 09011),
(13, 12, 'San Marcos', 12001),
(14, 12, 'San Pedro Sacatepéquez', 12008),
(15, 12, 'Esquipulas Palo Gordo', 12026);


INSERT INTO Naturaleza (id, nombre, descripcion) VALUES 
(1, 'Urbana', 'Propiedad ubicada dentro del límite urbano municipal'),
(2, 'Rural', 'Propiedad ubicada fuera del límite urbano municipal'),
(3, 'Rústica', 'Propiedad destinada a usos agrícolas o ganaderos'),
(4, 'Industrial', 'Propiedad destinada a uso industrial'),
(5, 'Comercial', 'Propiedad destinada a uso comercial'),
(6, 'Mixta', 'Propiedad con múltiples usos (comercial/residencial)');


INSERT INTO Orientacion (id, nombre) VALUES 
(1, 'Norte'),
(2, 'Noreste'),
(3, 'Este'),
(4, 'Sureste'),
(5, 'Sur'),
(6, 'Suroeste'),
(7, 'Oeste'),
(8, 'Noroeste');


INSERT INTO Tipo_Servidumbre (id, nombre) VALUES 
(1, 'Paso'),
(2, 'Acueducto'),
(3, 'Energía Eléctrica'),
(4, 'Vista'),
(5, 'Desagüe'),
(6, 'Medianería'),
(7, 'Luces y Vistas'),
(8, 'Telecomunicaciones');


INSERT INTO Tipo_Accion (id, nombre) VALUES 
(1, 'Duplicado'),
(2, 'Desmembración'),
(3, 'Unificación'),
(4, 'Compraventa'),
(5, 'Donación'),
(6, 'Permuta'),
(7, 'Sucesión Hereditaria'),
(8, 'Sucesión Intestada'),
(9, 'Adjudicación'),
(10, 'Registro Inicial');


INSERT INTO Tipo_Limitacion (id, nombre) VALUES 
(1, 'Hipoteca'),
(2, 'Embargo'),
(3, 'Usufructo'),
(4, 'Anotación');

INSERT INTO Moneda (id, pais, nombre_moneda, cambio_promedio) VALUES 
(1, 'Guatemala', 'Quetzal', 1),
(2, 'Estados Unidos', 'Dólar', 7.85),
(3, 'Unión Europea', 'Euro', 8.48),
(4, 'México', 'Peso Mexicano', 0.45),
(5, 'Reino Unido', 'Libra Esterlina', 9.94);


INSERT INTO Nivel_Familiar (id, nombre, prioridad) VALUES 
(1, 'Descendientes', 1),
(2, 'Ascendientes', 2),
(3, 'Cónyuge', 3),
(4, 'Hermanos', 4),
(5, 'Sobrinos', 5),
(6, 'Tíos', 6),
(7, 'Estado', 7);


INSERT INTO Tipo_Propietario (id, nombre) VALUES 
(1, 'Persona Individual'),
(3, 'Copropiedad'),
(7, 'Asociación'),
(8, 'Fundación');


INSERT INTO Inscripcion_Finca (no_finca, id_municipio, id_naturaleza, no_folio, no_libro, area, nombre, tipo_finca, edificacion, direccion, fecha_emision, fecha_modificacion) VALUES
(1001, 1, 1, 45, 327, 250.75, 'Residencial Los Pinos', 'Urbana', 'Casa de 2 niveles', '8va Avenida 15-63 zona 10', TO_DATE('2021-05-12', 'YYYY-MM-DD'), TO_DATE('2023-08-15', 'YYYY-MM-DD')),
(1002, 2, 5, 78, 342, 180.50, 'Local Comercial Plaza Mayor', 'Comercial', 'Local de 1 nivel', 'Boulevard El Naranjo 15-89 zona 4', TO_DATE('2020-11-23', 'YYYY-MM-DD'), TO_DATE('2022-06-30', 'YYYY-MM-DD')),
(1003, 3, 6, 112, 356, 450.25, 'Edificio Aurora', 'Mixta', 'Edificio de 4 niveles', 'Calzada San Juan 7-45 zona 3', TO_DATE('2019-08-17', 'YYYY-MM-DD'), TO_DATE('2023-02-10', 'YYYY-MM-DD')),
(1004, 10, 1, 23, 289, 320.80, 'Casa Quetzalteca', 'Urbana', 'Casa de 3 niveles', '14 Avenida 8-25 zona 1', TO_DATE('2020-03-15', 'YYYY-MM-DD'), TO_DATE('2022-11-05', 'YYYY-MM-DD')),
(1005, 11, 3, 56, 301, 5200.00, 'Finca El Horizonte', 'Rústica', 'Casa de campo y bodega', 'Aldea San José, km 5 Carretera a Salcajá', TO_DATE('2021-01-30', 'YYYY-MM-DD'), TO_DATE('2023-04-12', 'YYYY-MM-DD')),
(1006, 12, 4, 87, 315, 1800.50, 'Planta Industrial Occidente', 'Industrial', 'Complejo industrial de 2 niveles', 'Kilometro 8.5 Carretera a Olintepeque', TO_DATE('2018-09-11', 'YYYY-MM-DD'), TO_DATE('2022-08-22', 'YYYY-MM-DD')),
(1007, 13, 5, 34, 276, 120.25, 'Tienda El Buen Precio', 'Comercial', 'Local comercial', '5ta Calle 9-23 zona 1', TO_DATE('2019-11-07', 'YYYY-MM-DD'), TO_DATE('2021-12-19', 'YYYY-MM-DD')),
(1008, 14, 2, 78, 322, 7500.00, 'Finca La Bendición', 'Rural', 'Casa principal y bodegas', 'Aldea Chamac, San Pedro Sacatepéquez', TO_DATE('2017-06-14', 'YYYY-MM-DD'), TO_DATE('2023-01-08', 'YYYY-MM-DD')),
(1009, 15, 1, 93, 345, 175.30, 'Residencial El Pinar', 'Urbana', 'Casa de 1 nivel', 'Calle Principal 3-87, Esquipulas Palo Gordo', TO_DATE('2022-02-28', 'YYYY-MM-DD'), TO_DATE('2023-07-14', 'YYYY-MM-DD')),
(1010, 7, 1, 45, 288, 195.60, 'Casa Colonial Antigua', 'Urbana', 'Casa colonial restaurada', '5ta Avenida Norte 12, Antigua Guatemala', TO_DATE('2020-07-18', 'YYYY-MM-DD'), TO_DATE('2022-05-23', 'YYYY-MM-DD')),
(1011, 8, 6, 76, 310, 425.00, 'Centro Comercial Los Arcos', 'Mixta', 'Edificio colonial de 2 niveles', 'Calle del Arco 8-12, Jocotenango', TO_DATE('2018-12-05', 'YYYY-MM-DD'), TO_DATE('2021-11-30', 'YYYY-MM-DD')),
(1012, 4, 2, 34, 267, 12500.00, 'Hacienda El Motagua', 'Rural', 'Casa patronal y áreas de cultivo', 'Km 78 Carretera al Atlántico, Guastatoya', TO_DATE('2016-09-22', 'YYYY-MM-DD'), TO_DATE('2022-03-15', 'YYYY-MM-DD')),
(1013, 5, 3, 61, 290, 8750.50, 'Finca Ganadera San Miguel', 'Rústica', 'Casa, establos y potreros', 'Aldea San Miguel, Morazán', TO_DATE('2019-04-10', 'YYYY-MM-DD'), TO_DATE('2023-05-18', 'YYYY-MM-DD')),
(1014, 6, 1, 83, 335, 150.75, 'Condominio Vista Hermosa', 'Urbana', 'Casa de 2 niveles en condominio', 'Residenciales Monte María, sector 3, casa 17', TO_DATE('2021-08-19', 'YYYY-MM-DD'), TO_DATE('2022-10-25', 'YYYY-MM-DD')),
(1015, 9, 5, 98, 348, 95.30, 'Plaza Comercial El Bosque', 'Comercial', 'Local comercial', 'Centro Comercial El Bosque, local 12-B', TO_DATE('2020-05-12', 'YYYY-MM-DD'), TO_DATE('2023-06-07', 'YYYY-MM-DD'));


INSERT INTO Representante (id, id_municipio, colegiado, cui, nombres, apellidos, telefono, direccion) VALUES 
(1, 1, 123456789, 1234567890123, 'Carlos Alberto', 'Méndez Rodríguez', 55123456, 'Avenida Reforma 15-23, zona 10, Guatemala'),
(2, 7, 234567891, 2345678901234, 'Luisa Fernanda', 'Morales Castillo', 42789123, 'Calle del Arco 8-42, Antigua Guatemala'),
(3, 10, 345678912, 3456789012345, 'Juan Pablo', 'García López', 59876543, '12 Avenida 7-25, zona 3, Quetzaltenango'),
(4, 3, 456789123, 4567890123456, 'María José', 'Hernández Pérez', 47654321, 'Calzada Roosevelt 12-85, zona 2, Villa Nueva'),
(5, 13, 567891234, 5678901234567, 'Roberto Antonio', 'Cifuentes Paz', 45692378, '4ta Calle 5-23, zona 1, San Marcos');


INSERT INTO Servidumbre (id, no_finca, id_tipo_servidumbre, descripcion, fecha_inicio, fecha_final, dominante, estado) VALUES 
(1, 1001, 1, 'Servidumbre de paso para acceso a calle principal', TO_DATE('2022-01-15', 'YYYY-MM-DD'), TO_DATE('2042-01-15', 'YYYY-MM-DD'), 'D', 'ACTIVO'),
(2, 1002, 1, 'Servidumbre de paso para acceso a calle principal', TO_DATE('2022-01-15', 'YYYY-MM-DD'), TO_DATE('2042-01-15', 'YYYY-MM-DD'), 'S', 'ACTIVO'),
(3, 1003, 1, 'Servidumbre de paso para acceso a calle principal', TO_DATE('2022-01-15', 'YYYY-MM-DD'), TO_DATE('2042-01-15', 'YYYY-MM-DD'), 'S', 'ACTIVO');


INSERT INTO Finca_Involucrado (id, id_servidumbre, no_finca) VALUES 
(1, 1, 1001),
(2, 1, 1002),
(3, 1, 1003),
(4, 2, 1001),
(5, 2, 1002),
(6, 2, 1003),
(7, 3, 1001),
(8, 3, 1002),
(9, 3, 1003);


INSERT INTO Coordenada (id, no_finca, latitud, longitud, fecha_registro) VALUES 
(1, 1001, 14634, -90506, TO_DATE('2021-05-12', 'YYYY-MM-DD')),
(2, 1001, 14635, -90505, TO_DATE('2021-05-12', 'YYYY-MM-DD')),
(3, 1001, 14636, -90507, TO_DATE('2021-05-12', 'YYYY-MM-DD')),
(4, 1001, 14635, -90508, TO_DATE('2021-05-12', 'YYYY-MM-DD')),
(5, 1001, 14637, -90509, TO_DATE('2021-05-12', 'YYYY-MM-DD')),
(6, 1002, 14637, -90510, TO_DATE('2020-11-23', 'YYYY-MM-DD')),
(7, 1002, 14638, -90509, TO_DATE('2020-11-23', 'YYYY-MM-DD')),
(8, 1002, 14639, -90511, TO_DATE('2020-11-23', 'YYYY-MM-DD')),
(9, 1002, 14638, -90512, TO_DATE('2020-11-23', 'YYYY-MM-DD')),
(10, 1003, 14632, -90515, TO_DATE('2019-08-17', 'YYYY-MM-DD')),
(11, 1003, 14633, -90514, TO_DATE('2019-08-17', 'YYYY-MM-DD')),
(12, 1003, 14634, -90516, TO_DATE('2019-08-17', 'YYYY-MM-DD')),
(13, 1003, 14633, -90517, TO_DATE('2019-08-17', 'YYYY-MM-DD')),
(14, 1003, 14635, -90518, TO_DATE('2019-08-17', 'YYYY-MM-DD')),
(15, 1004, 14645, -90520, TO_DATE('2020-03-15', 'YYYY-MM-DD')),
(16, 1004, 14646, -90519, TO_DATE('2020-03-15', 'YYYY-MM-DD')),
(17, 1004, 14647, -90521, TO_DATE('2020-03-15', 'YYYY-MM-DD')),
(18, 1004, 14646, -90522, TO_DATE('2020-03-15', 'YYYY-MM-DD')),
(19, 1005, 14650, -90530, TO_DATE('2021-01-30', 'YYYY-MM-DD')),
(20, 1005, 14651, -90529, TO_DATE('2021-01-30', 'YYYY-MM-DD')),
(21, 1005, 14652, -90531, TO_DATE('2021-01-30', 'YYYY-MM-DD')),
(22, 1005, 14651, -90532, TO_DATE('2021-01-30', 'YYYY-MM-DD')),
(23, 1005, 14653, -90533, TO_DATE('2021-01-30', 'YYYY-MM-DD')),
(24, 1006, 14655, -90540, TO_DATE('2018-09-11', 'YYYY-MM-DD')),
(25, 1006, 14656, -90539, TO_DATE('2018-09-11', 'YYYY-MM-DD')),
(26, 1006, 14657, -90541, TO_DATE('2018-09-11', 'YYYY-MM-DD')),
(27, 1006, 14656, -90542, TO_DATE('2018-09-11', 'YYYY-MM-DD')),
(28, 1007, 14660, -90550, TO_DATE('2019-11-07', 'YYYY-MM-DD')),
(29, 1007, 14661, -90549, TO_DATE('2019-11-07', 'YYYY-MM-DD')),
(30, 1007, 14662, -90551, TO_DATE('2019-11-07', 'YYYY-MM-DD')),
(31, 1007, 14661, -90552, TO_DATE('2019-11-07', 'YYYY-MM-DD')),
(32, 1008, 14665, -90560, TO_DATE('2017-06-14', 'YYYY-MM-DD')),
(33, 1008, 14666, -90559, TO_DATE('2017-06-14', 'YYYY-MM-DD')),
(34, 1008, 14667, -90561, TO_DATE('2017-06-14', 'YYYY-MM-DD')),
(35, 1008, 14666, -90562, TO_DATE('2017-06-14', 'YYYY-MM-DD')),
(36, 1009, 14670, -90570, TO_DATE('2022-02-28', 'YYYY-MM-DD')),
(37, 1009, 14671, -90569, TO_DATE('2022-02-28', 'YYYY-MM-DD')),
(38, 1009, 14672, -90571, TO_DATE('2022-02-28', 'YYYY-MM-DD')),
(39, 1009, 14671, -90572, TO_DATE('2022-02-28', 'YYYY-MM-DD')),
(40, 1010, 14675, -90580, TO_DATE('2020-07-18', 'YYYY-MM-DD')),
(41, 1010, 14676, -90579, TO_DATE('2020-07-18', 'YYYY-MM-DD')),
(42, 1010, 14677, -90581, TO_DATE('2020-07-18', 'YYYY-MM-DD')),
(43, 1010, 14676, -90582, TO_DATE('2020-07-18', 'YYYY-MM-DD')),
(44, 1011, 14680, -90590, TO_DATE('2018-12-05', 'YYYY-MM-DD')),
(45, 1011, 14681, -90589, TO_DATE('2018-12-05', 'YYYY-MM-DD')),
(46, 1011, 14682, -90591, TO_DATE('2018-12-05', 'YYYY-MM-DD')),
(47, 1011, 14681, -90592, TO_DATE('2018-12-05', 'YYYY-MM-DD')),
(48, 1012, 14685, -90600, TO_DATE('2016-09-22', 'YYYY-MM-DD')),
(49, 1012, 14686, -90599, TO_DATE('2016-09-22', 'YYYY-MM-DD')),
(50, 1012, 14687, -90601, TO_DATE('2016-09-22', 'YYYY-MM-DD')),
(51, 1012, 14686, -90602, TO_DATE('2016-09-22', 'YYYY-MM-DD')),
(52, 1013, 14690, -90610, TO_DATE('2019-04-10', 'YYYY-MM-DD')),
(53, 1013, 14691, -90609, TO_DATE('2019-04-10', 'YYYY-MM-DD')),
(54, 1013, 14692, -90611, TO_DATE('2019-04-10', 'YYYY-MM-DD')),
(55, 1013, 14691, -90612, TO_DATE('2019-04-10', 'YYYY-MM-DD')),
(56, 1014, 14695, -90620, TO_DATE('2021-08-19', 'YYYY-MM-DD')),
(57, 1014, 14696, -90619, TO_DATE('2021-08-19', 'YYYY-MM-DD')),
(58, 1014, 14697, -90621, TO_DATE('2021-08-19', 'YYYY-MM-DD')),
(59, 1014, 14696, -90622, TO_DATE('2021-08-19', 'YYYY-MM-DD')),
(60, 1015, 14700, -90630, TO_DATE('2020-05-12', 'YYYY-MM-DD')),
(61, 1015, 14701, -90629, TO_DATE('2020-05-12', 'YYYY-MM-DD')),
(62, 1015, 14702, -90631, TO_DATE('2020-05-12', 'YYYY-MM-DD')),
(63, 1015, 14701, -90632, TO_DATE('2020-05-12', 'YYYY-MM-DD'));


-- Insertar propietarios principales (uno por finca)
INSERT INTO Propietario (id, no_finca, id_tipo_propietario, fecha_registro) VALUES 
(1, 1001, 1, TO_DATE('2025-01-01', 'YYYY-MM-DD')),
(2, 1002, 1, TO_DATE('2025-01-05', 'YYYY-MM-DD')),
(3, 1003, 1, TO_DATE('2025-01-09', 'YYYY-MM-DD')),
(4, 1004, 3, TO_DATE('2025-01-12', 'YYYY-MM-DD')),
(5, 1005, 7, TO_DATE('2025-02-05', 'YYYY-MM-DD')),
(6, 1006, 8, TO_DATE('2025-02-19', 'YYYY-MM-DD')),
(7, 1007, 1, TO_DATE('2025-02-25', 'YYYY-MM-DD')),
(8, 1008, 3, TO_DATE('2025-02-28', 'YYYY-MM-DD')),
(9, 1009, 1, TO_DATE('2025-03-01', 'YYYY-MM-DD')),
(10, 1010, 7, TO_DATE('2025-03-02', 'YYYY-MM-DD')),
(11, 1011, 8, TO_DATE('2025-03-03', 'YYYY-MM-DD')),
(12, 1012, 3, TO_DATE('2025-03-04', 'YYYY-MM-DD')),
(13, 1013, 1, TO_DATE('2025-03-05', 'YYYY-MM-DD')),
(14, 1014, 1, TO_DATE('2025-03-06', 'YYYY-MM-DD')),
(15, 1015, 3, TO_DATE('2025-03-07', 'YYYY-MM-DD')),
(16, 1003, 1, TO_DATE('2025-03-10', 'YYYY-MM-DD')),
(17, 1003, 3, TO_DATE('2025-03-12', 'YYYY-MM-DD')),
(18, 1005, 1, TO_DATE('2025-03-15', 'YYYY-MM-DD')),
(19, 1012, 7, TO_DATE('2025-03-18', 'YYYY-MM-DD'));


INSERT INTO Persona (id, id_propietario, nombres, apellidos, cui, nit, telefono, correo, direccion, fecha_nacimiento, porcentaje) VALUES 
(1, 1, 'Carlos', 'Pérez López', 1234567890123, 123456789, 55551234, 'carlos.perez@email.com', '8va Avenida 15-63 zona 10', TO_DATE('1985-06-15', 'YYYY-MM-DD'), 100),
(2, 3, 'María', 'Gómez Ramírez', 2345678901234, 234567890, 55556789, 'maria.gomez@email.com', 'Boulevard El Naranjo 15-89 zona 4', TO_DATE('1990-09-22', 'YYYY-MM-DD'), 100),
(3, 16, 'Jorge', 'López García', 3456789012345, 345678901, 55557890, 'jorge.lopez@email.com', 'Calzada San Juan 7-45 zona 3', TO_DATE('1978-12-05', 'YYYY-MM-DD'), 40),
(4, 16, 'Ana', 'Rodríguez Castillo', 4567890123456, 456789012, 55558901, 'ana.rodriguez@email.com', 'Calzada San Juan 7-45 zona 3', TO_DATE('1982-03-17', 'YYYY-MM-DD'), 30),
(5, 16, 'Luis', 'Martínez Herrera', 5678901234567, 567890123, 55559012, 'luis.martinez@email.com', 'Calzada San Juan 7-45 zona 3', TO_DATE('1975-07-29', 'YYYY-MM-DD'), 20),
(6, 16, 'Elena', 'Sánchez Díaz', 6789012345678, 678901234, 55550123, 'elena.sanchez@email.com', 'Calzada San Juan 7-45 zona 3', TO_DATE('1988-11-11', 'YYYY-MM-DD'), 10),
(7, 17, 'Ricardo', 'Hernández Fuentes', 7890123456789, 789012345, 55551245, 'ricardo.hernandez@email.com', 'Aldea San José, km 5 Carretera a Salcajá', TO_DATE('1992-04-30', 'YYYY-MM-DD'), 50),
(8, 17, 'Patricia', 'Cruz Mendez', 8901234567890, 890123456, 55552345, 'patricia.cruz@email.com', 'Aldea San José, km 5 Carretera a Salcajá', TO_DATE('1980-08-19', 'YYYY-MM-DD'), 30),
(9, 17, 'Fernando', 'Ortiz Molina', 9012345678901, 901234567, 55553456, 'fernando.ortiz@email.com', 'Aldea San José, km 5 Carretera a Salcajá', TO_DATE('1985-10-25', 'YYYY-MM-DD'), 20),
(10, 5, 'Gabriela', 'Navarro Ruiz', 1234509876543, 654321987, 55554567, 'gabriela.navarro@email.com', 'Km 78 Carretera al Atlántico, Guastatoya', TO_DATE('1994-01-08', 'YYYY-MM-DD'), 100);


INSERT INTO Accion (id, no_finca, id_tipo_accion, id_representante, fecha_inicio_proceso, fecha_finalizacion_proceso, estado) VALUES 
(1, 1002, 2, 1, TO_DATE('2023-01-15', 'YYYY-MM-DD'), TO_DATE('2023-06-20', 'YYYY-MM-DD'), 'Finalizado'),
(2, 1006, 2, 2, TO_DATE('2022-05-10', 'YYYY-MM-DD'), TO_DATE('2022-11-30', 'YYYY-MM-DD'), 'Finalizado'),
(3, 1009, 2, 3, TO_DATE('2024-02-01', 'YYYY-MM-DD'), NULL, 'En proceso'),
(4, 1003, 4, 4, TO_DATE('2025-03-10', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 'Finalizado'),
(5, 1003, 4, 4, TO_DATE('2025-03-12', 'YYYY-MM-DD'), NULL, 'En proceso');


INSERT INTO Pago (id, id_moneda, precio, tasa_cambio, forma_pago, estado) VALUES
(1, 1, 50000, 7, 'Transferencia bancaria', 'A'),
(2, 2, 300000, 8, 'Cheque', 'A');


INSERT INTO Compraventa (id, id_acciones, id_pago, cui, nombres, apellidos, observaciones) VALUES
(1, 4, 1, 1234567890123, 'Carlos', 'Pérez López', 'Compra de finca 1007 con pago a través de transferencia bancaria'),
(2, 5, 2, 2345678901234, 'Ana', 'Rodríguez Castillo', 'Compra de finca 1010 mediante pago con cheque');


INSERT INTO Desmembracion (id, id_acciones, no_finca_nueva, no_finca_matriz, observaciones) VALUES
(1, 1, 1002, 1011, 'Desmembramiento realizado para crear una nueva finca a partir de la finca matriz 1001'),
(2, 2, 1007, 1007, 'Desmembramiento de finca 1007 para crear la nueva finca 1012'),
(3, 3, 1009, 1013, 'Desmembramiento de finca 1010 para la creación de la finca nueva 1006');


INSERT INTO Limitacion (id, no_finca, id_tipo_limitacion, id_representante, fecha_inicio, fecha_final, estado) VALUES
(1, 1004, 1, 2, TO_DATE('2023-02-15', 'YYYY-MM-DD'), TO_DATE('2023-12-15', 'YYYY-MM-DD'), 'Activo'),
(2, 1010, 4, 3, TO_DATE('2023-01-10', 'YYYY-MM-DD'), TO_DATE('2024-01-10', 'YYYY-MM-DD'), 'Activo'),
(3, 1007, 1, 5, TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2023-11-01', 'YYYY-MM-DD'), 'Activo'),
(4, 1005, 4, 1, TO_DATE('2022-08-05', 'YYYY-MM-DD'), TO_DATE('2023-08-05', 'YYYY-MM-DD'), 'Activo'),
(5, 1003, 1, 4, TO_DATE('2022-10-12', 'YYYY-MM-DD'), TO_DATE('2023-10-12', 'YYYY-MM-DD'), 'Activo');


INSERT INTO Hipoteca (id, id_limitaciones, orden, tipo_credito, importe, plaza) VALUES
(1, 1, 'Hipoteca para finca 1004', 'Crédito hipotecario convencional', 'Q 500,000.00', TO_DATE('2023-12-15', 'YYYY-MM-DD')),
(2, 3, 'Hipoteca para finca 1007', 'Crédito hipotecario a tasa fija', 'Q 250,000.00', TO_DATE('2023-11-01', 'YYYY-MM-DD')),
(3, 5, 'Hipoteca para finca 1003', 'Crédito hipotecario por descuento de nómina', 'Q 600,000.00', TO_DATE('2023-10-12', 'YYYY-MM-DD'));


INSERT INTO Anotaciones (id, id_limitaciones, tipo_proceso, motivo) VALUES
(1, 2, 'Proceso Judicial 1', 'Se realiza la anotación debido a un proceso de regularización para la finca 1004, con el fin de legalizar la hipoteca asociada.'),
(2, 4, 'Proceso Judicial 2', 'Se agrega una anotación para limitar el uso de la finca 1007 en ciertas actividades comerciales debido a la zona de preservación ecológica.');
