select c.c_custkey 
  from `table_stats/tpch-multi/customer` c, 
          (select o.o_custkey as x 
             from `table_stats/tpch-multi/orders` o 
               where o.o_totalprice between 100000 and 100100) as `temp` 
 where c.c_custkey = `temp`.x;
