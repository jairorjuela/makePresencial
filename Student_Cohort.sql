DROP TABLE IF EXISTS `Student cohort`;

CREATE TABLE `Student cohort` (
  `id` INTEGER PRYMARY KEY AUTO INCREMENT NOT NULL,
  `first_name` VARCHAR NULL DEFAULT NULL,
  `last_name` VARCHAR NULL DEFAULT NULL,
  `gender` VARCHAR NULL DEFAULT NULL,
  `birthday` DATE NULL DEFAULT NULL,
  `email` VARCHAR NULL DEFAULT NULL,
  `phone` VARCHAR NULL DEFAULT NULL
  );


  --------------------------------------
  -- preguntas con  INSERT
  --------------------------------------

  -- puedo añadir estudiantes a la tabla?
  INSERT INTO student cohort
  (first_name, last_name, gender, birthday, email, phone)
  VALUES
  ('jane', 'smith', 'female', '1997-7-20', 'abc@hi.com', '123.321.2323')

  -- -- puedo hacerlo sin incluir email y phone?
  -- INSERT INTO students
  -- (first_name, last_name, gender, birthday)
  -- VALUES
  -- ('jane', 'smith', 'female', '1997-7-20')
  --
  -- -- puedo cambiar el orden de mis columnas?
  -- INSERT INTO students
  -- (gender, first_name, last_name)
  -- VALUES
  -- ('female', 'jane', 'smith')
  --
  --
  -- --------------------------------------
  -- -- usando  SELECT
  -- --------------------------------------
  --
  -- -- puede listar todas las mujeres de la tabla
  -- SELECT *
  -- FROM students
  -- WHERE gender = 'female'
  --
  -- -- puedo listar los hombres?
  -- SELECT *
  -- FROM students
  -- WHERE gender = 'male'
  --
  -- -- puedo listar los estudiantes que nacieron en 1994
  -- SELECT *
  -- FROM students
  -- WHERE birthday LIKE '1994%'
  --
  -- -- puedo listar los estudiantes cuyo apellido empieza con la letra 's'
  -- SELECT *
  -- FROM students
  -- WHERE last_name LIKE 'S%'
  --
  --
  -- -- puedo listar los estudiantes cuyo email termine con .biz
  -- SELECT *
  -- FROM students
  -- WHERE email LIKE '%biz'
  -- ORDER BY last_name, first_name
  --
  --
  -- --------------------------------------
  -- -- usando UPDATE
  -- --------------------------------------
  --
  -- -- puedo cambiar el email de un estudiante si se su id
  -- UPDATE students
  -- SET email = '123@abc.com'
  -- WHERE id = 1
  --
  -- -- puedo cambiar el email de un estudiante sin su id?
  -- UPDATE students
  -- SET email = '123@abc.com'
  -- WHERE email = 'agustina_braun@wintheiser.info'
  --
  -- -- puedo cambiar el email de varios estudiantes al tiempo?
  -- UPDATE students
  -- SET email = '123@abc.com'
  -- WHERE last_name LIKE 'S%'
  --
  --
  -- --------------------------------------
  -- -- usando DELETE
  -- --------------------------------------
  --
  -- -- puedo borrar a un estudiante si conozco su id
  -- DELETE from students
  -- WHERE id = 1
  --
  -- -- puedo borrar un estudiante sin saber su id?
  -- DELETE from students
  -- WHERE email = '123@abc.com'
  --
  -- -- puedo borrar toda la tabla?
  -- DELETE from students
  -- WHERE 1 = 1
