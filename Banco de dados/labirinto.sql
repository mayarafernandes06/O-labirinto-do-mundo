create database Labirinto;

use Labirinto;

create table usuario (
idUsuario int primary key auto_increment,
nomeUsuario varchar(100),
emailUsuario varchar(100),
senhaUsuario varchar(20),
telefoneUsuario int(11)
);

create table contato (
idContato int primary key,
mensagemContato varchar(200)
)auto_increment = 10;

create table possui (
fkUsuario int,
foreign key(fkUsuario) references usuario (idUsuario),
fkContato int,
foreign key(fkContato) references contato (idContato),
primary key (fkUsuario, fkContato),
dataPossui date
);

create table nao_cadastrado (
idNao_cadastrado int primary key,
nomeNao_cadastrado varchar(100),
emailNao_cadastrado varchar(100),
telefoneNao_cadastrado int(11)
);

create table faz (
fkNao_cadastrado int,
foreign key(fkNao_cadastrado) references nao_cadastrado (idNao_cadastrado),
fkContato int,
foreign key(fkContato) references contato (idContato),
primary key (fkNao_cadastrado, fkContato),
dataFaz date
);



