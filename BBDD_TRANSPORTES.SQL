create database TransportesPTHib;
use TransportesPTHib;

create table Paquetes(
    idPaquete int unsigned auto_increment,
    descripcion varchar(30) not null,
    destinatario varchar(30),
    CodCamionero int unsigned,
    CodProvincia varchar(30),
    primary key(idPaquete)
);
create table Camionero(
    DNI int unsigned,
    nombre varchar(50) not null,
    telefono int unsigned,
    Salario float,
    PoblacionResidencia int unsigned,
    Peso float unsigned ,
    primary key(DNI)
);
create table conducir(
    idconducir int unsigned auto_increment,
    FechaConduccion date,
    codCamion int unsigned not null,
    codCamionero int unsigned not null,
    primary Key(idConducir),
    foreign key(codCamion) references camon(idcamion),
    foreign key(codCamionero) references camionero(dni)
);
create table camion(
    idcamion int unsigned,
    modelo varchar(50) not null,
    tipo varchar(50) not null,
    matricula varchar(30),
    potencia varchar(30),
    Primary key(idcamion),

);
create table paquetes(
    idProvincia int unsigned,
    nombre varchar(50) not null,
    Primary key(idProvincia),
);