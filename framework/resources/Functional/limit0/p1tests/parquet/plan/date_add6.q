explain plan for select * from ( select date_add(create_time, interval '-3' HOUR) from voter_parquet_v where voter_id=10 ) t limit 0;
