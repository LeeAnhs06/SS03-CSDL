create database if not exists Bai1ss03;
use Bai1ss03;

create table Student (
 student_id int primary key,
 full_name varchar(30) not null,
 date_of_birth date,
 email varchar(30) unique
);

insert into Student (student_id, full_name, date_of_birth, email)
values
(01, 'Nguyễn Văn A', '2003-05-12', 'an.nguyen@gmail.com'),
(02, 'Nguyễn Văn B', '2002-09-20', 'binh.tran@gmail.com'),
(03, 'Nguyễn Văn C', '2003-01-15', 'anh.le@gmail.com');

select * from Student;

select student_id, full_name
from Student;