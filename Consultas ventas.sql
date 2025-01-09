-- Datos de clientes de apellido Cruz
-- SELECT * FROM Clientes WHERE apellido = 'Cruz'
SELECT c.*, co.*
FROM Clientes c
JOIN Compra co ON c.id = co.id_cliente
WHERE c.apellido = 'Cruz';


-- Detalle de compra dado un apellido
SELECT c.direccion , co.*, dc.*
FROM Clientes c
JOIN Compra co ON c.id = co.id_cliente
JOIN DetalleCompra dc ON co.id_compra = dc.id_compra
WHERE c.apellido_cliente = 'Cruz'
