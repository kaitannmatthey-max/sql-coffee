USE master;
GO

CREATE DATABASE GradeBook;

USE GradeBook;
GO

CREATE TABLE Students -- Pg. 25
(
	ID				SMALLINT		NOT NULL IDENTITY PRIMARY KEY, -- Pg. 243 for SMALLINT
	FirstName		VARCHAR(25)		NOT NULL, -- Pg. 245 for VARCHAR(n)
	LastName		VARCHAR(25)		NOT NULL,
	Birthday		SMALLDATETIME	NULL -- Pg. 247
);

CREATE TABLE Grades -- Pg. 25
(
	ID				INT				NOT NULL IDENTITY PRIMARY KEY, -- Pg. 243 for INT
	StudentID		SMALLINT		NOT NULL REFERENCES Students(ID),
	Subject			VARCHAR(25)		NOT NULL,
	Assignment		VARCHAR(50)		NOT NULL,
	Score			DECIMAL(5,2)	NULL, -- Pg. 243 for DECIMAL | (5,2) means this number can only be ###.## (5 total digits, two of which are after the decimal)
	OutOf			TINYINT			NOT NULL, -- Pg. 243 for TINYINT
	TotalScore		DECIMAL(5,2)	NULL,
	OnTime			BIT				NULL -- Pg. 243 for BIT
);

/*
		? Left 
		? Right 
		? Substring 
		? Round
		? Ceiling
		? Floor
		? Day
		? Month
		? Year
*/

-- Kaitlyn
SELECT LEFT('Kaitlyn', 4);
SELECT RIGHT('Morgan', 5);
SELECT SUBSTRING('Morgan', 2, 3);

SELECT LTRIM ('     Kaitlyn     L');
SELECT RTRIM ('    R    Kaitlyn     ');
SELECT TRIM ('    R    Kaitlyn     ');

SELECT * FROM Students
WHERE FirstName = 'kaitlyn';

SELECT LOWER('KaItLyN');
SELECT UPPER('KaItLyN');

SELECT CONCAT('Kaitlyn', ' ', 'Matthey');

SELECT '1' + '2';
SELECT CONCAT('1', '2');
SELECT 1 + 2;

SELECT ROUND(80.55, 0);
SELECT ROUND(80.55, 1);

SELECT FLOOR(80.55);
SELECT CEILING(80.25);

SELECT GETDATE();
SELECT DAY(GETDATE());
SELECT MONTH(GETDATE());
SELECT YEAR(GETDATE());