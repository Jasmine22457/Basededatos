Create database VeterinariaBD;
use BDVeterinaria

create table municipio(
mumId int primary key identity (1,1) not null,
municipioN nvarchar(100) not null unique
);

create table departamento(
depId int primary key identity (1,1) not null,
departamento nvarchar(50) not null unique,
municipioN int foreign key references  municipio(mumId) not null
);


create table direccion(
dirId int primary key identity (1,1) not null,
direccion nvarchar(50) not null,
departamento int foreign key references departamento(depId) not null,
codigoPostal int not null
);
create table TipoMascota(
tmId int primary key identity (1,1) not null,
tipoMascotaN nvarchar(50) not null,
);

create table Raza(
razaId int primary key identity (1,1) not null,
razaN nvarchar(50)
);
create table Mascota(
masID int primary key identity (1,1) not null,
nIMascota nvarchar (5) not null,
nombre nvarchar(50) not null,
tipoMascota int not null,
raza int not null,
tmId int foreign key references TipoMascota(tmId) not null,
razaId int foreign key references Raza(razaId) not null,
Observacion nvarchar(255) not null

);

create table Duenomascota(
dmID int primary key identity (1,1) not null,
nombre nvarchar(50) not null,
apellido nvarchar(50) not null,
telefono int
);




create table cargos(
cgId int primary key identity (1,1)not null,
Cargo varchar (25)
);



create table Veterinarios(
VtId int primary key identity (1,1) not null,
nombre nvarchar(50) not null,
apellido nvarchar(50) not null,
telefono int);

create table ingreso(
IngId int primary key identity (1,1) not null,
fecha_Ingreso varchar (25)not null,);




insert into municipio values ('chalatenango');
insert into municipio values ('Las vueltas');
insert into municipio values ('La palma');

insert into departamento values ('chalatenango',1);

insert into municipio values ('chalatenango');

insert into direccion values (1,1,045);
insert into direccion values (2,1,045)

insert into Raza values ('labrador')
insert into Raza values ('Husky')
insert into Raza values ('siames')
insert into Raza values ('pastor aleman')

insert into TipoMascota values ('perro')
insert into TipoMascota values ('gato')

insert into Mascota values ('m','maxi',1,1,1,1,'Corte de pelo');
insert into Mascota values ('c','clara',2,2,1,2,'Baño');
insert into Mascota values ('p','prince',1,1,1,1,'Corte de pelo');
insert into Mascota values ('p','peter',2,2,1,2,'Baño');

insert into Mascota values ('m','maxi',1,1,1,1,'Corte de pelo');
insert into Mascota values ('c','clara',2,2,1,2,'Baño');
insert into Mascota values ('p','prince',1,1,1,1,'Corte de pelo');
insert into Mascota values ('p','peter',2,2,1,2,'Baño');
insert into Mascota values ('m','maxi',1,1,1,1,'Corte de pelo');
insert into Mascota values ('c','clara',2,2,1,2,'Baño');
insert into Mascota values ('p','prince',1,1,1,1,'Corte de pelo');
insert into Mascota values ('p','peter',2,2,1,2,'Baño');

insert into Duenomascota values ('Felipe','perez',7738872);
insert into Duenomascota values ('carlos','perez',7738872);
insert into Duenomascota values ('jose','perez',7738872);
insert into Duenomascota values ('pedro','perez',7738872);

insert into ingreso values ('23/03/2018')
insert into ingreso values ('23/03/2018')
insert into ingreso values ('23/03/2018')
insert into ingreso values ('23/03/2018')
insert into ingreso values ('23/03/2018')
insert into ingreso values ('23/03/2018')
insert into ingreso values ('23/03/2018')
insert into ingreso values ('23/03/2018')
insert into ingreso values ('23/03/2018')
insert into ingreso values ('23/03/2018')
insert into ingreso values ('23/03/2018')
insert into ingreso values ('23/03/2018')
insert into ingreso values ('23/03/2018')
insert into ingreso values ('23/03/2018')
insert into ingreso values ('23/03/2018')
insert into ingreso values ('23/03/2018')
insert into ingreso values ('23/03/2018')
insert into ingreso values ('23/03/2018')
insert into ingreso values ('23/03/2018')
insert into ingreso values ('23/03/2018')


insert into Veterinarios values ('pedro','Hernandez',1221213)
insert into Veterinarios values ('Andres','Hernandez',1221213)
insert into Veterinarios values ('marta','Hernandez',1221213)
insert into Veterinarios values ('pablo','Hernandez',1221213)
insert into Veterinarios values ('Mauricio','Hernandez',1221213)
