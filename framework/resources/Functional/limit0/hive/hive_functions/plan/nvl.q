explain plan for select * from (
select nvl(int_col, 5) from hive.crosssources.fewtypes_null_hive) t limit 0;
