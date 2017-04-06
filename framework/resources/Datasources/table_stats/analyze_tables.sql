alter session set `store.parquet.reader.int96_as_timestamp`=true;
analyze table `table_stats/alltypes_with_nulls` compute statistics;
analyze table `table_stats/date_intervals` compute statistics;
analyze table `table_stats/impala_parquet` compute statistics;
--analyze table `table_stats/onlynulls_parquet` compute statistics;
analyze table `table_stats/DRILL-4735` compute statistics;
analyze table `table_stats/inNstedDirAutoPrtn` compute statistics;
refresh table metadata `table_stats/lineitem_parquet_partitioned_hive_date`;
analyze table `table_stats/lineitem_parquet_partitioned_hive_date` compute statistics;
analyze table `table_stats/parquet_alltypes1` compute statistics;
analyze table `table_stats/parquet_alot_nulls` compute statistics;
analyze table `table_stats/parquet_col_empty` compute statistics;
analyze table `table_stats/parquet_col_nulls` compute statistics;
analyze table `table_stats/ps_5level` compute statistics;
analyze table `table_stats/spark_generated` compute statistics;
analyze table `table_stats/voter_hive_parquet` compute statistics;
analyze table `table_stats/hive_alltypes` compute statistics (c1,c2,c3,c4,c9,c10,c11,c12,n);
analyze table `table_stats/data_with_0` compute statistics (non_exist_col,bigint_col,bigint_col,int_col,bigint_col);
alter session set `store.parquet.reader.int96_as_timestamp`=false;
