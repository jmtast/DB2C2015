INSERT INTO TipoDeCamino 				(Nombre) 					VALUES ('Ruta Nacional');				// 1
INSERT INTO TipoDeCamino 				(Nombre) 					VALUES ('Ruta Provincial');				// 2
INSERT INTO TipoDeCamino 				(Nombre) 					VALUES ('Ruta Municipal');				// 3
INSERT INTO TipoDeCamino 				(Nombre) 					VALUES ('Calle Asfaltada Urbana');		// 4
INSERT INTO TipoDeCamino 				(Nombre) 					VALUES ('Calle Asfaltada Suburbana');	// 5
INSERT INTO TipoDeCamino 				(Nombre) 					VALUES ('Avenida');						// 6
INSERT INTO TipoDeCamino 				(Nombre) 					VALUES ('Autopista');					// 7
INSERT INTO TipoDeCamino 				(Nombre) 					VALUES ('Calle de Tierra Urbana');		// 8
INSERT INTO TipoDeCamino 				(Nombre) 					VALUES ('Calle de Tierra Suburbana');	// 9

INSERT INTO ParametroBooleano 			(Nombre) 					VALUES ('Usaba Cinturon');
INSERT INTO ParametroBooleano 			(Nombre) 					VALUES ('Funcionaron los Frenos');
INSERT INTO ParametroBooleano 			(Nombre) 					VALUES ('Alcohol en Sangre');
                                                                    
INSERT INTO ParametroString 			(Nombre) 					VALUES ('Estado de la Carretera');
INSERT INTO ParametroString 			(Nombre) 					VALUES ('Nivel de Destruccion del Vehiculo');
                                                                    
INSERT INTO ParametroNumerico 			(Nombre) 					VALUES ('Velocidad de Circulacion');
INSERT INTO ParametroNumerico 			(Nombre) 					VALUES ('Temperatura');
INSERT INTO ParametroNumerico 			(Nombre) 					VALUES ('Porcentaje de Humedad');
INSERT INTO ParametroNumerico 			(Nombre) 					VALUES ('Cantida de Alcohol en Sangre');

INSERT INTO ModalidadDeAccidente 		(Nombre, Descripcion) 		VALUES ('Choque', 'Choque entre dos vehiculos');
INSERT INTO ModalidadDeAccidente 		(Nombre, Descripcion) 		VALUES ('Choque Multiple', 'Choque entre mas dos vehiculos');
INSERT INTO ModalidadDeAccidente 		(Nombre, Descripcion) 		VALUES ('Vuelco', 'Vuelco del vehiculo');
INSERT INTO ModalidadDeAccidente 		(Nombre, Descripcion) 		VALUES ('Incendio', 'Incendio total o parcial del vehiculo');
INSERT INTO ModalidadDeAccidente 		(Nombre, Descripcion) 		VALUES ('Choque a peaton', 'Choque a peaton individual o multiples peatones');
INSERT INTO ModalidadDeAccidente 		(Nombre, Descripcion) 		VALUES ('Choque objeto inmovil', 'Choque a objeto inmovil. Incluye elementos de señalizacion.');

INSERT INTO ResponsablePeritaje 		(Nombre, Organizacion) 		VALUES ('Rosario Fernández', 'Policia Federal');			
INSERT INTO ResponsablePeritaje 		(Nombre, Organizacion) 		VALUES ('Rafael Amado', 'Policia Federal');
INSERT INTO ResponsablePeritaje 		(Nombre, Organizacion) 		VALUES ('Emilio Bazán', 'Policia Federal');
INSERT INTO ResponsablePeritaje 		(Nombre, Organizacion) 		VALUES ('Alfonso López', 'Gendarmeria');
INSERT INTO ResponsablePeritaje 		(Nombre, Organizacion) 		VALUES ('Joaquín Martin', 'Gendarmeria');
INSERT INTO ResponsablePeritaje 		(Nombre, Organizacion) 		VALUES ('Josefa Martínez', 'Policia Provincia Bs As');
INSERT INTO ResponsablePeritaje 		(Nombre, Organizacion) 		VALUES ('María Carrasco', 'Policia Provincia Bs As');
INSERT INTO ResponsablePeritaje 		(Nombre, Organizacion) 		VALUES ('Daniel Machín', 'Fiscalia');
	