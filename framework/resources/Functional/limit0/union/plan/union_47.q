explain plan for select * from ( SELECT max(c2) max_c2, c3 FROM (SELECT c2, c1,c3 FROM `union_01_v` UNION SELECT c1, c2,c3 FROM `union_02_v`) tmp group BY c3 ) t limit 0;
