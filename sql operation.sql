use students;
select * from student;
select * from branch;
select * from course;
#1 Upper
select upper(stud_name) from student where stud_id=101;
select upper(stud_name) from student;
select * from student;
#2 Lower
select lower(stud_name) from student where stud_id=101;
select lower(stud_name) from student;
select lower(stud_name) from student where stud_id<>101;
#3 instr
select instr(stud_name,"esh") as matchposition from student;
select instr("vinoth_kumar","kumar") as matchposition;
#4substr
select substr('Rakesh',4,6) as ExtractString;
select substr(stud_name,4,6) from student;
select substr(stud_name,4,1) from student;
#5trim
select trim('    Project of Rakesh') as TrimmedString;
select trim(stud_name) as trimmed from student;
#ltrim
select ltrim('    project of Rakesh             ') as lTrim;
select ltrim(stud_name) as ltirm from student;
#rtrim
select rtrim('Project of Rakesh         ') as rtrim;
select rtrim(stud_name) as rtrim from student;
#round
select * from student;
select round(branch_id) from student;
select round(565.7) as rounded;
#replace
select replace("sql tutorial", "sql","html") as replaced;
select replace(stud_name,"rakesh","ram") as replaced from student;
select replace(stud_name,"rak","rakesh") as replaced from student;
#reverse
select reverse("rakesh") as reversed;
select reverse(stud_name) as reversed from student;
select reverse(stud_name) as reversed from student;
select * from student;
#Ceil
select ceil(155.2) as ceiled;
select ceil(course_id) as ceiled from student;
#floor
select floor(156.8) as ceiled;
select floor(course_id) as ceiled from student;
#mod gives remainder
select mod(18,4);
select mod(branch_id,course_id) from student;
#power
select power(144,3);
select power(2,3);
select power(branch_id,stud_id) from student;
#date_add function
select date_add("2024-02-15",interval 10 Day);
select date_add("2024-02-15",interval 2 year);
use students;
select * from student;
select date_add(joining_date,interval 10 day) from student;
#date_sub
select date_sub("2017-06-15",interval 10 day);
select date_sub("2017-06-15",interval 3 year);
select date_sub(joining_date,interval 5 day) from student;
use students;
select * from student;
#month
select month("1999-07-21");
select month("2024-2-15");
select month("2024-2-15 10:28:12");
select curdate();
select month(curdate());
select month(joining_date) from student;
#monthname
select monthname(joining_date) from student;
#year
select year('2000-01-12');
select year(joining_date) from student;
#extract
select * from student;
select extract(month from '1999-07-21');
select extract(month from joining_date) from student;
#day and dayname
select day('1999-07-21');
select dayname('1999-07-21');
select dayname(joining_date) from student;
#dayofmonth
select dayofmonth('1999-07-21');
select dayofmonth(joining_date) from student;
#convert
select * from student;
select convert('1999-07-21',date);
select convert(joining_date,date) from student;
select convert(joining_date,datetime) from student;
#datetime,fromtimezone,totimezone
select convert_tz('2015-2-15 22:57:00','+00:00','+10:00');
select convert_tz(joining_date,'+00:00','+10:00') from student;
#cast
select cast('2024-02-15' as date);
select cast(21 as char);
select cast('2024-02-15' as char);
select cast(joining_date as date) from student;
#like
select * from student;
select * from student where stud_name like '%en';
#not like
select * from student where stud_name not like '%esh';
#between
select * from student;
select * from student where joining_date between '2024-02-01' and '2024-02-08';
select * from student where joining_date between '2024-02-01' and '2024-02-07';
#Union 
select stud_id,stud_name from student as t1 union select stud_id,stud_name from student as t2;
#unionall
select stud_id,stud_name from student as t1 union all select stud_id,stud_name from student as t2;
#in
select * from student;
select * from student where course_id in(select course_id from course);
select * from student where course_id in(select course_id from course where course_id=1);
select * from student where course_id in(select course_id from course where course_id=4);
#>all
select * from student where course_id >all(select course_id from course where course_id=1);
#<all
select * from student where course_id <all(select course_id from course where course_id=4);
#>any
select * from student where course_id >any(select course_id from course where course_id=2);          
select * from student where course_id>any(select course_id from course where course_id=3 or course_id=2);  #finds bigger than any lowest among two
#<any
select * from student where course_id <any(select course_id from course where course_id=4);
select * from student where course_id <any(select course_id from course where course_id=3 or course_id=2); #finds lower than any highest among two
#=all
select * from student where course_id=all(select course_id from course where course_name='data analyst');
select * from student where course_id=any(select course_id from course where course_name='data analyst');
#sysdate
select sysdate();
select dayname(sysdate());
select curdate();
select dayname(curdate());
select now();
select dayname(now());
select current_timestamp();
#create table timestampdemo(id int,dt2 timestamp default current_timestamp on update current_timestamp)
create table timestampdemo(id int,dt2 timestamp default current_timestamp on update current_timestamp);
select current_date();
select dayname('1999-07-21');
select dayofmonth('1999=07-21');
select extract(month from '2017-06-12');
select extract(year from '2017-06-12');
select nullif(25,23);
select nullif(25,25);
select isnull(null);
select isnull('null');
select ifnull(null,500);
select ifnull('null',500);
select length(stud_name) from student;
select lpad(stud_name,8,"mr") from student;
SELECT LPAD("SQL Tutorial", 20, "ABC");
select rpad(stud_name,9,"IAS") from student;
select * from student;
select concat(stud_name,stud_address) from student;
select concat('hello','world');
select abs(-243.5);
select abs(-243.7);
select coalesce(null,null,null,'school',null,'123');               #function returns first non null value in the list
select coalesce(null,null,null,'123');
select coalesce(null,null,null,'123',null,'school');
#Case
select * from student;
select stud_id,stud_name,
case
when stud_name='rakesh' then 'Data Analyst'
when stud_name='iyappan' then 'network engineer'
else 'others'
end as positions
from student;
select upper(stud_name) from student;
select lower(stud_name) from student;
use students;
select date_add(joining_date, interval 10 day) from student;
select extract(month from joining_date) from student;
select extract(year from joining_date) from student;
select dayname(joining_date) from student;
select cast(branch_id as float) from student;
select convert_tz(joining_date,'+00:00','+10:00') from student;
select * from student;
select * from student;
select stud_id,stud_name,
case 
when stud_name='rakesh' then 'data analyst'
when stud_name='sankar2' then 'data analyst'
when stud_name='naveen' then 'doctor'
else 'others'
end
as postions from student;