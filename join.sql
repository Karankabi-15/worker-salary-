use kabi;
create table std11 (std_id int primary key auto_increment,
first_name varchar(20) not null,
last_name varchar(20)default('no'),
e_mail varchar(30),
deprt varchar(30),
age int check(age>18),
mobile_number numeric(20),
pan_card varchar(30) unique);

insert into std11 (first_name,last_name,e_mail,deprt,age,mobile_number,pan_card) 
values ("abi","mani","abimani5365@gmail.com","mca",19,9878676576,"GUYDGE56756");
insert into std11 (first_name,last_name,e_mail,deprt,age,mobile_number,pan_card) 
values ("bala","kumar","balakumar535@gmail.com","mca",19,978358667,"ITGVC6736GFD");
insert into std11 (first_name,last_name,e_mail,deprt,age,mobile_number,pan_card) 
values ("mani","maran","manimaran1360@gmail.com","msc",19,907867577,"HIHVIO66DTVB");
insert into std11 (first_name,last_name,e_mail,deprt,age,mobile_number,pan_card) 
values ("rahul","raj","rahulraj5365@gmail.com","mcom",19,956765654,"");
insert into std11 (first_name,last_name,e_mail,deprt,age,mobile_number,pan_card) 
values ("kamesh","kanan","kameshkannan5365@gmail.com","Bsc",21,998634215,"GUY4U7678DNHB");
insert into std11 (first_name,last_name,e_mail,deprt,age,mobile_number,pan_card) 
values ("kayal","","kayalai5365@gmail.com","mca",19,9655887899,"");
insert into std11 (first_name,last_name,e_mail,deprt,age,mobile_number) 
values ("abi","mani","abimani5365@gmail.com","mca",19,9878676576);
insert into std11 (first_name,last_name,e_mail,deprt,age,mobile_number) 
values ("abi","mani","abimani5365@gmail.com","mca",19,9877676576);
insert into std11 (first_name,e_mail,deprt,age,mobile_number) 
values ("gokul","rajkrishnan65@gmail.com","mca",19,9878676576);
drop table std1;
 update std11 set pan_card="HHIIHHHGKF" where std_id=8;
 select *from tcs1;
 select * from std11 where last_name like "%ran";
 select std_id, min(age) from std11 where age between 16 and 25 ;
 use kabi;
 select emp_id,max(salary) from tcs1 where salary between 0 and 1000;
 select emp_name,salary,count(emp_id) from tcs1  group by  emp_name ,salary order by emp_name desc ;
 create table emp1
 select * from tcs1;
 select * from emp1;
 create table emp2
 select emp_id ,emp_name,salary from tcs1;
 select * from emp2;
show full tables;
select * from tcs1 where  not emp_name="sudha";
select emp_id,min(salary),count(*)from tcs1 where salary between 50000 and 100000 ;
select  emp_name from tcs1
group by emp_name limit 5;
select * from staff;
alter table staff add deprt varchar(50);
update staff set dept="cs1" where staff_id=101;
update staff set dept="cs2" where staff_id=102;
update staff set dept="mca" where staff_id=103;
update staff set dept="ca1" where staff_id=104;
update staff set dept="ca2" where staff_id=105;
update staff set dept="bca" where staff_id=106;
select * from tcs1;
alter table tcs1
change column deprtment dept varchar(50);
update tcs1 set dept="cs1" where emp_id="tc1";
update tcs1 set dept="cs2" where emp_id="tc2";
update tcs1 set dept="mca" where emp_id="tc3";
update tcs1 set dept="ca1" where emp_id="tc4";
select tcs1.emp_id,tcs1.emp_name,staff.staff_id,first_name from tcs1 right join staff on tcs1.dept=staff.dept;
select tcs1.emp_id,tcs1.emp_name,staff.staff_id,first_name from tcs1 left join staff on tcs1.dept=staff.dept;
select tcs1.emp_id,tcs1.emp_name,staff.staff_id,first_name from tcs1 full join staff on tcs1.dept=staff.dept;
 
 
