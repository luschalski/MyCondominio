create database condominio;
use condominio;

create table acesso(
id int(15) not null auto_increment,
login varchar (100) not null,
senha varchar (100) not null,
primary key (id));

create table visitante(
idvis int(15) not null auto_increment,
nome varchar (100) not null,
cpf int (11) not null,
telefone varchar (11) not null,
datanasc date not null,
primary key (idvis));

create table morador(
idmo int(15) not null auto_increment,
nome varchar (100) not null,
cpf int (11) not null,
telefone varchar (11) not null,
datanasc date not null,
rg varchar (15) not null,
bloco char (1) not null,
andar varchar (20) not null,
apartamento int (5) not null,
primary key (idmo));

create table visita(
idvisita int(15) not null auto_increment,
nome varchar (100) not null,
cpf int (11) not null,
telefone varchar (11) not null,
datanasc date not null,
dia date not null,
bloco char (1) not null,
andar varchar (20) not null,
apartamento int (5) not null,
codmo int(15) not null,
codvisi int(15) not null,
primary key (idvisita),
foreign key (codmo) references morador (idmo),
foreign key (codvisi) references visitante(idvis));