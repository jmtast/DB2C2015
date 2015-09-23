CREATE TABLE ParametroBooleano (
	idParamBool INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL ,
	Nombre VARCHAR(50) NOT NULL
);

CREATE TABLE ParametroString (
	idParamString INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , 
	Nombre VARCHAR(50)  NOT NULL
);

CREATE TABLE ParametroNumerico (
	idParamNum INTEGER PRIMARY KEY AUTOINCREMENT  NOT NULL , 
	Nombre VARCHAR(50)  NOT NULL
);

CREATE TABLE TipoDeCamino(
    idTipoCamino INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    Nombre VARCHAR(50) NOT NULL
);

CREATE TABLE Camino(
    idCamino INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    Longitud INTEGER NOT NULL, -- valor de la longitud en km? o m?
    Nombre VARCHAR(50) NOT NULL,
    idTipoCamino INTEGER NOT NULL,
	FOREIGN KEY(idTipoCamino) REFERENCES TipoDeCamino(idTipoCamino)
);

CREATE TABLE ModalidadDeAccidente (
	idModalidad INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , 
	Nombre VARCHAR(50) NOT NULL ,
	Descripcion VARCHAR(400) NOT NULL 
);

CREATE TABLE DenunciaPolicial (
	idDenuncia INTEGER  PRIMARY KEY  AUTOINCREMENT  NOT NULL , 
	FechaDelSiniestro DATE    NOT NULL,
	FechaDeAlta DATE    NOT NULL,
	Descripcion VARCHAR(400) NOT NULL,
	AlturaCamino INTEGER    NOT NULL,
	idCamino INTEGER    NOT NULL,
	idModalidad  INTEGER    NOT NULL ,
	FOREIGN KEY(idCamino) REFERENCES TipoDeCamino(idCamino),
	FOREIGN KEY(idModalidad) REFERENCES ModalidadDeAccidente(idModalidad)
);

CREATE TABLE Peritaje (
	idPeritaje INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , 
	Fecha  DATE   NOT NULL ,
	Informe VARCHAR(400) NOT NULL,
    idDenuncia INTEGER NOT NULL,
	FOREIGN KEY(idDenuncia) REFERENCES DenunciaPolicial(idDenuncia)
);

CREATE TABLE MedicionBooleano (
	idParamBool INTEGER   NOT NULL ,
	idPeritaje  INTEGER   NOT NULL ,
	Valor INTEGER NOT NULL,
	PRIMARY KEY (idParamBool,idPeritaje),
	FOREIGN KEY(idParamBool) REFERENCES ParametroBooleano(idParamBool),
	FOREIGN KEY(idPeritaje) REFERENCES Peritaje(idPeritaje)
);

CREATE TABLE MedicionString (
	idParamString INTEGER   NOT NULL , 
	idPeritaje  INTEGER  NOT NULL ,
	Valor VARCHAR(50) NOT NULL, 
	PRIMARY KEY (idParamString,idPeritaje),
	FOREIGN KEY(idParamString) REFERENCES ParametroNumerico(idParamString),
	FOREIGN KEY(idPeritaje) REFERENCES Peritaje(idPeritaje)
);

CREATE TABLE MedicionNumerico (
	idParamNum INTEGER    NOT NULL , 
	idPeritaje  INTEGER   NOT NULL ,
	Valor FLOAT NOT NULL,
	PRIMARY KEY (idParamNum,idPeritaje),
	FOREIGN KEY(idParamNum) REFERENCES ParametroString(idParamNum),
	FOREIGN KEY(idPeritaje) REFERENCES Peritaje(idPeritaje)
);

CREATE TABLE ResponsablePeritaje (
	idResponsable INTEGER  PRIMARY KEY  AUTOINCREMENT  NOT NULL , 
	Nombre  VARCHAR(50)   NOT NULL ,
	Organizacion VARCHAR(50) NOT NULL 
);

CREATE TABLE RespRealizaPeritaje (
	idResponsable INTEGER    NOT NULL , 
	idPeritaje INTEGER    NOT NULL , 
	PRIMARY KEY (idResponsable,idPeritaje),
	FOREIGN KEY(idResponsable) REFERENCES ResponsablePeritaje(idResponsable),
	FOREIGN KEY(idPeritaje) REFERENCES Peritaje(idPeritaje)
);

CREATE TABLE Persona(
    idPersona INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    FechaDeNacimiento DATE NOT NULL,
    DNI INTEGER NOT NULL
);

CREATE TABLE Responsable(
    idDenuncia INTEGER  NOT NULL,
    idPersona INTEGER  NOT NULL,
    PRIMARY KEY (idDenuncia,idPersona),
	FOREIGN KEY(idDenuncia) REFERENCES DenunciaPolicial(idDenuncia),
	FOREIGN KEY(idPersona) REFERENCES Persona(idPersona)
);

CREATE TABLE Testigo(
    idDenuncia INTEGER NOT NULL,
    idPersona INTEGER  NOT NULL,
    PRIMARY KEY (idDenuncia,idPersona),
	FOREIGN KEY(idDenuncia) REFERENCES DenunciaPolicial(idDenuncia),
	FOREIGN KEY(idPersona) REFERENCES Persona(idPersona)	
);

CREATE TABLE Participante(
    idDenuncia INTEGER  NOT NULL,
    idPersona INTEGER  NOT NULL,
    PRIMARY KEY (idDenuncia,idPersona),
	FOREIGN KEY(idDenuncia) REFERENCES DenunciaPolicial(idDenuncia),
	FOREIGN KEY(idPersona) REFERENCES Persona(idPersona)	
);

CREATE TABLE TipoDeAntecedente(
    idTipoAntecedente INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    Nombre VARCHAR(50) NOT NULL
);

CREATE TABLE AntecedentePenal(
    idAntecedente INTEGER PRIMARY KEY  AUTOINCREMENT NOT NULL,
    NroAntecedente INTEGER NOT NULL,
    Fecha DATE NOT NULL,
	idPersona INTEGER  NOT NULL,
    idTipoAntecedente INTEGER NOT NULL,
	FOREIGN KEY(idTipoAntecedente) REFERENCES TipoDeAntecedente(idTipoAntecedente),
	FOREIGN KEY(idPersona) REFERENCES Persona(idPersona)
);

CREATE TABLE CategoriaDeLicencia(
    idCatLic INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    Nombre VARCHAR(400) NOT NULL
);

CREATE TABLE LicenciaDeConducir (
    idLicencia INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	idPersona INTEGER  NOT NULL,
    FechaDesde DATE NOT NULL,
    FechaHasta DATE NOT NULL,
	idCatLic INTEGER  NOT NULL,
	FOREIGN KEY(idCatLic) REFERENCES CategoriaDeLicencia(idCatLic),
	FOREIGN KEY(idPersona) REFERENCES Persona(idPersona)
);

CREATE TABLE CategoriaDelVehiculo(
    idCategoria INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    Nombre VARCHAR(50)
);

CREATE TABLE Vehiculo(
    idVehiculo INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    NroChapa VARCHAR(50) NOT NULL,
    Marca VARCHAR(50) NOT NULL,
    Modelo VARCHAR(50) NOT NULL,
    FechaDePatentamiento DATE NOT NULL,
    idCategoria INTEGER NOT NULL,
	FOREIGN KEY(idCategoria) REFERENCES CategoriaDelVehículo(idCategoria)
);

CREATE TABLE PersonaDuenaDeVehiculo(
    idVehiculo INTEGER  NOT NULL,
    idPersona INTEGER  NOT NULL,
    Fecha DATE NOT NULL,
    PRIMARY KEY (idVehiculo,idPersona, Fecha),
	FOREIGN KEY(idVehiculo) REFERENCES Vehiculo(idVehiculo),
	FOREIGN KEY(idPersona) REFERENCES Persona(idPersona)
);

CREATE TABLE PersonaPuedeManejarVehiculo(
    idVehiculo INTEGER  NOT NULL,
    idPersona INTEGER  NOT NULL,
    FechaDesde DATE NOT NULL,
	FechaHasta DATE NOT NULL,
    PRIMARY KEY (idVehiculo,idPersona),
	FOREIGN KEY(idVehiculo) REFERENCES Vehiculo(idVehiculo),
	FOREIGN KEY(idPersona) REFERENCES Persona(idPersona)
);

CREATE TABLE TipoDeInfraccion(
    idTipoInfraccion  INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    Nombre VARCHAR(400) NOT NULL
);

CREATE TABLE Multa(
    idMulta INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    Fecha DATE      NOT NULL,
    Valor FLOAT     NOT NULL,
    idTipoInfraccion INTEGER NOT NULL,
    idVehiculo INTEGER NOT NULL,
	FOREIGN KEY(idVehiculo) REFERENCES Vehiculo(idVehiculo),
	FOREIGN KEY(idTipoInfraccion) REFERENCES TipoDeInfraccion(idTipoInfraccion)

);

CREATE TABLE CompaniaDeSeguros(
    idCompaniaSeguros INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    NombreCompania VARCHAR(50)
);

CREATE TABLE TipoDeCobertura(
    idTipoCobertura  INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    CodigoTipoCobertura INTEGER NOT NULL,
    DescTipoCobertura VARCHAR(300)
);

CREATE TABLE Poliza (
    idPoliza INTEGER PRIMARY KEY  AUTOINCREMENT NOT NULL , 
    Fecha DATE      NOT NULL,
    idVehiculo INTEGER NOT NULL,
    idCompaniaSeguros INTEGER NOT NULL,
	FOREIGN KEY(idVehiculo) REFERENCES Vehiculo(idVehiculo),
	FOREIGN KEY(idCompaniaSeguros) REFERENCES CompaniaDeSeguros(idCompaniaSeguros)
);

CREATE TABLE PolizaTieneTipoDeCobertura(
    idPoliza  INTEGER   NOT NULL,
    idTipoCobertura INTEGER  NOT NULL,
    PRIMARY KEY (idPoliza,idTipoCobertura),
	FOREIGN KEY(idPoliza) REFERENCES Poliza(idPoliza),
	FOREIGN KEY(idTipoCobertura) REFERENCES TipoDeCobertura(idTipoCobertura)
);
