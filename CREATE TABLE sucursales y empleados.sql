CREATE TABLE Empleados (
    id_empleado INT IDENTITY(1,1) PRIMARY KEY,
    nombre_empleado VARCHAR(100) NOT NULL,
    direccion VARCHAR(150),
    telefono VARCHAR(20),
    fecha_nacimiento DATE,
    correo VARCHAR(100) UNIQUE NOT NULL,
    contrasena VARCHAR(100) NOT NULL,
    id_sucursal INT NOT NULL,
    CONSTRAINT FK_Empleados_Sucursales
        FOREIGN KEY (id_sucursal)
        REFERENCES Sucursales(id_sucursal)
);

INSERT INTO Empleados
(nombre_empleado, direccion, telefono, fecha_nacimiento, correo, contrasena, id_sucursal)
VALUES
-- ===== Sucursal 1: Las Mercedes =====
('Sonia Alejandra Fernández Moreno', 'Fracc. Las Mercedes', '4441110001', '1988-03-12', 'sonia.fernandez@akiras.com', 'emp123', 1),
('Laura Martínez López', 'Fracc. Las Mercedes', '4441110002', '1995-04-10', 'laura.martinez@akiras.com', 'emp123', 1),
('Andrea Ruiz Castro', 'Fracc. Las Mercedes', '4441110003', '1997-06-18', 'andrea.ruiz@akiras.com', 'emp123', 1),
('María Fernanda Soto', 'Fracc. Las Mercedes', '4441110004', '1994-09-22', 'maria.soto@akiras.com', 'emp123', 1),
('Daniela Pérez Cruz', 'Fracc. Las Mercedes', '4441110005', '1996-01-15', 'daniela.perez@akiras.com', 'emp123', 1),
('Paola Hernández Díaz', 'Fracc. Las Mercedes', '4441110006', '1993-11-30', 'paola.hernandez@akiras.com', 'emp123', 1),

-- ===== Sucursal 2: Obraje =====
('Fernando Calderón Ayala', 'Col. Obraje', '4492220001', '1985-07-20', 'fernando.calderon@akiras.com', 'emp123', 2),
('Carlos Gómez Pérez', 'Col. Obraje', '4492220002', '1992-02-14', 'carlos.gomez@akiras.com', 'emp123', 2),
('Luis Alberto Torres', 'Col. Obraje', '4492220003', '1991-05-09', 'luis.torres@akiras.com', 'emp123', 2),
('Miguel Ángel Ríos', 'Col. Obraje', '4492220004', '1990-08-17', 'miguel.rios@akiras.com', 'emp123', 2),
('Ana Sofía Ramírez', 'Col. Obraje', '4492220005', '1996-10-03', 'ana.ramirez@akiras.com', 'emp123', 2),
('Karen López Vega', 'Col. Obraje', '4492220006', '1998-12-25', 'karen.lopez@akiras.com', 'emp123', 2),

-- ===== Sucursal 3: Galerías Mazatlán =====
('Daniela Fernanda Díaz Ordaz', 'Zona Marina', '6693330001', '1990-04-08', 'daniela.diaz@akiras.com', 'emp123', 3),
('Valeria Moreno Gil', 'Zona Marina', '6693330002', '1997-06-19', 'valeria.moreno@akiras.com', 'emp123', 3),
('Fernanda López Ortiz', 'Zona Marina', '6693330003', '1995-09-27', 'fernanda.lopez@akiras.com', 'emp123', 3),
('Alejandra Núñez Silva', 'Zona Marina', '6693330004', '1993-01-11', 'alejandra.nunez@akiras.com', 'emp123', 3),
('Itzel Vargas Luna', 'Zona Marina', '6693330005', '1998-03-05', 'itzel.vargas@akiras.com', 'emp123', 3),
('Mariana Castillo Ríos', 'Zona Marina', '6693330006', '1996-12-14', 'mariana.castillo@akiras.com', 'emp123', 3),

-- ===== Sucursal 4: Zapopan =====
('Mario Alberto Jiménez Salcido', 'Col. Benito Juárez', '3334440001', '1987-05-16', 'mario.jimenez@akiras.com', 'emp123', 4),
('José Luis Herrera', 'Col. Benito Juárez', '3334440002', '1991-07-21', 'jose.herrera@akiras.com', 'emp123', 4),
('Ricardo Méndez Soto', 'Col. Benito Juárez', '3334440003', '1989-09-09', 'ricardo.mendez@akiras.com', 'emp123', 4),
('Brenda Aguilar Flores', 'Col. Benito Juárez', '3334440004', '1994-11-02', 'brenda.aguilar@akiras.com', 'emp123', 4),
('Daniel Espinoza Cruz', 'Col. Benito Juárez', '3334440005', '1992-02-28', 'daniel.espinoza@akiras.com', 'emp123', 4),
('Natalia Romero Pérez', 'Col. Benito Juárez', '3334440006', '1997-06-06', 'natalia.romero@akiras.com', 'emp123', 4),

-- ===== Sucursal 5: Melchor =====
('Yesenia Guadalupe Campos Rojo', 'Zona Centro', '6145550001', '1989-10-12', 'yesenia.campos@akiras.com', 'emp123', 5),
('Alejandro Flores Ramos', 'Zona Centro', '6145550002', '1993-04-17', 'alejandro.flores@akiras.com', 'emp123', 5),
('Cinthia Morales Ruiz', 'Zona Centro', '6145550003', '1996-08-22', 'cinthia.morales@akiras.com', 'emp123', 5),
('Fabiola Torres Peña', 'Zona Centro', '6145550004', '1995-01-30', 'fabiola.torres@akiras.com', 'emp123', 5),
('Héctor Salinas Ortiz', 'Zona Centro', '6145550005', '1991-12-05', 'hector.salinas@akiras.com', 'emp123', 5),
('Paula Jiménez Lara', 'Zona Centro', '6145550006', '1998-07-19', 'paula.jimenez@akiras.com', 'emp123', 5),

-- ===== Sucursal 6: Constitución =====
('Tamara Alejandra Bernal Ramos', 'Zona Centro', '6186660001', '1986-02-25', 'tamara.bernal@akiras.com', 'emp123', 6),
('Eduardo Castillo Mora', 'Zona Centro', '6186660002', '1992-06-08', 'eduardo.castillo@akiras.com', 'emp123', 6),
('Iván López Méndez', 'Zona Centro', '6186660003', '1990-09-14', 'ivan.lopez@akiras.com', 'emp123', 6),
('Lucía Ortega Sánchez', 'Zona Centro', '6186660004', '1997-03-29', 'lucia.ortega@akiras.com', 'emp123', 6),
('Sofía Mendoza Ruiz', 'Zona Centro', '6186660005', '1999-11-11', 'sofia.mendoza@akiras.com', 'emp123', 6),
('Raúl Navarro Pérez', 'Zona Centro', '6186660006', '1994-05-01', 'raul.navarro@akiras.com', 'emp123', 6),

-- ===== Sucursal 7: Centro Zacatecas =====
('Samuel Enrique Barrios Enciso', 'Centro', '4927770001', '1984-08-03', 'samuel.barrios@akiras.com', 'emp123', 7),
('Oscar Medina Torres', 'Centro', '4927770002', '1991-01-18', 'oscar.medina@akiras.com', 'emp123', 7),
('Verónica Salas Cruz', 'Centro', '4927770003', '1995-04-27', 'veronica.salas@akiras.com', 'emp123', 7),
('Patricia Gómez Rangel', 'Centro', '4927770004', '1996-09-09', 'patricia.gomez@akiras.com', 'emp123', 7),
('Jorge Ramírez León', 'Centro', '4927770005', '1990-12-16', 'jorge.ramirez@akiras.com', 'emp123', 7),
('Monserrat Pineda López', 'Centro', '4927770006', '1998-06-23', 'monserrat.pineda@akiras.com', 'emp123', 7);




CREATE TABLE Sucursales (
    id_sucursal INT PRIMARY KEY,
    nombre_sucursal VARCHAR(100) NOT NULL,
    encargado VARCHAR(100) NOT NULL,
    direccion VARCHAR(150) NOT NULL,
    telefono VARCHAR(20),
    ciudad VARCHAR(50),
    estado VARCHAR(50)
);

INSERT INTO Sucursales 
(id_sucursal, nombre_sucursal, encargado, direccion, telefono, ciudad, estado)
VALUES
(1, 'Akira’s Boutique: Las Mercedes', 'Sonia Alejandra Fernández Moreno',
 'Calle Roble #507 Fracc. Las Mercedes', '4447831225', 'San Luis Potosí', 'San Luis Potosí'),

(2, 'Akira’s Boutique: Obraje', 'Fernando Calderón Ayala',
 'Calle Dr. Jesús Díaz de León #438 Col. Obraje', '4493780921', 'Aguascalientes', 'Aguascalientes'),

(3, 'Akira’s Boutique: Galerías Mazatlán', 'Daniela Fernanda Díaz Ordaz',
 'Av. de la Marina #6204, Marina, Local 35', '6692932059', 'Mazatlán', 'Sinaloa'),

(4, 'Akira’s Boutique: Zapopan', 'Mario Alberto Jiménez Salcido',
 'Av. Manuel J. Clouthier 525 Col. Benito Juárez', '3337841230', 'Zapopan', 'Jalisco'),

(5, 'Akira’s Boutique: Melchor', 'Yesenia Guadalupe Campos Rojo',
 'Av. Melchor Ocampo #2528 Zona Centro', '6143906721', 'Chihuahua', 'Chihuahua'),

(6, 'Akira’s Boutique: Constitución', 'Tamara Alejandra Bernal Ramos',
 'Calle Constitución #106 Zona Centro', '6181962954', 'Durango', 'Durango'),

(7, 'Akira’s Boutique: Centro', 'Samuel Enrique Barrios Enciso',
 'Av. Hidalgo #338 Centro', '4929301250', 'Zacatecas', 'Zacatecas');






