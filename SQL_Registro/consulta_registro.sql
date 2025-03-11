---------------------------------------------- Consulta No.1 ----------------------------------------------
SELECT f1.no_finca AS finca1, f2.no_finca AS finca2, f1.nombre AS nombre_finca1, f2.nombre AS nombre_finca2
FROM Inscripcion_Finca f1
JOIN Inscripcion_Finca f2 ON f1.no_finca < f2.no_finca
WHERE EXISTS (
    SELECT 1 
    FROM Coordenada c1
    JOIN Coordenada c2 ON c1.no_finca = f1.no_finca AND c2.no_finca = f2.no_finca
    WHERE ABS(c1.latitud - c2.latitud) < 10 AND ABS(c1.longitud - c2.longitud) < 10
)
ORDER BY f1.no_finca;



---------------------------------------------- Consulta No.2 ----------------------------------------------
SELECT
    a.id,
    d.no_finca_matriz,
    matriz.nombre AS nombre_finca_matriz,
    d.no_finca_nueva,
    nueva.nombre AS nombre_finca_nueva,
    d.observaciones
FROM 
    Accion a
JOIN 
    Desmembracion d ON a.id = d.id_acciones
JOIN 
    Inscripcion_Finca matriz ON d.no_finca_matriz = matriz.no_finca
JOIN 
    Inscripcion_Finca nueva ON d.no_finca_nueva = nueva.no_finca
WHERE 
    a.id_tipo_accion = 2 AND a.estado = 'Finalizado';



---------------------------------------------- Consulta No.3 ----------------------------------------------
SELECT
      a.id,
      a.no_finca, 
      f.nombre AS nombre_finca,
      m.nombre AS municipio,
      COUNT(*) AS num_cambios_propietario
FROM 
    Accion a
JOIN 
    Compraventa c ON a.id = c.id_acciones
JOIN 
    Inscripcion_Finca f ON a.no_finca = f.no_finca
JOIN 
    Municipio m ON f.id_municipio = m.id
WHERE 
    a.id_tipo_accion = 4 AND a.estado = 'Finalizado'
GROUP BY 
    a.no_finca, f.nombre, m.nombre
ORDER BY 
    num_cambios_propietario DESC;



---------------------------------------------- Consulta No.4 ----------------------------------------------
SELECT
    l.id,
    l.no_finca,
    f.nombre AS nombre_finca,
    l.estado AS estado_limitacion,
    l.fecha_inicio,
    l.fecha_final,
    h.orden,
    h.tipo_credito,
    h.importe,
    h.plaza AS fecha_plazo
FROM 
    Limitacion l
JOIN 
    Hipoteca h ON l.id = h.id_limitaciones
JOIN 
    Inscripcion_Finca f ON l.no_finca = f.no_finca
WHERE 
    l.id_tipo_limitacion = 1;



---------------------------------------------- Consulta No.5 ----------------------------------------------

SELECT
    l.id,
    l.no_finca,
    f.nombre AS nombre_finca,
    l.estado AS estado_limitacion,
    l.fecha_inicio,
    l.fecha_final,
    a.tipo_proceso,
    a.motivo
FROM 
    Limitacion l
JOIN 
    Anotaciones a ON l.id = a.id_limitaciones
JOIN 
    Inscripcion_Finca f ON l.no_finca = f.no_finca
WHERE 
    l.id_tipo_limitacion = 4;











































SELECT 
    d.id AS id_desmembracion,
    d.no_finca_matriz,
    matriz.nombre AS nombre_finca_matriz,
    d.no_finca_nueva,
    nueva.nombre AS nombre_finca_nueva,
    d.observaciones
FROM 
    Desmembracion d
JOIN 
    Inscripcion_Finca matriz ON d.no_finca_matriz = matriz.no_finca
JOIN 
    Inscripcion_Finca nueva ON d.no_finca_nueva = nueva.no_finca
WHERE 
    d.id = 2;