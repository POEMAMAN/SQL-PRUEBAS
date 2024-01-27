create database LigaPTHib;
use LigaPTHib;

create table Equipos(
    idEquipo int unsigned,
    nombre varchar(30) not null,
    EquipPpal varchar(10),
    ciudad varchar(30) default 'Valencia',
    puntos int unsigned default 0,
    primary key(idEquipo)
);
create table jugadores(
    idJugador int unsigned auto_increment,
    nombre varchar(50) not null,
    fechaNac date not null,
    posición set("portero","defensa","centrocampista","delantero"),
    Salario float,
    Dominancia enum ("Diestro", "Zurdo", "Ambidiestro"),
    Altura int unsigned,
    Peso float unsigned ,
    Nacionalidad varchar(30) default "España",
    primary key(idJugador)
);
 
create table empleados(
    idempleado int unsigned,
    nombre varchar(50) not null,
    función varchar(50) not null,
    Departamento varchar(30),
    TipoContrato enum("Indefinido", "OS", "FijoDiscontinuo"),
    Sueldo float,
    FechaIngreso date,
    Codequipo int unsigned not null,
    Primary key(idempleado),
    foreign key(codequipo) references Equipos(idequipo)
);
create table fichar(
    idFichar int unsigned auto_increment,
    codJugador int unsigned not null,
    codEquipo int unsigned not null,
    fechaI date not null,
    FechaF date,
    primary Key(idFichar),
    foreign key(codequipo) references Equipos(idequipo),
    foreign key(codjugador) references Jugadores(idjugador)
);
 
create table estadios(
    idEstadio int unsigned,
    nombre varchar(50) not null,
    cubierto set("si","no"),
    ciudad varchar(30) default "Valencia",
    TipoTerreno enum("hierba", "tierra", "hierba natural"),
    Codequipo int unsigned not null,
    Primary key(idestadio),
    foreign key(codequipo) references Equipos(idequipo)
);