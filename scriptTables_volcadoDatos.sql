-- CREAR LA TABLA "pais"
CREATE TABLE pais(
	id SERIAL,
	nombre VARCHAR(50) NOT NULL,
	iddepartamento INTEGER NOT NULL,
	CONSTRAINT pk_pais PRIMARY KEY(id),
	CONSTRAINT fk_pais_iddepartamento FOREIGN KEY(iddepartamento) REFERENCES departamento(id)	-- Cardinalidad establecida
);


-- "CREAR LA TABLA "departamento"
CREATE TABLE departamento(
	id SERIAL,
	nombre VARCHAR(50) NOT NULL,
	idmunicipio INTEGER NOT NULL,
	CONSTRAINT pk_departamento PRIMARY KEY(id),
	CONSTRAINT fk_departamento_idmunicipio FOREIGN KEY(idmunicipio) REFERENCES municipio(id)	-- Cardinalidad establecida
);


-- CREAR LA TABLA "municipio"
CREATE TABLE municipio(
	id SERIAL,
	nombre VARCHAR(50) NOT NULL,
	CONSTRAINT pk_municipio PRIMARY KEY(id)
);



-- CREAR LA TABLA "localidades" PARA LOS DATOS SUMINISTRADOS EN EL EXCEL
CREATE TABLE localidades(
	id SERIAL,
	codigoDepartamento INTEGER NOT NULL,
	nombreDepartamento VARCHAR(50) NOT NULL,
	codigoMunicipio INTEGER NOT NULL,
	nombreMunicipio VARCHAR(50) NOT NULL,
	CONSTRAINT pk_localidades PRIMARY KEY(id)
);
