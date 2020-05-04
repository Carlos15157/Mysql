create database dbinfox;
use dbinfox;

create table tbusuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar(15),
login varchar(15) not null unique,
senha varchar(15) not null
);
describe tbusuarios;

insert into tbusuarios(iduser,usuario,fone,login,senha)
values(1,'Carlos Henrique','9999-9999','carlos.hfaraujo','141615');
select * from tbusuarios;

insert into tbusuarios(iduser,usuario,fone,login,senha)
values(2,'Rafael','9999-9999','rafael.bh','rfh154');
insert into tbusuarios(iduser,usuario,fone,login,senha)
values(3,'Lucas','9999-9999','lucs.gs','16548tt');

update tbusuarios set fone='2748-3060' where iduser=3;




create table tbclientes(
idcli int primary key auto_increment,
nomecli varchar(50) not null,
endcli varchar(100),
bairrocli varchar(35),
cidcli varchar(50) not null,
estcli varchar(02) not null,
cepcli varchar(10) not null,
fonecli varchar(50) not null,
emailcli varchar(50)
);

describe tbclientes;
insert into tbclientes(nomecli,endcli,bairrocli,cidcli,estcli,cepcli,fonecli,emailcli)
values('José Roberto','Rua Joao, 25','Carrão','São Paulo','SP','05189-030','9999-9999','zé@gmail.com');
insert into tbclientes(nomecli,endcli,bairrocli,cidcli,estcli,cepcli,fonecli,emailcli)
values('Carlos Henrique de Faria Araújo','Rua São Vitório, 435','Arthur-Alvim','São Paulo','SP','03561-000','1237-5610','chfaria13@gmail.com');
insert into tbclientes(nomecli,endcli,bairrocli,cidcli,estcli,cepcli,fonecli,emailcli)
values('Gusttavo Lima','Rua Carapi, 1315','Barra Funda','São Paulo','SP','12345 870','3456-25417','gustavolima@oficial');

select * from tbclientes;
use dbinfox;

create table tbos(
os int primary key auto_increment,
data_os timestamp default current_timestamp,
equipamento varchar(150) not null,
defeito varchar(150) not null,
servico varchar(150),
tecnico varchar(30),
valor decimal(10,2),
idcli int not null,
foreign key(idcli) references tbclientes(idcli)
);

describe tbos;

insert into tbos (equipamento,defeito,servico,tecnico,valor,idcli)
values ('Notebook','Não liga','Troca da fonte','Zé','87.50','1');

select * from tbos;



-- o código abaixo traz informações de duas tabelas
select
O.os,equipamento,defeito,servico,valor,
C.nomecli,fonecli
from tbos as O
inner join tbclientes as C
on (O.idcli = C.idcli);

