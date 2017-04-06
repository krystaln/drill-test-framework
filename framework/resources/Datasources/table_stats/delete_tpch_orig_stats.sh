#!/bin/bash
source conf/drillTestConfig.properties

set -x

hadoop fs -test -d /drill/testdata/table_stats/Tpch0.01/parquet/customer/.stats.drill
dirExists_tpch_customer=$?
if [ $dirExists_tpch_customer -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/Tpch0.01/parquet/customer/.stats.drill
fi
hadoop fs -test -d /drill/testdata/table_stats/Tpch0.01/parquet/lineitem/.stats.drill
dirExists_tpch_lineitem=$?
if [ $dirExists_tpch_lineitem -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/Tpch0.01/parquet/lineitem/.stats.drill
fi
hadoop fs -test -d /drill/testdata/table_stats/Tpch0.01/parquet/nation/.stats.drill
dirExists_tpch_nation=$?
if [ $dirExists_tpch_nation -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/Tpch0.01/parquet/nation/.stats.drill
fi
hadoop fs -test -d /drill/testdata/table_stats/Tpch0.01/parquet/orders/.stats.drill
dirExists_tpch_orders=$?
if [ $dirExists_tpch_orders -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/Tpch0.01/parquet/orders/.stats.drill
fi
hadoop fs -test -d /drill/testdata/table_stats/Tpch0.01/parquet/part/.stats.drill
dirExists_tpch_part=$?
if [ $dirExists_tpch_part -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/Tpch0.01/parquet/part/.stats.drill
fi
hadoop fs -test -d /drill/testdata/table_stats/Tpch0.01/parquet/partsupp/.stats.drill
dirExists_tpch_partsupp=$?
if [ $dirExists_tpch_partsupp -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/Tpch0.01/parquet/partsupp/.stats.drill
fi
hadoop fs -test -d /drill/testdata/table_stats/Tpch0.01/parquet/region/.stats.drill
dirExists_tpch_region=$?
if [ $dirExists_tpch_region -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/Tpch0.01/parquet/region/.stats.drill
fi
hadoop fs -test -d /drill/testdata/table_stats/Tpch0.01/parquet/supplier/.stats.drill
dirExists_tpch_supplier=$?
if [ $dirExists_tpch_supplier -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/Tpch0.01/parquet/supplier/.stats.drill
fi

set +x
