drop database if exists quan_li_diem_thi;
create database if not exists quan_li_diem_thi;

use quan_li_diem_thi;

create table student(
id_student int primary key,
name_student varchar(20),
birthday_student datetime,
class_student varchar(10),
information_stu varchar(20)
);

create table `subject` (
id_sub int primary key,
name_sub varchar(20),
id_teacher int
);

create table pointtable(
id_student int,
id_sub int,
point_test int,
datetest datetime,
primary key (id_student,id_sub),
foreign key (id_student) references student(id_student),
foreign key (id_sub) references `subject`(id_sub)
);

create table teacher (
id_teacher int primary key,
name_teacher varchar(20),
phonenumber varchar(10)
);

alter table `subject` add constraint fk_id_teacher foreign key (id_teacher) references teacher(id_teacher);


