explain plan for select * from (
SELECT MAX(lead_col1) FROM (SELECT col1, LEAD(col1) OVER(PARTITION BY col7 ORDER BY col1) lead_col1 , col7 FROM `allTypsUniq_v`) sub_query WHERE col1 NOT IN (-1,0,1,-65535,10000000) AND col7 NOT IN (false)) t limit 0;
