create table  student (
id int(3) zerofill auto_increment primary key,
name varchar(10),
age int,
sex  enum('female','male')
);



create table subject (
id int  auto_increment primary key,
subject varchar(10),
teacher varchar(20),
description varchar(30)
);

alter table subject auto_increment= 1000;
create table score (
id int  auto_increment+1000 primary key,
student_id int references student(id),
subject_id int references subject(id),
score double
);


insert into student(name,age,sex) values ('zhangsan',18,'2'),('lisi',20,'1');
insert into subject(subject,teacher,description) values ('Chinese','Mr. Wang','the exam is easy'),('math','Miss Liu','the exam is difficult');
insert into score(student_id,subject_id,score) values (001,1001,80),(002,1002,60),(001,1001,70),(002,1002,60.5);

