alter session set `planner.enable_mergejoin` = false;
select o.O_TOTALPRICE
    from `table_stats/tpch-multi/customer` c, `table_stats/tpch-multi/orders` o
    where c.C_CUSTKEY = o.O_CUSTKEY;
alter session set `planner.enable_mergejoin` = true;
