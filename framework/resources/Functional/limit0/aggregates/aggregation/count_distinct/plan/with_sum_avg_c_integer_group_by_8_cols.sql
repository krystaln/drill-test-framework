explain plan for select * from ( select count(distinct c_integer), sum(c_integer), round(avg(c_integer)) from alltypes_with_nulls_v group by  c_varchar,c_integer,c_bigint,d9,d18,d28,d38,c_date order by  c_varchar,c_integer,c_bigint,d9,d18,d28,d38,c_date ) t limit 0;
