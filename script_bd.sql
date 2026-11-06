create table public.venda (
  id_venda bigint null,
  data timestamp without time zone null,
  valor_total numeric(10, 2) null,
  forma_pagamento character varying(50) null,
  id_cliente bigint null,
  id_loja bigint null
 );

