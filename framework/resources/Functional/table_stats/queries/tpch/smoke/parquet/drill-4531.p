explain plan including all attributes for
SELECT  cust.custAddress,
       lineitem.provider
FROM (
      SELECT cast(c_custkey AS bigint) AS custkey,
             c_address                 AS custAddress
      FROM   `table_stats/tpch-multi/customer` ) cust
LEFT JOIN
  (
    SELECT DISTINCT l_linenumber,
           CASE
             WHEN l_partkey IN (1, 2) THEN 'Store1'
             WHEN l_partkey IN (5, 6) THEN 'Store2'
           END AS provider
    FROM  `table_stats/tpch-multi/lineitem`
    WHERE ( l_orderkey >=20160101 AND l_partkey <=20160301)
      AND   l_partkey IN (1,2, 5, 6) ) lineitem
ON        cust.custkey = lineitem.l_linenumber
WHERE     provider IS NOT NULL
GROUP BY  cust.custAddress,
          lineitem.provider
ORDER BY  cust.custAddress,
          lineitem.provider;
