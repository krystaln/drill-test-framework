SELECT col_int, AVG(col_int) OVER (ORDER by col_bgint) avg_int FROM `smlTbl_v`;