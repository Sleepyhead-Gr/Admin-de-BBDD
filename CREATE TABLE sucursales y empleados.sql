CREATE TABLE sucursales (
    id_sucursal INT PRIMARY KEY,
    nombre_sucursal VARCHAR(100) NOT NULL,
    encargado VARCHAR(100) NOT NULL,
    direccion VARCHAR(150) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    ciudad VARCHAR(50) NOT NULL,
    estado VARCHAR(50) NOT NULL
);


INSERT INTO sucursales VALUES
(1, 'Akira’s Boutique: Las Mercedes', 'Sonia Alejandra Fernández Moreno',
 'Calle Roble #507 Fracc. Las Mercedes', '444 783 1225', 'San Luis Potosí', 'San Luis Potosí'),

(2, 'Akira’s Boutique: Obraje', 'Fernando Calderón Ayala',
 'Calle Dr. Jesús Díaz de León #438 col. Obraje', '449 378 0921', 'Aguascalientes', 'Aguascalientes'),

(3, 'Akira’s Boutique: Galerías Mazatlán', 'Daniela Fernanda Díaz Ordaz',
 'Av. de la Marina #6204, Marina, local 35', '669 293 2059', 'Mazatlán', 'Sinaloa'),

(4, 'Akira’s Boutique: Zapopan', 'Mario Alberto Jiménez Salcido',
 'Av. Manuel J. Clouthier 525 col. Benito Juárez', '333 784 1230', 'Zapopan', 'Jalisco'),

(5, 'Akira’s Boutique: Melchor', 'Yesenia Guadalupe Campos Rojo',
 'Av. Melchor Ocampo #2528 Zona Centro', '614 390 6721', 'Chihuahua', 'Chihuahua'),

(6, 'Akira’s Boutique: Constitución', 'Tamara Alejandra Bernal Ramos',
 'Calle Constitución #106 Zona Centro', '618 196 2954', 'Durango', 'Durango'),

(7, 'Akira’s Boutique: Centro', 'Samuel Enrique Barrios Enciso',
 'Av. Hidalgo #338 Zacatecas Centro', '492 930 1250', 'Zacatecas', 'Zacatecas');





CREATE TABLE empleados (
    id_empleado INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(150) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    edad INT NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    contraseña VARCHAR(255) NOT NULL,
    id_sucursal INT NOT NULL,
    FOREIGN KEY (id_sucursal) REFERENCES sucursales(id_sucursal)
);


INSERT INTO empleados 
(nombre, direccion, telefono, edad, correo, contraseña, id_sucursal)
VALUES
/* ================= SUCURSAL 1 ================= */
('Sonia Alejandra Fernández Moreno', 'Calle Roble #507 Fracc. Las Mercedes', '444 783 1225', 38, 'sonia.fernandez@akiras.com', SHA2('akira123',256), 1),
('Laura Hernández Cruz', 'Calle Roble #520', '444 700 1111', 24, 'laura.hernandez@akiras.com', SHA2('akira123',256), 1),
('Mariana López Reyes', 'Av. Las Mercedes #45', '444 700 2222', 27, 'mariana.lopez@akiras.com', SHA2('akira123',256), 1),
('Daniela Torres Gómez', 'Calle Olivo #32', '444 700 3333', 22, 'daniela.torres@akiras.com', SHA2('akira123',256), 1),
('Paola Sánchez Díaz', 'Calle Encino #18', '444 700 4444', 29, 'paola.sanchez@akiras.com', SHA2('akira123',256), 1),
('Andrea Martínez Flores', 'Av. Roble #90', '444 700 5555', 26, 'andrea.martinez@akiras.com', SHA2('akira123',256), 1),

/* ================= SUCURSAL 2 ================= */
('Fernando Calderón Ayala', 'Calle Dr. Jesús Díaz de León #438', '449 378 0921', 41, 'fernando.calderon@akiras.com', SHA2('akira123',256), 2),
('Karla Jiménez Soto', 'Col. Obraje #12', '449 300 1111', 23, 'karla.jimenez@akiras.com', SHA2('akira123',256), 2),
('Monserrat Ruiz Pérez', 'Calle Victoria #67', '449 300 2222', 25, 'monserrat.ruiz@akiras.com', SHA2('akira123',256), 2),
('Itzel Navarro Campos', 'Av. Alameda #100', '449 300 3333', 28, 'itzel.navarro@akiras.com', SHA2('akira123',256), 2),
('Valeria Ortiz Luna', 'Calle Hidalgo #89', '449 300 4444', 24, 'valeria.ortiz@akiras.com', SHA2('akira123',256), 2),
('Sofía Morales León', 'Col. Centro #23', '449 300 5555', 26, 'sofia.morales@akiras.com', SHA2('akira123',256), 2),

/* ================= SUCURSAL 3 ================= */
('Daniela Fernanda Díaz Ordaz', 'Av. de la Marina #6204', '669 293 2059', 35, 'daniela.diaz@akiras.com', SHA2('akira123',256), 3),
('Camila Ríos Herrera', 'Zona Marina #15', '669 200 1111', 22, 'camila.rios@akiras.com', SHA2('akira123',256), 3),
('Alejandra Pineda Soto', 'Av. del Mar #80', '669 200 2222', 27, 'alejandra.pineda@akiras.com', SHA2('akira123',256), 3),
('Regina Castro Meza', 'Col. Playa Sur #40', '669 200 3333', 24, 'regina.castro@akiras.com', SHA2('akira123',256), 3),
('Natalia Vargas Cruz', 'Zona Dorada #33', '669 200 4444', 29, 'natalia.vargas@akiras.com', SHA2('akira123',256), 3),
('Lucía Mendoza Silva', 'Av. Marina #12', '669 200 5555', 26, 'lucia.mendoza@akiras.com', SHA2('akira123',256), 3),

/* ================= SUCURSAL 4 ================= */
('Mario Alberto Jiménez Salcido', 'Av. Manuel J. Clouthier 525', '333 784 1230', 44, 'mario.jimenez@akiras.com', SHA2('akira123',256), 4),
('Fernanda Aguilar Rojas', 'Col. Benito Juárez #11', '333 400 1111', 23, 'fernanda.aguilar@akiras.com', SHA2('akira123',256), 4),
('Ximena Salazar Cruz', 'Av. Patria #45', '333 400 2222', 25, 'ximena.salazar@akiras.com', SHA2('akira123',256), 4),
('Renata López Márquez', 'Col. Jardines #21', '333 400 3333', 27, 'renata.lopez@akiras.com', SHA2('akira123',256), 4),
('Carolina Nieto Ruiz', 'Av. Vallarta #77', '333 400 4444', 29, 'carolina.nieto@akiras.com', SHA2('akira123',256), 4),
('Valentina Franco Díaz', 'Col. Centro #9', '333 400 5555', 22, 'valentina.franco@akiras.com', SHA2('akira123',256), 4),

/* ================= SUCURSAL 5 ================= */
('Yesenia Guadalupe Campos Rojo', 'Av. Melchor Ocampo #2528', '614 390 6721', 39, 'yesenia.campos@akiras.com', SHA2('akira123',256), 5),
('Ana Paula Reyes Soto', 'Zona Centro #34', '614 300 1111', 24, 'ana.reyes@akiras.com', SHA2('akira123',256), 5),
('Melissa Duarte Flores', 'Calle Juárez #20', '614 300 2222', 26, 'melissa.duarte@akiras.com', SHA2('akira123',256), 5),
('Vanessa Castillo Ortiz', 'Av. Independencia #56', '614 300 3333', 28, 'vanessa.castillo@akiras.com', SHA2('akira123',256), 5),
('Abril Navarro Vega', 'Zona Centro #88', '614 300 4444', 23, 'abril.navarro@akiras.com', SHA2('akira123',256), 5),
('Daniela Córdova Ruiz', 'Calle Ocampo #70', '614 300 5555', 27, 'daniela.cordova@akiras.com', SHA2('akira123',256), 5),

/* ================= SUCURSAL 6 ================= */
('Tamara Alejandra Bernal Ramos', 'Calle Constitución #106', '618 196 2954', 36, 'tamara.bernal@akiras.com', SHA2('akira123',256), 6),
('Paulina Torres Medina', 'Zona Centro #14', '618 200 1111', 25, 'paulina.torres@akiras.com', SHA2('akira123',256), 6),
('Jessica Luna Herrera', 'Calle Morelos #67', '618 200 2222', 28, 'jessica.luna@akiras.com', SHA2('akira123',256), 6),
('Karime Soto Pacheco', 'Av. Constitución #44', '618 200 3333', 24, 'karime.soto@akiras.com', SHA2('akira123',256), 6),
('Mónica Rangel Díaz', 'Zona Centro #91', '618 200 4444', 29, 'monica.rangel@akiras.com', SHA2('akira123',256), 6),
('Ariana Flores Chávez', 'Calle Hidalgo #30', '618 200 5555', 22, 'ariana.flores@akiras.com', SHA2('akira123',256), 6),

/* ================= SUCURSAL 7 ================= */
('Samuel Enrique Barrios Enciso', 'Av. Hidalgo #338', '492 930 1250', 42, 'samuel.barrios@akiras.com', SHA2('akira123',256), 7),
('Natalia Romero Cruz', 'Centro Histórico #10', '492 300 1111', 26, 'natalia.romero@akiras.com', SHA2('akira123',256), 7),
('Daniela Fuentes Mejía', 'Calle Allende #55', '492 300 2222', 24, 'daniela.fuentes@akiras.com', SHA2('akira123',256), 7),
('Isabela Cortés Lara', 'Av. Juárez #80', '492 300 3333', 27, 'isabela.cortes@akiras.com', SHA2('akira123',256), 7),
('Marisol Peña Ríos', 'Centro #23', '492 300 4444', 29, 'marisol.pena@akiras.com', SHA2('akira123',256), 7),
('Fernanda Rojas Silva', 'Calle Hidalgo #99', '492 300 5555', 22, 'fernanda.rojas@akiras.com', SHA2('akira123',256), 7);



