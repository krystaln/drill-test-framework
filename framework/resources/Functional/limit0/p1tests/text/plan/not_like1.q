explain plan for select * from ( select voter_id, name, registration, contributions, voterzone, create_time,isVote from voter_csv_v where name not like '%a%' ) t limit 0;
