SELECT c1, c2 FROM `union_01_v` WHERE c2 IS NOT null AND c1 IS NOT null UNION SELECT c1, c2 FROM `union_02_v` WHERE c2 IS NOT null AND c1 IS NOT null;