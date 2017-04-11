/****************************************************************************************
* Descripción			: Script para creación de la base de datos Admision_UNSA_Stage	*
* Fecha de creación		: 06/03/2017													*										
* Autor					: Eddy Wilmer Canaza Tito                           			*
****************************************************************************************/

USE master;
GO

IF NOT EXISTS (SELECT name FROM SYS.DATABASES WHERE name = N'Admision_UNSA_Stage')
BEGIN
	CREATE DATABASE Admision_UNSA_Stage
	ON
	(
		NAME = Admision_UNSA_Stage_Data,
		FILENAME = 'D:\Admision_UNSA\SQL\Admision_UNSA_Stage_Data.mdf',
		SIZE = 10,
		MAXSIZE = 50,
		FILEGROWTH = 5
	)
	LOG ON
	(
		NAME = Admision_UNSA_Stage_Log,
		FILENAME = 'D:\Admision_UNSA\SQL\Admision_UNSA_Stage_Log.ldf',
		SIZE = 5,
		MAXSIZE = 25,
		FILEGROWTH = 5
	);
END;
GO