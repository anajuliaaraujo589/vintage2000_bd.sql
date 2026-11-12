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
