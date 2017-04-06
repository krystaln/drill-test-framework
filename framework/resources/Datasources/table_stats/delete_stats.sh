#!/bin/bash
source conf/drillTestConfig.properties

set -x

hadoop fs -test -d /drill/testdata/table_stats/alltypes_with_nulls/.stats.drill
dirExists_alltypes_with_nulls=$?
if [ $dirExists_alltypes_with_nulls -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/alltypes_with_nulls/.stats.drill
fi

hadoop fs -test -d /drill/testdata/table_stats/date_intervals/.stats.drill
dirExists_date_intervals=$?
if [ $dirExists_date_intervals -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/date_intervals/.stats.drill
fi

hadoop fs -test -d /drill/testdata/table_stats/impala_parquet/.stats.drill
dirExists_impala_parquet=$?
if [ $dirExists_impala_parquet -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/impala_parquet/.stats.drill
fi

hadoop fs -test -d /drill/testdata/table_stats/onlynulls_parquet/.stats.drill
dirExists_onlynulls_parquet=$?
if [ $dirExists_onlynulls_parquet -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/onlynulls_parquet/.stats.drill
fi

hadoop fs -test -d /drill/testdata/table_stats/DRILL-4735/.stats.drill
dirExists_DRILL-4735=$?
if [ $dirExists_DRILL-4735 -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/DRILL-4735/.stats.drill
fi

hadoop fs -test -d /drill/testdata/table_stats/inNstedDirAutoPrtn/.stats.drill
dirExists_inNstedDirAutoPrtn=$?
if [ $dirExists_inNstedDirAutoPrtn -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/inNstedDirAutoPrtn/.stats.drill
fi

hadoop fs -test -d /drill/testdata/table_stats/lineitem_parquet_partitioned_hive_date/.stats.drill
dirExists_lineitem_parquet_partitioned_hive_date=$?
if [ $dirExists_lineitem_parquet_partitioned_hive_date -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/lineitem_parquet_partitioned_hive_date/.stats.drill
fi

hadoop fs -test -f /drill/testdata/table_stats/lineitem_parquet_partitioned_hive_date/.drill.parquet_metadata*
dirExists_lineitem_parquet_partitioned_hive_date_meta=$?
if [ $dirExists_lineitem_parquet_partitioned_hive_date_meta -eq 0 ]; then
   hadoop fs -rm /drill/testdata/table_stats/lineitem_parquet_partitioned_hive_date/.drill.parquet_metadata*
fi

hadoop fs -test -d /drill/testdata/table_stats/parquet_alltypes1/.stats.drill
dirExists_parquet_alltypes1=$?
if [ $dirExists_parquet_alltypes1 -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/parquet_alltypes1/.stats.drill
fi

hadoop fs -test -d /drill/testdata/table_stats/parquet_alot_nulls/.stats.drill
dirExists_parquet_alot_nulls=$?
if [ $dirExists_parquet_alot_nulls -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/parquet_alot_nulls/.stats.drill
fi

hadoop fs -test -d /drill/testdata/table_stats/parquet_col_empty/.stats.drill
dirExists_parquet_col_empty=$?
if [ $dirExists_parquet_col_empty -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/parquet_col_empty/.stats.drill
fi

hadoop fs -test -d /drill/testdata/table_stats/parquet_col_nulls/.stats.drill
dirExists_parquet_col_nulls=$?
if [ $dirExists_parquet_col_nulls -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/parquet_col_nulls/.stats.drill
fi

hadoop fs -test -d /drill/testdata/table_stats/ps_5level/.stats.drill
dirExists_ps_5level=$?
if [ $dirExists_ps_5level -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/ps_5level/.stats.drill
fi

hadoop fs -test -d /drill/testdata/table_stats/spark_generated/.stats.drill
dirExists_spark_generated=$?
if [ $dirExists_spark_generated -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/spark_generated/.stats.drill
fi

hadoop fs -test -d /drill/testdata/table_stats/voter_hive_parquet/.stats.drill
dirExists_voter_hive_parquet=$?
if [ $dirExists_voter_hive_parquet -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/voter_hive_parquet/.stats.drill
fi

hadoop fs -test -d /drill/testdata/table_stats/hive_alltypes/.stats.drill
dirExists_hive_alltypes=$?
if [ $dirExists_hive_alltypes -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/hive_alltypes/.stats.drill
fi

hadoop fs -test -d /drill/testdata/table_stats/data_with_0/.stats.drill
dirExists_data_with_0=$?
if [ $dirExists_data_with_0 -eq 0 ]; then
   hadoop fs -rm -r /drill/testdata/table_stats/data_with_0/.stats.drill
fi

set +x
