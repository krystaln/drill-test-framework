explain plan for select * from ( SELECT col_int FROM `prqUnAll_1_v` WHERE 1=0 UNION ALL SELECT col_int FROM `prqUnAll_1_v` LIMIT 0 ) t limit 0;
