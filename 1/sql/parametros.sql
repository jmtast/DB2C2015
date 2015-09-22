INSERT INTO ParametroBooleano 			(Nombre) 														VALUES ('');
INSERT INTO ParametroString 			(Nombre) 														VALUES ('');
INSERT INTO ParametroNumerico 			(Nombre) 														VALUES ('');
INSERT INTO TipoDeCamino 				(Nombre) 														VALUES ('');
INSERT INTO Camino 						(Longitud, Nombre, idTipoCamino) 								VALUES (0, '', 0);
INSERT INTO ModalidadDeAccidente 		(Nombre, Descripcion) 											VALUES ('', '');
INSERT INTO DenunciaPolicial 			(FechaDelSiniestro, FechaDeAlta, Descripcion , AlturaCamino, idCamino, idModalidad) VALUES (CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, '', 0, 0, 0);
INSERT INTO Peritaje 					(Fecha, Informe, idDenuncia) 									VALUES (CURRENT_TIMESTAMP, '', 0);
INSERT INTO MedicionBooleano 			(idParamBool, idPeritaje, Valor) 								VALUES (0, 0, 0);
INSERT INTO MedicionString 				(idParamString, idPeritaje, Valor) 								VALUES (0, 0, '');
INSERT INTO MedicionNumerico 			(idParamNum, idPeritaje Valor) 									VALUES (0, 0, 0);
INSERT INTO ResponsablePeritaje 		(Nombre, Organizacion) 											VALUES ('', '');
INSERT INTO RespRealizaPeritaje 		(idResponsable, idPeritaje) 									VALUES (0, 0);
INSERT INTO Persona						(Nombre, Apellido, FechaDeNacimiento, DNI) 						VALUES ('', '', CURRENT_TIMESTAMP, 0);
INSERT INTO Responsable					(idDenuncia, idPersona) 										VALUES (0, 0);
INSERT INTO Testigo						(idDenuncia, idPersona) 										VALUES (0, 0);
INSERT INTO Participante				(idDenuncia, idPersona) 										VALUES (0, 0);
INSERT INTO TipoDeAntecedente 			(Nombre) 														VALUES ('');
INSERT INTO AntecedentePenal 			(NroAntecedente, Fecha, idPersona, idTipoAntecedente) 			VALUES (0, CURRENT_TIMESTAMP, 0, 0);
INSERT INTO CategoriaDeLicencia			(Nombre, idPersona) 											VALUES ('', 0);
INSERT INTO LicenciaDeConducir			(idPersona, FechaDesde, FechaHasta, idCatLic) 					VALUES (0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 0);
INSERT INTO CategoríaDelVehículo		(idCategoria, Nombre) 											VALUES (0, '');
INSERT INTO Vehiculo 					(NroChapa, Marca, Modelo, FechaDePatentamiento, idCategoria) 	VALUES ('', '', '', CURRENT_TIMESTAMP, 0);
INSERT INTO PersonaDuenaDeVehiculo 		(idVehiculo, idPersona, Fecha) 									VALUES (0, 0, CURRENT_TIMESTAMP);
INSERT INTO PersonaPuedeManejarVehiculo (idVehiculo, idPersona, FechaDesde, FechaHasta) 				VALUES (0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
INSERT INTO TipoDeInfraccion 			(Nombre) 														VALUES ('');
INSERT INTO Multa						(Fecha, Valor, idTipoInfraccion, idVehiculo) 					VALUES (CURRENT_TIMESTAMP, 0, 0, 0);
INSERT INTO CompaniaDeSeguros			(NombreCompania) 												VALUES ('');
INSERT INTO TipoDeCobertura				(CodigoTipoCobertura, DescTipoCobertura) 						VALUES (0, '');
INSERT INTO Poliza 						(Fecha, idVehiculo, idCompaniaSeguros) 							VALUES (CURRENT_TIMESTAMP, 0, 0);
INSERT INTO PolizaTieneTipoDeCobertura	(idPoliza, idTipoCobertura) 									VALUES (0, 0);


INSERT INTO CategoriaDelVehículo		(Nombre) 											VALUES ('Camión');
INSERT INTO CategoriaDelVehículo		(Nombre) 											VALUES ('Camioneta');
INSERT INTO CategoriaDelVehículo		(Nombre) 											VALUES ('Automovil');
INSERT INTO CategoriaDelVehículo		(Nombre) 											VALUES ('Motocicleta');

INSERT INTO Persona						(Nombre, Apellido, FechaDeNacimiento, DNI) 						VALUES ('Juan', 'Perez', CURRENT_TIMESTAMP, 100);
INSERT INTO Persona						(Nombre, Apellido, FechaDeNacimiento, DNI) 						VALUES ('Pedro', 'Goyena', CURRENT_TIMESTAMP, 101);
INSERT INTO Persona						(Nombre, Apellido, FechaDeNacimiento, DNI) 						VALUES ('Gregorio', 'Laferrere', CURRENT_TIMESTAMP, 102);
INSERT INTO Persona						(Nombre, Apellido, FechaDeNacimiento, DNI) 						VALUES ('Roberto', 'Gomez', CURRENT_TIMESTAMP, 103);
INSERT INTO Persona						(Nombre, Apellido, FechaDeNacimiento, DNI) 						VALUES ('Mario', 'Gomez', CURRENT_TIMESTAMP, 103);

INSERT INTO Vehiculo 					(NroChapa, Marca, Modelo, FechaDePatentamiento, idCategoria) 	VALUES ('AAA101', 'Ford', 'Focus', CURRENT_TIMESTAMP, 3);
INSERT INTO Vehiculo 					(NroChapa, Marca, Modelo, FechaDePatentamiento, idCategoria) 	VALUES ('AAA102', 'Ford', 'Ecosport', CURRENT_TIMESTAMP, 2);
INSERT INTO Vehiculo 					(NroChapa, Marca, Modelo, FechaDePatentamiento, idCategoria) 	VALUES ('AAA103', 'Chevrolet', 'Corsa', CURRENT_TIMESTAMP, 3);

INSERT INTO PersonaDuenaDeVehiculo 		(idVehiculo, idPersona, Fecha) 									VALUES (1, 1, CURRENT_TIMESTAMP);
INSERT INTO PersonaDuenaDeVehiculo 		(idVehiculo, idPersona, Fecha) 									VALUES (2, 2, CURRENT_TIMESTAMP);
INSERT INTO PersonaDuenaDeVehiculo 		(idVehiculo, idPersona, Fecha) 									VALUES (1, 3, CURRENT_TIMESTAMP);
INSERT INTO PersonaDuenaDeVehiculo 		(idVehiculo, idPersona, Fecha) 									VALUES (1, 4, CURRENT_TIMESTAMP);
INSERT INTO PersonaDuenaDeVehiculo 		(idVehiculo, idPersona, Fecha) 									VALUES (1, 1, CURRENT_TIMESTAMP);

INSERT INTO PersonaPuedeManejarVehiculo (idVehiculo, idPersona, FechaDesde, FechaHasta) 				VALUES (3, 1, '2015-01-01', '2016-01-01');