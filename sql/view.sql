create view public.v_analise_vendas2 as
select
  o.order_id,
  o.order_status,
  o.order_purchase_timestamp,
  EXTRACT(
    year
    from
      o.order_purchase_timestamp
  ) as ano_pedido,
  EXTRACT(
    month
    from
      o.order_purchase_timestamp
  ) as mes_pedido,
  oi.price,
  oi.freight_value,
  oi.price + oi.freight_value as receita_total_item,
  p.product_category_name
from
  olist_orders_dataset o
  join olist_order_items_dataset oi on o.order_id::text = oi.order_id::text
  join olist_products_dataset p on oi.product_id::text = p.product_id::text
where
  o.order_status::text = 'delivered'::text
limit
  10000;
