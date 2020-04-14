 use dbinfox;
create table tbos(
os int primary key auto_increment,
data_os timestamp default current_timestamp,
equipamento varchar(150) not null,
defeito varchar(150) not null,
servico varchar (150),
tecnico varchar(30),
valor decimal(10,2),
idcli int not null,
foreign key(idcli) references tbclientes(idcli)
);
describe tbos;

insert into tbos (equipamento,defeito,servico,tecnico,valor,idcli)
values ('Notbook','Não Liga','Troca da fonte','Carlos Henrique','87.50','2');

select * from tbos;


 -- o código abaixp traz informações de duas tabelas 
 
 select
 O.os,equipamento,defeito,servico,valor,
 C.nomecli,fonecli
 from tbos as O
 inner join tbclientes as C
 on (O.idcli = C.idcli);
