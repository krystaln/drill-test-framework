SELECT SUM(cast( col0 as INT )) OVER(PARTITION BY cast( col2 as CHAR(2)) ORDER BY cast( col0 as INT )) FROM `fewRowsAllData_v`;
