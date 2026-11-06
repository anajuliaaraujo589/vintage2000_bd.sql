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
