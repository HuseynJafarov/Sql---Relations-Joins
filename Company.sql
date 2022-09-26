create database Company
use Company

 create table Employees(
Id int primary key identity(1,1),
[Name] nvarchar(50) not null,
Surname nvarchar(50) default 'XXX',
Age int,
Position nvarchar(150),
Salary decimal(8,2),
IsDeleted nvarchar(50)
)



insert into Employees([Name],Surname,Position,Age,Salary)
values('Huseyn','Ceferov','Ceo',23,15000.50),('Eli','Eliyev','Programer',25,2500.50)
,('Azer','Nuraliyev','Programer',20,2800.50),('Orxan','Ekberov','Programer',27,3000.30),('Seid','Veliyev','Programer',35,3200)
,('Emil','Veliyev','Programer',22,3800)

 create table Cities(
Id int primary key identity(1,1),
[Name] nvarchar(50),
)

insert into Cities([Name])
values('Tovuz'),('Baki'),('NewYork'),('London'),('Kiyev'),('Moskow'),('Amsterdam')

 create table Countries(
Id int primary key identity(1,1),
[Name] nvarchar(50),
)

insert into Countries([Name])
values('Azerbaycan'),('Turkiye'),('USA'),('UK'),('Ukrain'),('Russian'),('Almanya')

select * from Employees
select * from Cities
select * from Countries

alter table Employees
add CountryId int foreign key references Countries(Id)

alter table Employees
add CitiesId int foreign key references Cities(Id)

alter table Cities
add CountryId int foreign key references Countries(Id)

UPDATE Employees
SET CitiesId = 6
WHERE Id = 6

UPDATE Cities
SET CountryId = 6
WHERE Id = 6

