explain plan for select * from (
SELECT COUNT(cast( col6 as BOOLEAN)) OVER(PARTITION BY cast( col2 as CHAR(2)) ORDER BY cast( col0 as INT )) FROM `fewRowsAllData_v`) t limit 0;
