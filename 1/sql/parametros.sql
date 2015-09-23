/*
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
INSERT INTO CategoriaDeLicencia			(Nombre) 											VALUES ('');
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
*/

--
-- Choques
--

DELETE FROM MedicionBooleano;
DELETE FROM MedicionNumerico;
DELETE FROM Responsable;
DELETE FROM Testigo;
DELETE FROM Participante;
DELETE FROM RespRealizaPeritaje;
DELETE FROM Peritaje;
DELETE FROM DenunciaPolicial;


INSERT INTO DenunciaPolicial (FechaDelSiniestro, FechaDeAlta, Descripcion , AlturaCamino, idCamino, idModalidad) VALUES ('2015-2-2', CURRENT_TIMESTAMP, 'Se registra un choque entre dos automoviles', 12, 1, 1);
INSERT INTO Responsable	(idDenuncia, idPersona) VALUES (1, 2);
INSERT INTO Testigo	(idDenuncia, idPersona) VALUES (1, 3);
INSERT INTO Participante (idDenuncia, idPersona) VALUES (1, 4);
INSERT INTO Peritaje 					(Fecha, Informe, idDenuncia) 									VALUES (CURRENT_TIMESTAMP, '', 1);
INSERT INTO RespRealizaPeritaje 		(idResponsable, idPeritaje) 									VALUES (1, 1);
INSERT INTO MedicionBooleano 			(idParamBool, idPeritaje, Valor) 								VALUES (1, 1, 1);						
INSERT INTO MedicionNumerico 			(idParamNum, idPeritaje, Valor) 									VALUES (1, 1, 60);						

INSERT INTO DenunciaPolicial (FechaDelSiniestro, FechaDeAlta, Descripcion , AlturaCamino, idCamino, idModalidad) VALUES ('2015-3-5', CURRENT_TIMESTAMP, 'Se registra un choque entre un dos automoviles', 5, 5, 1);
INSERT INTO Responsable	(idDenuncia, idPersona) VALUES (2, 4);
INSERT INTO Testigo	(idDenuncia, idPersona) VALUES (2, 5);
INSERT INTO Participante (idDenuncia, idPersona) VALUES (2, 6);
INSERT INTO Peritaje 					(Fecha, Informe, idDenuncia) 									VALUES (CURRENT_TIMESTAMP, '', 2);
INSERT INTO RespRealizaPeritaje 		(idResponsable, idPeritaje) 									VALUES (2, 2);
INSERT INTO MedicionBooleano 			(idParamBool, idPeritaje, Valor) 								VALUES (2, 2, 1);						
INSERT INTO MedicionNumerico 			(idParamNum, idPeritaje, Valor) 									VALUES (1, 2, 60);						

INSERT INTO DenunciaPolicial (FechaDelSiniestro, FechaDeAlta, Descripcion , AlturaCamino, idCamino, idModalidad) VALUES ('2015-6-5', CURRENT_TIMESTAMP, 'Se registra un choque entre un dos automoviles', 71, 3, 1);
INSERT INTO Responsable	(idDenuncia, idPersona) VALUES (3, 4);
INSERT INTO Testigo	(idDenuncia, idPersona) VALUES (3, 1);
INSERT INTO Participante (idDenuncia, idPersona) VALUES (3, 8);
INSERT INTO Peritaje 					(Fecha, Informe, idDenuncia) 									VALUES (CURRENT_TIMESTAMP, '', 3);
INSERT INTO RespRealizaPeritaje 		(idResponsable, idPeritaje) 									VALUES (2, 3);
INSERT INTO MedicionBooleano 			(idParamBool, idPeritaje, Valor) 								VALUES (2, 3, 1);						
INSERT INTO MedicionBooleano 			(idParamBool, idPeritaje, Valor) 								VALUES (1, 3, 1);						

INSERT INTO DenunciaPolicial (FechaDelSiniestro, FechaDeAlta, Descripcion , AlturaCamino, idCamino, idModalidad) VALUES ('2015-6-5', CURRENT_TIMESTAMP, 'Se registra un choque entre un dos automoviles', 4, 39, 1);
INSERT INTO Responsable	(idDenuncia, idPersona) VALUES (4, 4);
INSERT INTO Testigo	(idDenuncia, idPersona) VALUES (4, 5);
INSERT INTO Participante (idDenuncia, idPersona) VALUES (4, 7);
INSERT INTO Peritaje 					(Fecha, Informe, idDenuncia) 									VALUES (CURRENT_TIMESTAMP, '', 4);
INSERT INTO RespRealizaPeritaje 		(idResponsable, idPeritaje) 									VALUES (2, 4);
INSERT INTO MedicionBooleano 			(idParamBool, idPeritaje, Valor) 								VALUES (2, 4, 1);						
INSERT INTO MedicionNumerico 			(idParamNum, idPeritaje, Valor) 									VALUES (2, 4, 33);						

INSERT INTO DenunciaPolicial (FechaDelSiniestro, FechaDeAlta, Descripcion , AlturaCamino, idCamino, idModalidad) VALUES ('2015-6-4', CURRENT_TIMESTAMP, 'Se registra un choque entre un dos automoviles', 8, 40, 1);
INSERT INTO Responsable	(idDenuncia, idPersona) VALUES (5, 2);
INSERT INTO Testigo	(idDenuncia, idPersona) VALUES (5, 22);
INSERT INTO Participante (idDenuncia, idPersona) VALUES (5, 6);
INSERT INTO Peritaje 					(Fecha, Informe, idDenuncia) 									VALUES (CURRENT_TIMESTAMP, '', 5);
INSERT INTO RespRealizaPeritaje 		(idResponsable, idPeritaje) 									VALUES (4, 5);
INSERT INTO MedicionBooleano 			(idParamBool, idPeritaje, Valor) 								VALUES (2, 5, 0);						
INSERT INTO MedicionNumerico 			(idParamNum, idPeritaje, Valor) 									VALUES (2, 5, 22);						

--
-- Choques Multiples
--

INSERT INTO DenunciaPolicial (FechaDelSiniestro, FechaDeAlta, Descripcion , AlturaCamino, idCamino, idModalidad) VALUES ('2014-6-4', CURRENT_TIMESTAMP, 'Se registra un choque multiple entre un dos automoviles', 3, 36, 2);
INSERT INTO Responsable	(idDenuncia, idPersona) VALUES (6, 2);
INSERT INTO Responsable	(idDenuncia, idPersona) VALUES (6, 4);
INSERT INTO Testigo	(idDenuncia, idPersona) VALUES (6, 24);
INSERT INTO Participante (idDenuncia, idPersona) VALUES (6, 9);
INSERT INTO Peritaje 					(Fecha, Informe, idDenuncia) 									VALUES (CURRENT_TIMESTAMP, '', 6);
INSERT INTO RespRealizaPeritaje 		(idResponsable, idPeritaje) 									VALUES (3, 6);
INSERT INTO MedicionBooleano 			(idParamBool, idPeritaje, Valor) 								VALUES (2, 6, 0);						
INSERT INTO MedicionNumerico 			(idParamNum, idPeritaje, Valor) 									VALUES (2, 6, 20);						
INSERT INTO MedicionNumerico 			(idParamNum, idPeritaje, Valor) 									VALUES (1, 6, 50);						

INSERT INTO DenunciaPolicial (FechaDelSiniestro, FechaDeAlta, Descripcion , AlturaCamino, idCamino, idModalidad) VALUES ('2014-7-4', CURRENT_TIMESTAMP, 'Se registra un choque multiple entre un dos automoviles', 3, 24, 2);
INSERT INTO Responsable	(idDenuncia, idPersona) VALUES (7, 4);
INSERT INTO Responsable	(idDenuncia, idPersona) VALUES (7, 7);
INSERT INTO Testigo	(idDenuncia, idPersona) VALUES (7, 20);
INSERT INTO Participante (idDenuncia, idPersona) VALUES (7, 10);
INSERT INTO Peritaje 					(Fecha, Informe, idDenuncia) 									VALUES (CURRENT_TIMESTAMP, '', 7);
INSERT INTO RespRealizaPeritaje 		(idResponsable, idPeritaje) 									VALUES (6, 7);
INSERT INTO MedicionBooleano 			(idParamBool, idPeritaje, Valor) 								VALUES (1, 7, 0);						
INSERT INTO MedicionNumerico 			(idParamNum, idPeritaje, Valor) 									VALUES (2, 7, 10);						
INSERT INTO MedicionNumerico 			(idParamNum, idPeritaje, Valor) 									VALUES (1, 7, 160);						

--
-- Vuelco
-- 

INSERT INTO DenunciaPolicial (FechaDelSiniestro, FechaDeAlta, Descripcion , AlturaCamino, idCamino, idModalidad) VALUES ('2014-7-4', CURRENT_TIMESTAMP, 'Se registra un choque multiple entre un dos automoviles', 3, 24, 3);
INSERT INTO Responsable	(idDenuncia, idPersona) VALUES (8, 2);
INSERT INTO Testigo	(idDenuncia, idPersona) VALUES (8, 21);
INSERT INTO Participante (idDenuncia, idPersona) VALUES (8, 11);
INSERT INTO Peritaje 					(Fecha, Informe, idDenuncia) 									VALUES (CURRENT_TIMESTAMP, '', 8);
INSERT INTO RespRealizaPeritaje 		(idResponsable, idPeritaje) 									VALUES (5, 8);
INSERT INTO MedicionBooleano 			(idParamBool, idPeritaje, Valor) 								VALUES (1, 8, 0);						
INSERT INTO MedicionNumerico 			(idParamNum, idPeritaje, Valor) 									VALUES (2, 8, 10);						
INSERT INTO MedicionNumerico 			(idParamNum, idPeritaje, Valor) 									VALUES (1, 8, 160);						

--
-- Choque peaton
-- 

INSERT INTO DenunciaPolicial (FechaDelSiniestro, FechaDeAlta, Descripcion , AlturaCamino, idCamino, idModalidad) VALUES ('2014-7-4', CURRENT_TIMESTAMP, 'Se registra un choque multiple entre un dos automoviles', 2, 16, 5);
INSERT INTO Responsable	(idDenuncia, idPersona) VALUES (9, 15);
INSERT INTO Testigo	(idDenuncia, idPersona) VALUES (9, 3);
INSERT INTO Participante (idDenuncia, idPersona) VALUES (9, 12);
INSERT INTO Peritaje 					(Fecha, Informe, idDenuncia) 									VALUES (CURRENT_TIMESTAMP, '', 9);
INSERT INTO RespRealizaPeritaje 		(idResponsable, idPeritaje) 									VALUES (4, 9);
INSERT INTO MedicionBooleano 			(idParamBool, idPeritaje, Valor) 								VALUES (1, 9, 0);						
INSERT INTO MedicionNumerico 			(idParamNum, idPeritaje, Valor) 									VALUES (4, 9, 3);						
INSERT INTO MedicionNumerico 			(idParamNum, idPeritaje, Valor) 									VALUES (3, 9, 70);						

INSERT INTO DenunciaPolicial (FechaDelSiniestro, FechaDeAlta, Descripcion , AlturaCamino, idCamino, idModalidad) VALUES ('2014-7-4', CURRENT_TIMESTAMP, 'Se registra un choque multiple entre un dos automoviles', 6, 17, 5);
INSERT INTO Responsable	(idDenuncia, idPersona) VALUES (10, 16);
INSERT INTO Testigo	(idDenuncia, idPersona) VALUES (10, 4);
INSERT INTO Participante (idDenuncia, idPersona) VALUES (10, 13);
INSERT INTO Peritaje 					(Fecha, Informe, idDenuncia) 									VALUES (CURRENT_TIMESTAMP, '', 10);
INSERT INTO RespRealizaPeritaje 		(idResponsable, idPeritaje) 									VALUES (7, 10);
INSERT INTO MedicionBooleano 			(idParamBool, idPeritaje, Valor) 								VALUES (1, 10, 0);						
INSERT INTO MedicionNumerico 			(idParamNum, idPeritaje, Valor) 									VALUES (4, 10, 3);						
INSERT INTO MedicionNumerico 			(idParamNum, idPeritaje, Valor) 									VALUES (3, 10, 70);						
