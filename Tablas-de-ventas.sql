CREATE TABLE Clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    RUT VARCHAR(12),
    direccion VARCHAR(100),
    telefono VARCHAR(15)
);

CREATE TABLE Compra (
    id_compra INT AUTO_INCREMENT PRIMARY KEY,
    valor_total DECIMAL(10, 2),
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id)
);

CREATE TABLE DetalleCompra (
    id_compra INT,
    fecha_compra DATE,
    hora_compra TIME,
    cantidad_articulo1 INT,
    cantidad_articulo2 INT,
    cantidad_articulo3 INT,
    cantidad_articulo4 INT,
    cantidad_articulo5 INT,
    cantidad_articulo6 INT,
    cantidad_articulo7 INT,
    cantidad_articulo8 INT,
    cantidad_articulo9 INT,
    cantidad_articulo10 INT,
    FOREIGN KEY (id_compra) REFERENCES Compra(id_compra)
);

CREATE TABLE Articulos (
    id_articulo INT AUTO_INCREMENT PRIMARY KEY,
    valor DECIMAL(10, 2)
);

-- Insertar precios para los 10 artículos
INSERT INTO Articulos (valor) VALUES (100.00), (150.00), (200.00), (250.00), (300.00), 
                                      (350.00), (400.00), (450.00), (500.00), (550.00);
