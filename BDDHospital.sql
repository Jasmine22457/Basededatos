use DbHospital

create table EntidadPaciente
(
 ID_Numero_Seguro int identity primary key,
 nombre varchar(25) not null,
 apellido varchar(25) not null,
 fechaNacimiento datetime not null,
 Domicilio varchar(25)not null,
 Genero varchar(25)not null,
 Departamento varchar(25)not null,
 Codigo_postal int not null,
 N_Historial_clinico int not null,
 Telefono int not null,
);
create table Especialidades(
ID_Especialidad int primary key,
Nombre_Especialidad varchar(25)
);

create table Cargo (
ID_cargo int primary key,
cargo varchar (25),
);

create table Medico
(
 ID_Medico int identity primary key,
 nombre varchar(25) not null,
 apellido varchar(25) not null,
 fkEspecialidad int,
 foreign key (fkEspecialidad) references Especialidades(ID_Especialidad),
 fkCargo int,
 foreign key (fkCargo) references cargo(ID_cargo),
 N_Colegiado int not null,
 
);
create table Planta
(
 idPlanta varchar(3) primary key,
 nombre varchar(20)null,
 numeroCamas int,
);

create table Cama
(
 idCama int primary key,
 fkPlanta varchar(3),
 foreign key (fkPlanta) references Planta(idPlanta)
);

create table Historial_Ingreso
(
 idHistoria int identity primary key,
 FechaEntrada datetime,
 FechaAlta datetime,
 FkNumeroSeguro int,
 foreign key (fkNumeroSeguro) references EntidadPaciente(ID_Numero_Seguro)
);

create table Ingreso
(
 ID_Ingreso int identity primary key,
 fechaAsignacion datetime,
 fechaSalida datetime,
 fkCama int,
 fkHistorial_Ingreso int,
 fkID_Medico int,
 Observacion varchar (25),
 foreign key ( fkID_Medico) references Medico(ID_Medico),
 foreign key (fkCama) references Cama(idCama),
 foreign key (fkHistorial_Ingreso) references Historial_Ingreso (idHistoria)
);


--Medicos--
insert into Medico values('Juan','Perez',1,1,334422);
insert into Medico values('Maria','Lopez',2,1,234134);
insert into Medico values('Marta','Rodriguez',3,2,35632);
insert into Medico values('Jose','hernandez',5,2,254631);
insert into Medico values('Andrea','Mendez',3,2,256743);
insert into Medico values('pablo','Menjivar',4,2,84343);
--pacientes--
insert into EntidadPaciente values ('Marta','Aleman',10/04/1996,'la palma','Femenino','chalatenango',234,7,23245524)
insert into EntidadPaciente values ('Juan','perez',13/05/1999,'san jose','Masculino','chalatenango',233,7,70309923)
insert into EntidadPaciente values ('Pedro','Cartagena',19/02/2000,'El calvario','Masculino','chalatenango',67451,3,23464782)
insert into EntidadPaciente values ('Jasmin','park',12/7/1998,'San antonio','Femenino','chalatenango',674,9,264782)
insert into EntidadPaciente values ('Andrea','Hernandez',30/02/1978,'San salvador','Femenino','San salvador',6745,1,23764782)
insert into EntidadPaciente values ('Miriam','Beltran',10/04/1996,'Lourdes','Femenino','San salvador',6741,2,25664782)
insert into EntidadPaciente values ('Heriberto','Murcia',27/05/1988,'apopa','Masculino','San salvador',674,3,26364782)
insert into EntidadPaciente values ('Felipe','Guardado',17/8/1994,'El chuptal','Masculino','chalatenango',674,1,21313413)
insert into EntidadPaciente values ('Rodrigo','Lemus',20/04/2003,'San Martin','Masculino','San salvador',674,3,8513413)
insert into EntidadPaciente values ('Alexander','Aleman',15/07/1969,'San salvador',',Masculino','San salvador',6748,5,1453413)

--plantas--
insert into Planta values('A','Piso 1','20');
insert into Planta values('B','Piso 2','15');
insert into Planta values('C','Piso 3','19');
insert into Planta values('D','Piso 4','5');

--Historial_ingreso--
insert into Historial_Ingreso values(10/01/2014,29/01/2014,3);
insert into Historial_Ingreso values(10/01/2014,18/01/2014,6);
insert into Historial_Ingreso values(18/01/2014,18/01/2014,8);
insert into Historial_Ingreso values(10/02/2014,29/02/2014,1);
insert into Historial_Ingreso values(13/01/2014,29/01/2014,7);
insert into Historial_Ingreso values(10/01/2014,29/01/2014,3);
insert into Historial_Ingreso values(10/01/2014,18/01/2014,6);
insert into Historial_Ingreso values(18/01/2014,18/01/2014,8);
insert into Historial_Ingreso values(10/02/2014,29/02/2014,1);
insert into Historial_Ingreso values(13/01/2014,29/01/2014,7);
insert into Historial_Ingreso values(10/01/2014,29/01/2014,3);
insert into Historial_Ingreso values(10/01/2014,18/01/2014,6);
insert into Historial_Ingreso values(18/01/2014,18/01/2014,8);
insert into Historial_Ingreso values(10/02/2014,29/02/2014,1);
insert into Historial_Ingreso values(13/01/2014,29/01/2014,7);
insert into Historial_Ingreso values(13/01/2014,29/01/2014,6);
insert into Historial_Ingreso values(13/01/2014,29/01/2014,7);

--camas--

insert into Cama values(102,'A');
insert into Cama values(103,'A');
insert into Cama values(104,'A');
insert into Cama values(201,'B');
insert into Cama values(202,'B');
insert into Cama values(203,'B');
insert into Cama values(204,'B');
insert into Cama values(205,'B');
insert into Cama values(206,'B');
insert into Cama values(301,'C');
insert into Cama values(302,'C');
insert into Cama values(303,'C');
insert into Cama values(304,'C');

--historial--

insert into Ingreso values('11/02/02','02/02/02',203,1,1,'Esperando cirugia');
insert into Ingreso values('11/02/03','02/02/03',304,3,2,'Alta dentro de 2 dias');
insert into Ingreso values('11/02/04','02/02/04',302,5,5,'No alimentos');
insert into Ingreso values('11/02/05','02/02/05',303,5,6,'Reservado');
insert into Ingreso values('11/02/02','02/02/02',203,2,1,'Esperando cirugia');
insert into Ingreso values('11/02/03','02/02/03',202,2,3,'Alta dentro de 1 dias');
insert into Ingreso values('11/02/04','02/02/04',301,2,5,'Reservado');
insert into Ingreso values('11/02/05','02/02/05',206,3,2,'observacion');
insert into Ingreso values('11/02/02','02/02/02',203,2,1,'observacion');
insert into Ingreso values('11/02/03','02/02/03',304,4,5,'observacion');
insert into Ingreso values('11/02/04','02/02/04',302,5,3,'No alimentos');
insert into Ingreso values('11/02/04','02/02/04',302,2,2,'No tiene Mejoras');
insert into Ingreso values('11/02/05','02/02/05',303,5,2,'Fiebre alta');
insert into Ingreso values('11/02/03','02/02/03',202,6,4,'Presión alta');
insert into Ingreso values('11/02/04','02/02/04',301,2,2,'No alimentos');
insert into Ingreso values('11/02/05','02/02/05',206,3,1,'Alta dentro de 1 dias');

--especialidades--
insert into Especialidades values (1,'Neurocirugano');
insert into Especialidades values (2,'Ortopedia');
insert into Especialidades values (3,'Cardiologia');
insert into Especialidades values (4,'Internista');
insert into Especialidades values (5,'Ginecologia');

--cargo--
insert into Cargo values(1,'cirugia');
insert into Cargo values (2,'Consulta especialidad');
--consulta--

select*from Historial_Ingreso
select FechaAlta from Historial_Ingreso

select*from EntidadPaciente
select ID_Medico,nombre from Medico
select nombre from Medico
