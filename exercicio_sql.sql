show databases;
create database biblioteca;

use biblioteca;

create table tb_autor(
aut_id int auto_increment primary key,
aut_nome varchar(255),
aut_nacionalidade varchar(30)
);

show tables;

create table tb_categoria(
cat_id int auto_increment primary key,
cat_nome varchar(255),
cat_descricao text
);

create table tb_membro(
mem_id int auto_increment primary key,
mem_nome varchar(255),
mem_celular varchar(15),
mem_residencial varchar(50),
mem_email varchar(255),
mem_email_secundario varchar(255),
mem_rua varchar(255),
mem_numero varchar(50),
mem_cep varchar(30),
mem_complemento varchar(150),
mem_cidade varchar(255),
mem_estado varchar(150),
mem_uf char(2)
);

create table tb_livro(
liv_id int auto_increment primary key,
liv_titulo varchar(255),
liv_ano_publicacao int,
liv_preco decimal(10, 2),
liv_autid int,
liv_catid int,
foreign key (liv_autid) references tb_autor(aut_id),
foreign key (liv_catid) references tb_categoria(cat_id) 
);

create table tb_emprestimo(
    emp_id int auto_increment primary key,
    emp_retirada date,
    emp_devolucao date,
    emp_memid int,
    emp_livid int,
    foreign key (emp_memid) references tb_membro(mem_id),
    foreign key (emp_livid) references tb_livro(liv_id)
);

insert into tb_autor(aut_nome, aut_nacionalidade) values
('Monteiro Lobato', 'Brasileiro');
insert into tb_categoria(cat_nome, cat_descricao) values
('Gibi', 'História em quadrinhos');
insert into tb_membro values
(null, 'Carlos Adao', '11980302255', '11980302255', '11980301010', 'carlinhos@gmail.com', 'adaogamer@gmail.com',
'Avenida Vida Nova', '166', '06764045', 'UniFECAF', 'Taboão da Serra', 'São Paulo', 'SP');

-- seleciona todas as colunas
select * from tb_autor;
select * from tb_categoria;
select * from tb_emprestimo;
select * from tb_livro;
select * from tb_membro;
