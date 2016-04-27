explain plan for select * from ( SELECT sum(ss.ss_net_paid_inc_tax) OVER (PARTITION BY ss.ss_store_sk ORDER BY ss.ss_customer_sk) AS PartialSum FROM store_sales ss GROUP BY ss.ss_net_paid_inc_tax, ss.ss_store_sk, ss.ss_customer_sk  LIMIT 20 ) t limit 0;
