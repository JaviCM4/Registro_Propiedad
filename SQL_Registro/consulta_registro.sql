---------------------------------------------- Consulta No.1 ----------------------------------------------
SELECT i.no_finca, i.nombre, COUNT(p.id) AS numero_propietarios, 
       MAX(p.fecha_registro) AS fecha_ultimo_registro
FROM 
    Inscripcion_Finca i
LEFT JOIN 
    Propietario p ON i.no_finca = p.no_finca
GROUP BY 
    i.no_finca, i.nombre
ORDER BY 
    numero_propietarios DESC;



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
    a.id, a.no_finca, f.nombre, m.nombre
ORDER BY 
    num_cambios_propietario DESC;;



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



---------------------------------------------- Consulta No.6 ----------------------------------------------
SELECT
    a.id,
    matriz.nombre AS nombre_finca_matriz,
    matriz.area AS area_finca_matriz,
    nueva.nombre AS nombre_finca_nueva,
    nueva.area AS area_finca_nueva
FROM 
    Accion a
JOIN 
    Desmembracion d ON a.id = d.id_acciones
JOIN 
    Inscripcion_Finca matriz ON d.no_finca_matriz = matriz.no_finca
JOIN 
    Inscripcion_Finca nueva ON d.no_finca_nueva = nueva.no_finca
WHERE 
    a.id_tipo_accion = 2 
    AND a.estado = 'Finalizado'
    AND nueva.area > matriz.area;