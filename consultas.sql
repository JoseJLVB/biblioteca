--Consultas:
--a. Mostrar todos los libros que posean menos de 300 páginas.
SELECT * FROM libros WHERE num_pag < 300;

--b. Mostrar todos los autores que hayan nacido después del 01-01-1970.
SELECT * FROM autores WHERE fecha_nacimiento > '1970-01-01';

--¿Cuál es el libro más solicitado?
SELECT ISBN_libros as isbn_libro_mas_solicitado, count(ISBN_libros) as solicitudes FROM prestamos group by ISBN_libros ORDER BY solicitudes DESC LIMIT 1;

--d. Si se cobrara una multa de $100 por cada día de atraso, mostrar cuánto debería pagar cada usuario que entregue el préstamo después de 7 días.
select socios.nombre, socios.apellido, libros.titulo,((fecha_dev_esperada-fecha_inicio)*100) as atraso 
from socios join prestamos on socios.rut = prestamos.rut_socios join libros on libros.isbn = prestamos.isbn_libros 
where (prestamos.fecha_dev_real-fecha_inicio) = 7;