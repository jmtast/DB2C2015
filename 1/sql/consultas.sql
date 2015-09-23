--
-- CONSULTA 1A)
-- Cantidad de autos que una persona esta habilitada a conducir
--

SELECT p.idPersona, COUNT(*)
FROM Vehiculo, Persona p
WHERE
	idVehiculo IN (
	SELECT pdv1.idVehiculo
	FROM PersonaDuenaDeVehiculo pdv1
	WHERE
		pdv1.idPersona = p.idPersona AND
		pdv1.idPersona = (
			SELECT pdv.idPersona
			FROM PersonaDuenaDeVehiculo pdv
			WHERE 
				pdv.idVehiculo = pdv1.idVehiculo
			ORDER BY fecha desc
			LIMIT 1
		)
	UNION
	SELECT ppv.idVehiculo
	FROM PersonaPuedeManejarVehiculo ppv
	WHERE
		ppv.idPersona = p.idPersona AND
		ppv.fechaDesde <= CURRENT_TIMESTAMP AND
		ppv.fechaHasta > CURRENT_TIMESTAMP
)
GROUP BY p.idPersona
--
-- CONSULTA 1B)
-- Informacion sobre todos los accidentes en los que una persona intervino como responsable.
--

SELECT dp.FechaDelSiniestro, dp.Descripcion, c.Nombre, dp.AlturaCamino, ma.Nombre
FROM DenunciaPolicial dp, LicenciaDeConducir lc, Responsable r, Camino c, ModalidadDeAccidente ma
WHERE
	dp.idDenuncia = r.idDenuncia AND
	r.idPersona = lc.idPersona AND
	c.idCamino = dp.idCamino AND
	ma.idModalidad = dp.idModalidad AND
	lc.idLicencia = 0
	
--
-- CONSULTA 2)
-- Dada una modalidad de accidente, devuelve un listado de licencias de conducir y la cantidad de veces que la licencia incurrio en la modalidad consultada
-- 

SELECT l.idLicencia, COUNT(*) AS cnt
FROM LicenciaDeConducir l, DenunciaPolicial dp, Responsable r
WHERE
	dp.idModalidad = 0 AND
	dp.idDenuncia = r.idDenuncia AND
	r.idPersona = l.idPersona
GROUP BY dp.idDenuncia