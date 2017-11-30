-- Hay dos tipos destacables NoSQL t SQL
-- NoSQL bases de datos no estructuradas como Mongo, CouchDB
--
-- SQL es el lenguaje para la base de datos estos son
-- los programas =>MySQL, SQLserver, Oracle
--
-- La base de datos es un conjunto de tablas que siguen un esquema
-- - Los nombres de las tablas son en plural siempre
-- Se manejan asociaciones en base de datos, existen tres tipos
--
-- One to Many
-- Many to Many
-- One to One
--
-- Llave primaria y foranea es lo que usamos para decir como relacionamos dos tablas
-- todas las tablas tienen una llave primaria , usualmente es el ID, la llave foranea es
-- pasar el ID de una tabla a otra y asi por ejemplo poder encontrar o filtrar más fácil
--
-- Cuando la relacion es de muchos a muchos se necesita una llave intermedia
--la base de datos va en .db, en sqlite3 con < ato el sql al db
--sqlite3 school.db para crear la base de datos < schema.sql para que haga todo

DROP TABLE IF EXISTS `Student cohort`;

CREATE TABLE `Student cohort` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `first_name` VARCHAR NULL DEFAULT NULL,
  `last_name` VARCHAR NULL DEFAULT NULL,
  `gender` VARCHAR NULL DEFAULT NULL,
  `birthday` DATE NULL DEFAULT NULL,
  `email` VARCHAR NULL DEFAULT NULL,
  `phone` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'Reto 1 ';

DROP TABLE IF EXISTS `Student cohort`;

CREATE TABLE `Student cohort` (
  `id` INTEGER PRYMARYKEY AUTOINCREMENT NOT NULL,
  `first_name` VARCHAR NULL DEFAULT NULL,
  `last_name` VARCHAR NULL DEFAULT NULL,
  `gender` VARCHAR NULL DEFAULT NULL,
  `birthday` DATE NULL DEFAULT NULL,
  `email` VARCHAR NULL DEFAULT NULL,
  `phone` VARCHAR NULL DEFAULT NULL
  );

--ORM => Object-Relational mapping, es un patron de diseño que convierte el codigo de un software
--de programacion como ruby a SQL hace que podamos programar SQL con suby facilmente



--ingresar a sourec rake spec

--Hay tres niveles de validaciones desde el mas bajo que es la base de datos
--base de datos
--Nivel de la aplicacion(codigo que esta en el back) => son las recomendables
--Nivel de la aplicacion(codigo que esta en el front)



--Validaciones nivel back

-- las validaciones van dentro de los modelo, es un metodo llamado validates
-- class Dog < ActiveRecord::Base
-- validates :name, :login, :email, presence: true
-- end

--para una validacion personalizada se escribe validate :nombre_de_la_validacion
-- y se hace el metodo

-- validate :name_must
--
-- def name_must
-- unless name =~ aca va la validacion
-- errors.add(:name, "error en perro") esto ingresa el metodo del error
-- end
-- end

-- has_many actua como metodo para poder realizar busquedas y otros ehercicios como forma
-- facil, va

--has_many : stores,     => en ese caso al buscar en conlosa manager.stores el me retorna todas las tiendas que
--pertenezcan a un manager
--belongs_ to se utiliza en el modelo que pertenece
