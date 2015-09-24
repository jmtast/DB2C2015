--Creacion del trigger.


CREATE TRIGGER IF NOT EXISTS insert_poliza_validarFecha BEFORE INSERT ON Poliza 
WHEN new.Fecha < (select FechaDePatentamiento from Vehiculo v where  new.idVehiculo =v.idVehiculo)
BEGIN
  SELECT RAISE(ROLLBACK,'Fecha De Creacion de Poliza debe ser posterior a Fecha de Patentamiento del Vehiculo');
END;



--vehiculo 8 con Fecha 2010-11-16
INSERT INTO Poliza (Fecha, idVehiculo, idCompaniaSeguros) 			VALUES ('2005-01-17', 8,7);