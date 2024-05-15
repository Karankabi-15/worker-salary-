use kabi;
select * from empsalary;
select sum(salary) from empsalary;
select employee_residence,employment_type,count(salary_in_usd) from empsalary group by employee_residence,employment_type,company_location having company_location="CA";
select avg(salary) from empsalary;
delimiter $$
create procedure reuse()
begin
 select* from empsalary;
 select experience_level from empsalary;
 end $$
 call reuse();
 
 drop procedure reuse;
 drop procedure if exists reuse;