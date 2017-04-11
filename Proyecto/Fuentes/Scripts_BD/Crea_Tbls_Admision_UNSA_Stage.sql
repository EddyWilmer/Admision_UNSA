/****************************************************************************************************
* Descripción			: Script para creación de tablas de la base de datos Admision_UNSA_Stage	*				     *
* Fecha de creación		: 10/02/2017																*										
* Autor					: Eddy Wilmer Canaza Tito                           						*
****************************************************************************************************/

USE Admision_UNSA_Stage;
GO

/*********************************************************************************
* Descripción: Creación de la Tabla Area										 *
*********************************************************************************/

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'Areas'))
	DROP TABLE Areas;
GO

CREATE TABLE Areas
(
	Nombre			VARCHAR(50)
);
GO

/*********************************************************************************
* Descripción: Creación de la Tabla Facultades									 *
*********************************************************************************/

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'Facultades'))
	DROP TABLE Facultades;
GO

CREATE TABLE Facultades
(
	Nombre			VARCHAR(100),
	Area			VARCHAR(50)
);
GO

/*********************************************************************************
* Descripción: Creación de la Tabla Carreras									 *
*********************************************************************************/

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'Carreras'))
	DROP TABLE Carreras;
GO

CREATE TABLE Carreras
(
	Nombre			VARCHAR(100),
	Facultad		VARCHAR(100)
);
GO

/*********************************************************************************
* Descripción: Creación de la Tabla Especialidades								 *
*********************************************************************************/

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'Especialidades'))
	DROP TABLE Especialidades;
GO

CREATE TABLE Especialidades
(
	Carrera				VARCHAR(100),
	Nombre				VARCHAR(100)
);
GO

/*********************************************************************************
* Descripción: Creación de la Tabla TiposExtraordinarios						 *
*********************************************************************************/

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'ModalidadesExtraordinarios'))
	DROP TABLE ModalidadesExtraordinarios;
GO

CREATE TABLE ModalidadesExtraordinarios
(
	Nombre					VARCHAR(50)
);
GO

/*********************************************************************************
* Descripción: Creación de la Tabla Sedes										 *
*********************************************************************************/

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'Sedes'))
	DROP TABLE Sedes;
GO

CREATE TABLE Sedes
(
	Nombre			VARCHAR(50)
);
GO

/*********************************************************************************
* Descripción: Creación de la Tabla TiposProcesosAdmision						 *
*********************************************************************************/

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'Modalidades'))
	DROP TABLE Modalidades;
GO

CREATE TABLE Modalidades
(
	Nombre						VARCHAR(50)
);
GO

/*********************************************************************************
* Descripción: Creación de la Tabla ProcesosAdmision							 *
*********************************************************************************/

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'ProcesosAdmision'))
	DROP TABLE ProcesosAdmision;
GO

CREATE TABLE ProcesosAdmision
(
	Anio					INT,
	Modalidad				VARCHAR(50),
	Fase					VARCHAR(50),
	Fecha					DATE
);
GO

/*********************************************************************************
* Descripción: Creación de la Tabla Ingresantes									 *
*********************************************************************************/

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'Ingresantes'))
	DROP TABLE Ingresantes;
GO

CREATE TABLE Ingresantes
(
	Anio						INT,
	Modalidad					VARCHAR(50),
	Fase						VARCHAR(50),
	OrdenMerito					INT,
	Carrera						VARCHAR(100),
	ApellidosNombres			VARCHAR(100),
	Puntaje						DECIMAL(10,6),	
	Especialidad				VARCHAR(100),
	ModalidadExtraordinario		VARCHAR(50),
	Sede						VARCHAR(50)
);
GO

/*********************************************************************************
* Descripción: Creación de la Tabla Estadisticas								 *
*********************************************************************************/

IF EXISTS(SELECT * FROM SYSOBJECTS WHERE id = OBJECT_ID(N'Estadisticas'))
	DROP TABLE Estadisticas;
GO

CREATE TABLE Estadisticas
(
	Anio					INT,
	Modalidad				VARCHAR(50),
	Fase					VARCHAR(50),
	Carrera					VARCHAR(100),
	NroVacantes				INT,
	NroPostulantes			INT
);
GO