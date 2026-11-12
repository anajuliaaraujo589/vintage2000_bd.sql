create table loja (
  id_loja SERIAL PRIMARY KEY,
  nome     varchar(255) not null,
  endereco varchar(255) not null,
  fk_conta int
 );

create table conta (
  id_conta SERIAL PRIMARY KEY,
  numero   varchar(50) not null,
  saldo    decimal(10,2)
 );

create table estoque (
  id_estoque SERIAL PRIMARY KEY,
 quantidade    int,
 id_produto   int not null,
 id_fornecedor  int not null
  );


create table produto (                                
  id_produto   SERIAL PRIMARY KEY,
  nome         varchar(255) not null,
  tendencia   varchar(255),
  novidade              boolean
  preco_base          decimal(10,2) not null,
  fk_loja                  bigint not null,
  fk_categoria         bigint not null
 ); 



create table cliente (                                
  id_cliente  SERIAL PRIMARY KEY,
  nome         varchar(255) not null,
  cpf             varchar(14) not null,
  fk_conta        bigint
 );

create table fornecedor (                                
  id_fornecedor    SERIAL PRIMARY KEY,
  nome       varchar(255) not null,
  cnpj      varchar(18) not null,
  telefone     varchar(20)
 );

 create table pagamento (                                
  id_pagamento   SERIAL PRIMARY KEY,
  tipo       varchar(50) not null,
  valor      decimal(10,2) not null,
  status     varchar(50) not null,
  fk_venda       bigint not null
 );


create table categoria (                                
  id_categoria   SERIAL PRIMARY KEY,
  nome         varchar(100) not null,
  descricao    varchar(255)  
);


create table item_venda (                                
  id_item_venda    SERIAL PRIMARY KEY,
  quantidade     int not null,
  preco_unitario     decimal(10,2) not null,
  fk_produto           timestamp not null,
  fk_estoque          timestamp,
  fk_venda             timestamp not null
 ); 
