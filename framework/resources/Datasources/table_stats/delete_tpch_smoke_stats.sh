#!/bin/bash
source conf/drillTestConfig.properties

set -x

hadoop fs -test -d /drill/testdata/table_stats/tpch-multi/customer/.stats.drill
dirExists_tpch_multi_customer=$?
if [ $dirExists_tpch_multi_customer -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/tpch-multi/customer/.stats.drill
fi
hadoop fs -test -d /drill/testdata/table_stats/tpch-multi/lineitem/.stats.drill
dirExists_tpch_multi_lineitem=$?
if [ $dirExists_tpch_multi_lineitem -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/tpch-multi/lineitem/.stats.drill
fi
hadoop fs -test -d /drill/testdata/table_stats/tpch-multi/nation/.stats.drill
dirExists_tpch_multi_nation=$?
if [ $dirExists_tpch_multi_nation -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/tpch-multi/nation/.stats.drill
fi
hadoop fs -test -d /drill/testdata/table_stats/tpch-multi/orders/.stats.drill
dirExists_tpch_multi_orders=$?
if [ $dirExists_tpch_multi_orders -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/tpch-multi/orders/.stats.drill
fi
hadoop fs -test -d /drill/testdata/table_stats/tpch-multi/part/.stats.drill
dirExists_tpch_multi_part=$?
if [ $dirExists_tpch_multi_part -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/tpch-multi/part/.stats.drill
fi
hadoop fs -test -d /drill/testdata/table_stats/tpch-multi/partsupp/.stats.drill
dirExists_tpch_multi_partsupp=$?
if [ $dirExists_tpch_multi_partsupp -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/tpch-multi/partsupp/.stats.drill
fi
hadoop fs -test -d /drill/testdata/table_stats/tpch-multi/region/.stats.drill
dirExists_tpch_multi_region=$?
if [ $dirExists_tpch_multi_region -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/tpch-multi/region/.stats.drill
fi
hadoop fs -test -d /drill/testdata/table_stats/tpch-multi/supplier/.stats.drill
dirExists_tpch_multi_supplier=$?
if [ $dirExists_tpch_multi_supplier -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/tpch-multi/supplier/.stats.drill
fi

set +x
