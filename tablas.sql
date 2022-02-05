-- Se crea Base de datos Biblioteca
create database Biblioteca;

create table autores(
    codigo serial not null,
    nombre varchar(255) not null,
    apellido varchar(255) not null,
    fecha_nacimiento date not null,
    fecha_fallecimiento date,
    primary key (codigo)
);

create table libros(
    isbn varchar(15) not null,
    titulo varchar(255) not null,
    num_pagina int not null,
    primary key (isbn)
);

create table libros_autores(
    autor_codigo int not null,
    libro_isbn varchar(255) not null,
    tipo_autor varchar(255) not null,
    primary key (autor_codigo, libro_isbn),
    foreign key (autor_codigo) references autores(codigo),
    foreign key (libro_isbn) references libros(isbn)
);

create table comunas(
    id serial not null,
    nombre varchar(255) not null,
    primary key (id)
);

create table direcciones(
    id serial not null,
    calle varchar(255) not null,
    numero int not null,
    id_comuna int not null,
    primary key (id),
    foreign key (id_comuna) references comunas (id)
);

create table socios(
    rut varchar(12) not null,
    nombre varchar(255) not null,
    apellido varchar(255) not null,
    telefono varchar(255) not null,
    id_direccion varchar(255) not null,
    primary key (rut),
    foreign key (id_direccion) references direcciones(id)
);

create table prestamos(
    id serial not null,
    fecha_inicio date not null,
    fecha_dev_esperada date not null,
    fecha_dev_real date not null,
    rut_socios varchar(13) not null,
    isbn_libros varchar(13)not null,
    primary key (id),
    foreign key (rut_socios) references socios(rut),
    foreign key (isbn_libros) references libros(isbn)
);
