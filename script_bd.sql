create table public.item_venda (
  id_item_venda bigint null,
  quantidade integer null,
  preco_unitario numeric(10, 2) null,
  id_produto bigint null,
  id_estoque bigint null,
  id_venda bigint null
 );
