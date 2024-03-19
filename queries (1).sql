create table branch(
branch_id int not null primary key,
branch_name varchar(20) not null,
location varchar(20)null
);
--insertion 
insert INTO branch VALUEs(36,' cse','01');
insert INTO branch VALUEs(37,' it','02');
insert INTO branch VALUEs(38,' ece','03');
insert INTO branch VALUEs(39,' ds','04');
insert INTO branch VALUEs(40,' aiml','05');
insert INTO branch VALUEs(41,' aero','06');
go 

select * from branch ;
go


create table student(
student_id int not null primary key,
student_name varchar(20) not null,
student_branch varchar(20) null,
student_branch_id int not null foreign key references branch(branch_id)
);

go 
insert INTO student values (32,'jashwanth','it',02);
insert into student values (42,'manohar','it',06);
insert into student values(48,'naresh','it',05);
insert into student values(62,'ranesh','it',04);
insert into student values(04,'abhi','it',03);
insert into student values(38,'lohith','it',01);
go
select * from student;