explain plan for select * from (
SELECT PERCENT_RANK () OVER (ORDER by col_int ) prcnt_rank FROM `smlTbl_v`) t limit 0;