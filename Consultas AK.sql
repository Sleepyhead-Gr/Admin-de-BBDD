
-- 1
SELECT DISTINCT
    c.id_cliente,
    CAST(c.nombre AS VARCHAR(100)) AS nombre,
    CAST(c.apellido AS VARCHAR(100)) AS apellido
FROM cliente c
JOIN factura f ON c.id_cliente = f.id_cliente
WHERE YEAR(f.fecha) = 2021;

-- 2
SELECT DISTINCT
    c.id_cliente,
    CAST(c.nombre AS VARCHAR(100)) AS nombre,
    CAST(c.apellido AS VARCHAR(100)) AS apellido
FROM cliente c
JOIN factura f ON c.id_cliente = f.id_cliente
WHERE YEAR(f.fecha) = 2022;

-- 3
SELECT DISTINCT
    c.id_cliente,
    CAST(c.nombre AS VARCHAR(100)) AS nombre,
    CAST(c.apellido AS VARCHAR(100)) AS apellido
FROM cliente c
JOIN factura f ON c.id_cliente = f.id_cliente
WHERE f.fecha BETWEEN '2021-12-01' AND '2021-12-31';

-- 4
SELECT 
    CAST(c.nombre AS VARCHAR(100)) AS nombre,
    CAST(c.apellido AS VARCHAR(100)) AS apellido,
    p.nombre AS producto,
    d.cantidad,
    d.precio,
    f.fecha
FROM cliente c
LEFT JOIN factura f ON c.id_cliente = f.id_cliente
LEFT JOIN detalle d ON f.id_detalle = d.id_detalle
LEFT JOIN producto p ON d.id_producto = p.id_producto
WHERE c.id_cliente IN (2, 4, 11, 17, 24);

-- 5
SELECT TOP 1 
    CAST(p.nombre AS VARCHAR(100)) AS Producto, 
    SUM(d.cantidad) AS Total_Unidades_Vendidas
FROM producto p
JOIN detalle d ON p.id_producto = d.id_producto
GROUP BY CAST(p.nombre AS VARCHAR(100))
ORDER BY Total_Unidades_Vendidas DESC;
GO

-- 6
SELECT TOP 1 nombre, stock
FROM producto
ORDER BY stock DESC;

-- 7
SELECT 
    f.id_factura,
    c.nombre,
    c.apellido,
    f.fecha
FROM factura f
JOIN cliente c ON f.id_cliente = c.id_cliente
ORDER BY f.fecha ASC;

-- 8 
SELECT 
    CAST(nombre AS VARCHAR(100)) AS nombre,
    CAST(apellido AS VARCHAR(100)) AS apellido
FROM cliente
ORDER BY 
    CAST(nombre AS VARCHAR(100)) ASC,
    CAST(apellido AS VARCHAR(100)) ASC;

    -- 9
 SELECT 
    CAST(cat.nombre AS VARCHAR(100)) AS categoria,
    CAST(p.nombre AS VARCHAR(100)) AS producto
FROM producto p
JOIN categoria cat ON p.id_categoria = cat.id_categoria
WHERE CAST(cat.nombre AS VARCHAR(100)) IN
    ('Falda', 'Pantalón', 'Chamarra', 'Zapato', 'Accesorios')
ORDER BY 
    CAST(cat.nombre AS VARCHAR(100)),
    CAST(p.nombre AS VARCHAR(100));

    -- 10 
 SELECT s.nombre_sucursal,
    e.nombre_empleado AS encargado
FROM Sucursales s
JOIN Empleados e ON s.id_sucursal = e.id_sucursal
WHERE e.id_empleado IN (
    SELECT MIN(id_empleado)
    FROM Empleados
    GROUP BY id_sucursal
);

-- 11
SELECT e.nombre_empleado
FROM Empleados e
JOIN Sucursales s ON e.id_sucursal = s.id_sucursal
WHERE s.nombre_sucursal = 'Akira’s Boutique: Constitución';

--12
SELECT 
    nombre,
    apellido,
    fec_nac,
    DATEDIFF(YEAR, fec_nac, GETDATE()) AS edad
FROM cliente
WHERE DATEDIFF(YEAR, fec_nac, GETDATE()) > 30;












