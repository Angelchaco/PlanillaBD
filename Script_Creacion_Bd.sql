create database Planilla_Bd;

use Planilla_Bd;

create table concepto_5201(
codigo_concepto varchar(5) primary key,
nombre_concepto varchar(60) not null,
efecto_concepto varchar(1) not null,
estatus_concepto varchar(1) not null
)Engine = InnoDB Default charset = Latin1;

create table nominae_5201(
codigo_nomina varchar(5) primary key,
fecha_inicial_nomina date not null,
fecha_final_nomina date not null
)Engine = InnoDB Default charset = Latin1;

create table puesto_5201(
codigo_puesto varchar(5) primary key,
nombre_puesto varchar(60) not null,
estatus_puesto varchar(1) not null
)Engine = InnoDB Default charset = Latin1;

create table departamento_5201(
codigo_departamento varchar(5) primary key,
nombre_departamento varchar(60) not null,
estatus_departamento varchar(1) not null
)Engine = InnoDB Default charset = Latin1;

create table empleado_5201(
codigo_empleado varchar(4) primary key,
nombre_empleado varchar(60) not null,
codigo_puesto varchar(5) not null,
codigo_departamento varchar(5) not null,
sueldo_empleado float (10,2) not null,
estatus_empleado varchar(1) not null,
foreign key (codigo_puesto) references puesto_5201 (codigo_puesto),
 foreign key (codigo_departamento) references departamento_5201 (codigo_departamento)
)Engine = InnoDB Default charset = Latin1;

create table nominad_5201(
codigo_nomina varchar(5) not null,
codigo_empleado varchar(5) not null,
codigo_concepto varchar(5) not null,
valor_nominaD float(10,2) not null,
foreign key (codigo_nomina) references nominae_5201 (codigo_nomina),
foreign key (codigo_empleado) references empleado_5201 (codigo_empleado),
foreign key (codigo_concepto) references concepto_5201 (codigo_concepto)
)Engine = InnoDB Default charset = Latin1;