explain plan for select * from ( select sqrt(student_id),sqrt(age),sqrt(gpa),sqrt(studentnum) from student_parquet_v where student_id=10 ) t limit 0;
