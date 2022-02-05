--se insertan los datos en las tablas

INSERT INTO autores(codigo,nombre,apellido,fecha_nacimiento,fecha_fallecimiento) VALUES (3,'JOSE','SALGADO','1968-01-01','2020-01-01');
INSERT INTO autores(codigo,nombre,apellido,fecha_nacimiento,fecha_fallecimiento) VALUES (4,'ANA','SALGADO','1972-01-01',NULL);
INSERT INTO autores(codigo,nombre,apellido,fecha_nacimiento,fecha_fallecimiento) VALUES (1,'ANDRES','ULLOA','1982-01-01',NULL);
INSERT INTO autores(codigo,nombre,apellido,fecha_nacimiento,fecha_fallecimiento) VALUES (2,'SERGIO','MARDONES','1950-01-01','2012-01-01');
INSERT INTO autores(codigo,nombre,apellido,fecha_nacimiento,fecha_fallecimiento) VALUES (5,'MARTIN','PORTA','1976-01-01',NULL);

INSERT INTO libros(isbn,titulo,num_pagina) VALUES ('111-1111111-111','CUENTOS DE TERROR',344);
INSERT INTO libros(isbn,titulo,num_pagina) VALUES ('222-2222222-222','POESIAS CONTEMPORANEAS',167);
INSERT INTO libros(isbn,titulo,num_pagina) VALUES ('333-3333333-333','HISTORIA DE ASIA',511);
INSERT INTO libros(isbn,titulo,num_pagina) VALUES ('444-4444444-444','MANUAL DE MECANICA',298);

INSERT INTO libros_autores(autor_codigo,libro_isbn,tipo_autor) VALUES (3,'111-1111111-111','PRINCIPAL');
INSERT INTO libros_autores(autor_codigo,libro_isbn,tipo_autor) VALUES (4,'111-1111111-111','COAUTOR');
INSERT INTO libros_autores(autor_codigo,libro_isbn,tipo_autor) VALUES (1,'222-2222222-222','PRINCIPAL');
INSERT INTO libros_autores(autor_codigo,libro_isbn,tipo_autor) VALUES (2,'333-3333333-333','PRINCIPAL');
INSERT INTO libros_autores(autor_codigo,libro_isbn,tipo_autor) VALUES (5,'444-4444444-444','PRINCIPAL');

INSERT INTO comunas(nombre) VALUES ('SANTIAGO');
INSERT INTO comunas(nombre) VALUES ('TEMUCO');
INSERT INTO comunas(nombre) VALUES ('PUCON');

INSERT INTO direcciones(calle,numero,id_comuna) VALUES('AVENIDA',1,1);
INSERT INTO direcciones(calle,numero,id_comuna) VALUES('PASAJE',2,1);
INSERT INTO direcciones(calle,numero,id_comuna) VALUES('AVENIDA',2,1);
INSERT INTO direcciones(calle,numero,id_comuna) VALUES('AVENIDA',3,1);
INSERT INTO direcciones(calle,numero,id_comuna) VALUES('PASAJE',3,1);

INSERT INTO socios(rut,nombre,apellido,telefono,id_direccion) VALUES ('1111111-1','JUAN','SOTO','911111111',1);
INSERT INTO socios(rut,nombre,apellido,telefono,id_direccion) VALUES ('2222222-2','ANA','PEREZ','922222222',2);
INSERT INTO socios(rut,nombre,apellido,telefono,id_direccion) VALUES ('3333333-3','SANDRA','AGUILAR','933333333',3);
INSERT INTO socios(rut,nombre,apellido,telefono,id_direccion) VALUES ('4444444-4','ESTEBAN','JEREZ','944444444',4);
INSERT INTO socios(rut,nombre,apellido,telefono,id_direccion) VALUES ('5555555-5','SILVANA','MUNOZ','955555555',5);

INSERT INTO prestamos(fecha_inicio,fecha_dev_esperada,fecha_dev_real,rut_socios,ISBN_libros) VALUES ('20-01-2020','27-01-2020','27-01-2020','1111111-1','111-1111111-111');
INSERT INTO prestamos(fecha_inicio,fecha_dev_esperada,fecha_dev_real,rut_socios,ISBN_libros) VALUES ('20-01-2020','30-01-2020','30-01-2020','5555555-5','222-2222222-222');
INSERT INTO prestamos(fecha_inicio,fecha_dev_esperada,fecha_dev_real,rut_socios,ISBN_libros) VALUES ('22-01-2020','30-01-2020','30-01-2020','3333333-3','333-3333333-333');
INSERT INTO prestamos(fecha_inicio,fecha_dev_esperada,fecha_dev_real,rut_socios,ISBN_libros) VALUES ('23-01-2020','30-01-2020','30-01-2020','4444444-4','444-4444444-444');
INSERT INTO prestamos(fecha_inicio,fecha_dev_esperada,fecha_dev_real,rut_socios,ISBN_libros) VALUES ('27-01-2020','04-02-2020','04-02-2020','2222222-2','111-1111111-111');
INSERT INTO prestamos(fecha_inicio,fecha_dev_esperada,fecha_dev_real,rut_socios,ISBN_libros) VALUES ('31-01-2020','12-02-2020','12-02-2020','1111111-1','222-2222222-222');
INSERT INTO prestamos(fecha_inicio,fecha_dev_esperada,fecha_dev_real,rut_socios,ISBN_libros) VALUES ('31-01-2020','12-02-2020','12-02-2020','3333333-3','222-2222222-222');
