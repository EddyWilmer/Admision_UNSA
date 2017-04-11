/****************************************************************************************************
* Descripción			: Script para creación de tablas de la base de datos Admision_UNSA_DW		*				     *
* Fecha de creación		: 10/02/2017																*										
* Autor					: Eddy Wilmer Canaza Tito                           						*
****************************************************************************************************/

USE Admision_UNSA_DW;
GO

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'FactIngresantes'))
	ALTER TABLE FactIngresantes
	DROP CONSTRAINT FK_FactIngresantes_KeyDimArea;
	GO

	ALTER TABLE FactIngresantes
	DROP CONSTRAINT FK_FactIngresantes_KeyDimFacultad;
	GO

	ALTER TABLE FactIngresantes
	DROP CONSTRAINT FK_FactIngresantes_KeyDimCarrera;
	GO

	ALTER TABLE FactIngresantes
	DROP CONSTRAINT FK_FactIngresantes_KeyDimProcesoAdmision;
	GO

	ALTER TABLE FactIngresantes
	DROP CONSTRAINT FK_FactIngresantes_KeyDimModalidad;
	GO

	ALTER TABLE FactIngresantes
	DROP CONSTRAINT FK_FactIngresantes_KeyDimFase;
	GO

	ALTER TABLE FactIngresantes
	DROP CONSTRAINT FK_FactIngresantes_KeyDimEspecialidad;
	GO

	ALTER TABLE FactIngresantes
	DROP CONSTRAINT FK_FactIngresantes_KeyDimModalidadExtraordinario;
	GO

	ALTER TABLE FactIngresantes
	DROP CONSTRAINT FK_FactIngresantes_KeyDimSede;
	GO

	ALTER TABLE FactIngresantes
	DROP CONSTRAINT FK_FactIngresantes_KeyDimTiempo;
	GO

	ALTER TABLE FactIngresantes
	DROP CONSTRAINT FK_FactIngresantes_KeyDimPostulante;
	GO
GO

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'FactPostulantes'))
	ALTER TABLE FactPostulantes
	DROP CONSTRAINT FK_FactPostulantes_KeyDimArea;
	GO

	ALTER TABLE FactPostulantes
	DROP CONSTRAINT FK_FactPostulantes_KeyDimFacultad;
	GO

	ALTER TABLE FactPostulantes
	DROP CONSTRAINT FK_FactPostulantes_KeyDimCarrera;
	GO

	ALTER TABLE FactPostulantes
	DROP CONSTRAINT FK_FactPostulantes_KeyDimProcesoAdmision;
	GO

	ALTER TABLE FactPostulantes
	DROP CONSTRAINT FK_FactPostulantes_KeyDimModalidad;
	GO

	ALTER TABLE FactPostulantes
	DROP CONSTRAINT FK_FactPostulantes_KeyDimFase;
	GO

	ALTER TABLE FactPostulantes
	DROP CONSTRAINT FK_FactPostulantes_KeyDimTiempo;
	GO
GO


/*********************************************************************************
* Descripción: Creación de la Tabla DimPostulante								 *
*********************************************************************************/

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'DimPostulante'))
	DROP TABLE DimPostulante;
GO

CREATE TABLE DimPostulante
(
	KeyDimPostulante	INT IDENTITY(1,1),
	ApellidosNombres	VARCHAR(100),
	Apellidos			VARCHAR(50),
	Nombres				VARCHAR(50)
);
GO

ALTER TABLE DimPostulante
ADD CONSTRAINT PK_KeyDimPostulante PRIMARY KEY (KeyDimPostulante);
GO

/*********************************************************************************
* Descripción: Creación de la Tabla DimArea										 *
*********************************************************************************/

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'DimArea'))
	DROP TABLE DimArea;
GO

CREATE TABLE DimArea
(
	KeyDimArea			INT IDENTITY(1,1),
	DescripcionArea		VARCHAR(50)
);
GO

ALTER TABLE DimArea
ADD CONSTRAINT PK_KeyDimArea PRIMARY KEY (KeyDimArea);
GO

/*********************************************************************************
* Descripción: Creación de la Tabla DimFacultad									 *
*********************************************************************************/

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'DimFacultad'))
	DROP TABLE DimFacultad;
GO

CREATE TABLE DimFacultad
(
	KeyDimFacultad			INT IDENTITY(1,1),
	DescripcionFacultad		VARCHAR(100)
);
GO

ALTER TABLE DimFacultad
ADD CONSTRAINT PK_KeyDimFacultad PRIMARY KEY (KeyDimFacultad);
GO

/*********************************************************************************
* Descripción: Creación de la Tabla DimCarrera									 *
*********************************************************************************/

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'DimCarrera'))
	DROP TABLE DimCarrera;
GO

CREATE TABLE DimCarrera
(
	KeyDimCarrera			INT IDENTITY(1,1),
	DescripcionCarrera		VARCHAR(100)
);
GO

ALTER TABLE DimCarrera
ADD CONSTRAINT PK_KeyDimCarrera PRIMARY KEY (KeyDimCarrera);
GO

/*********************************************************************************
* Descripción: Creación de la Tabla DimModalidad								 *
*********************************************************************************/

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'DimModalidad'))
	DROP TABLE DimModalidad;
GO

CREATE TABLE DimModalidad
(
	KeyDimModalidad			INT IDENTITY(1,1),
	DescripcionModalidad	VARCHAR(50)
);
GO

ALTER TABLE DimModalidad
ADD CONSTRAINT PK_KeyDimModalidad PRIMARY KEY (KeyDimModalidad);
GO

/*********************************************************************************
* Descripción: Creación de la Tabla DimFase										 *
*********************************************************************************/

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'DimFase'))
	DROP TABLE DimFase;
GO

CREATE TABLE DimFase
(
	KeyDimFase			INT IDENTITY(1,1),
	DescripcionFase		VARCHAR(50)
);
GO

ALTER TABLE DimFase
ADD CONSTRAINT PK_KeyDimFase PRIMARY KEY (KeyDimFase);
GO

/*********************************************************************************
* Descripción: Creación de la Tabla DimEspecialidad								 *
*********************************************************************************/

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'DimEspecialidad'))
	DROP TABLE DimEspecialidad;
GO

CREATE TABLE DimEspecialidad
(
	KeyDimEspecialidad			INT IDENTITY(1,1),
	DescripcionEspecialidad		VARCHAR(100)
);
GO

ALTER TABLE DimEspecialidad
ADD CONSTRAINT PK_KeyDimEspecialidad PRIMARY KEY (KeyDimEspecialidad);
GO

/*********************************************************************************
* Descripción: Creación de la Tabla DimModalidadExtraordinario					 *
*********************************************************************************/

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'DimModalidadExtraordinario'))
	DROP TABLE DimModalidadExtraordinario;
GO

CREATE TABLE DimModalidadExtraordinario
(
	KeyDimModalidadExtraordinario			INT IDENTITY(1,1),
	DescripcionModalidadExtraordinario		VARCHAR(50)
);
GO

ALTER TABLE DimModalidadExtraordinario
ADD CONSTRAINT PK_KeyDimModalidadExtraordinario PRIMARY KEY (KeyDimModalidadExtraordinario);
GO

/*********************************************************************************
* Descripción: Creación de la Tabla DimSede									 *
*********************************************************************************/

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'DimSede'))
	DROP TABLE DimSede;
GO

CREATE TABLE DimSede
(
	KeyDimSede			INT IDENTITY(1,1),
	DescripcionSede		VARCHAR(50)
);
GO

ALTER TABLE DimSede
ADD CONSTRAINT PK_KeyDimSede PRIMARY KEY (KeyDimSede);
GO

/*********************************************************************************
* Descripción: Creación de la Tabla DimProcesoAdmision							 *
*********************************************************************************/

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'DimProcesoAdmision'))
	DROP TABLE DimProcesoAdmision;
GO

CREATE TABLE DimProcesoAdmision
(
	KeyDimProcesoAdmision			INT IDENTITY(1,1),
	DescripcionProcesoAdmision		VARCHAR(100)
);
GO

ALTER TABLE DimProcesoAdmision
ADD CONSTRAINT PK_KeyDimProcesoAdmision PRIMARY KEY (KeyDimProcesoAdmision);
GO

/*********************************************************************************
* Descripción: Creación de la Tabla DimTiempo									 *
*********************************************************************************/

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'DimTiempo'))
	DROP TABLE DimTiempo;
GO

CREATE TABLE DimTiempo
(
	KeyDimTiempo					INT IDENTITY(1,1),
	FechaCompleta					DATE,
	Mes								INT,
	NombreMes						VARCHAR(20),
	Anio							INT,
	AnioAcademico					INT
);
GO

ALTER TABLE DimTiempo
ADD CONSTRAINT PK_KeyDimTiempo PRIMARY KEY (KeyDimTiempo);
GO

/*********************************************************************************
* Descripción: Creación de la Tabla FactIngresantes								 *
*********************************************************************************/

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'FactIngresantes'))
	DROP TABLE FactIngresantes;
GO

CREATE TABLE FactIngresantes
(
	KeyDimArea							INT,
	KeyDimFacultad						INT,
	KeyDimCarrera						INT,
	KeyDimProcesoAdmision				INT,
	KeyDimModalidad						INT,
	KeyDimFase							INT,
	KeyDimEspecialidad					INT,
	KeyDimModalidadExtraordinario		INT,
	KeyDimSede							INT,
	KeyDimTiempo						INT,
	KeyDimPostulante					INT,
	OrdenMerito							INT,
	Puntaje								DECIMAL(10,6)
);
GO

ALTER TABLE FactIngresantes
ADD CONSTRAINT FK_FactIngresantes_KeyDimArea FOREIGN KEY (KeyDimArea) REFERENCES DimArea(KeyDimArea)
GO

ALTER TABLE FactIngresantes
ADD CONSTRAINT FK_FactIngresantes_KeyDimFacultad FOREIGN KEY (KeyDimFacultad) REFERENCES DimFacultad(KeyDimFacultad)
GO

ALTER TABLE FactIngresantes
ADD CONSTRAINT FK_FactIngresantes_KeyDimCarrera FOREIGN KEY (KeyDimCarrera) REFERENCES DimCarrera(KeyDimCarrera)
GO

ALTER TABLE FactIngresantes
ADD CONSTRAINT FK_FactIngresantes_KeyDimProcesoAdmision FOREIGN KEY (KeyDimProcesoAdmision) REFERENCES DimProcesoAdmision(KeyDimProcesoAdmision)
GO

ALTER TABLE FactIngresantes
ADD CONSTRAINT FK_FactIngresantes_KeyDimModalidad FOREIGN KEY (KeyDimModalidad) REFERENCES DimModalidad(KeyDimModalidad)
GO

ALTER TABLE FactIngresantes
ADD CONSTRAINT FK_FactIngresantes_KeyDimFase FOREIGN KEY (KeyDimFase) REFERENCES DimFase(KeyDimFase)
GO

ALTER TABLE FactIngresantes
ADD CONSTRAINT FK_FactIngresantes_KeyDimEspecialidad FOREIGN KEY (KeyDimEspecialidad) REFERENCES DimEspecialidad(KeyDimEspecialidad)
GO

ALTER TABLE FactIngresantes
ADD CONSTRAINT FK_FactIngresantes_KeyDimModalidadExtraordinario FOREIGN KEY (KeyDimModalidadExtraordinario) REFERENCES DimModalidadExtraordinario(KeyDimModalidadExtraordinario)
GO

ALTER TABLE FactIngresantes
ADD CONSTRAINT FK_FactIngresantes_KeyDimSede FOREIGN KEY (KeyDimSede) REFERENCES DimSede(KeyDimSede)
GO

ALTER TABLE FactIngresantes
ADD CONSTRAINT FK_FactIngresantes_KeyDimTiempo FOREIGN KEY (KeyDimTiempo) REFERENCES DimTiempo(KeyDimTiempo)
GO

ALTER TABLE FactIngresantes
ADD CONSTRAINT FK_FactIngresantes_KeyDimPostulante FOREIGN KEY (KeyDimPostulante) REFERENCES DimPostulante(KeyDimPostulante)
GO

/*********************************************************************************
* Descripción: Creación de la Tabla FactPostulantes								 *
*********************************************************************************/

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'FactPostulantes'))
	DROP TABLE FactPostulantes;
GO

CREATE TABLE FactPostulantes
(
	KeyDimArea							INT,
	KeyDimFacultad						INT,
	KeyDimCarrera						INT,
	KeyDimProcesoAdmision				INT,
	KeyDimModalidad						INT,
	KeyDimFase							INT,
	KeyDimTiempo						INT,
	NroVacantes							INT,
	NroPostulantes						INT
);
GO

ALTER TABLE FactPostulantes
ADD CONSTRAINT FK_FactPostulantes_KeyDimArea FOREIGN KEY (KeyDimArea) REFERENCES DimArea(KeyDimArea)
GO

ALTER TABLE FactPostulantes
ADD CONSTRAINT FK_FactPostulantes_KeyDimFacultad FOREIGN KEY (KeyDimFacultad) REFERENCES DimFacultad(KeyDimFacultad)
GO

ALTER TABLE FactPostulantes
ADD CONSTRAINT FK_FactPostulantes_KeyDimCarrera FOREIGN KEY (KeyDimCarrera) REFERENCES DimCarrera(KeyDimCarrera)
GO

ALTER TABLE FactPostulantes
ADD CONSTRAINT FK_FactPostulantes_KeyDimProcesoAdmision FOREIGN KEY (KeyDimProcesoAdmision) REFERENCES DimProcesoAdmision(KeyDimProcesoAdmision)
GO

ALTER TABLE FactPostulantes
ADD CONSTRAINT FK_FactPostulantes_KeyDimModalidad FOREIGN KEY (KeyDimModalidad) REFERENCES DimModalidad(KeyDimModalidad)
GO

ALTER TABLE FactPostulantes
ADD CONSTRAINT FK_FactPostulantes_KeyDimFase FOREIGN KEY (KeyDimFase) REFERENCES DimFase(KeyDimFase)
GO

ALTER TABLE FactPostulantes
ADD CONSTRAINT FK_FactPostulantes_KeyDimTiempo FOREIGN KEY (KeyDimTiempo) REFERENCES DimTiempo(KeyDimTiempo)
GO

