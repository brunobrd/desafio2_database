create database workshop;
use workshop;

create table Cliente (
IdClient int not null auto_increment primary key,
Fname varchar(10) not null,
Lname varchar(100) not null,
Adreess varchar(255) not null,
Type_vhecicle varchar(50) not null
);

create table Employee (
IdEmployee int not null auto_increment primary key,
Fname varchar(10) not null,
Lname varchar(100) not null,
Adreess varchar(255) not null,
Skill varchar(255) not null
);

create table Spare_parts (
IdParts int not null auto_increment primary key,
PartsName varchar(50) not null,
Brand varchar(50) not null,
Price float(2) not null
);

create table Order_Service (
IdOrder_Service int not null auto_increment primary key,
Date_Emission date not null,
Description_Service varchar(50),
Service_Value float(2) not null,
End_Date date not null
);

create table Service_Type (
IdService_Type int not null auto_increment primary key,
Service_Type enum('Fix', 'Repair')
);

create table Value_Service (
IdValue_Service int not null auto_increment primary key,
Value_Service_Client int,
value_service float(2),
constraint fk_value_service foreign key (Value_Service_Client) references Order_Service(IdOrder_Service)
);

