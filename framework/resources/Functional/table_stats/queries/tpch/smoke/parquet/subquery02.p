explain plan including all attributes for
select c.c_custkey 
  from `table_stats/tpch-multi/customer` c, 
          (select o.o_custkey as x 
             from `table_stats/tpch-multi/orders` o 
               where o.o_orderstatus='P') as `temp` 
 where c.c_custkey = `temp`.x;
