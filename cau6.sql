drop database if exists bai06ss03;
create database bai06ss03;
use bai06ss03;

create table student (
    student_id int primary key,
    full_name varchar(30),
    date_of_birth date,
    email varchar(30)
);

create table subject (
    subject_id int primary key,
    subject_name varchar(50),
    credit int
);

create table enrollment (
    student_id int,
    subject_id int,
    enroll_date date,
    primary key (student_id, subject_id)
);

create table score (
    student_id int,
    subject_id int,
    mid_score float,
    final_score float,
    primary key (student_id, subject_id)
);

insert into student values
(1, 'nguyễn văn a', '2003-05-12', 'a@gmail.com');

insert into subject values
(1, 'cơ sở dữ liệu', 3),
(2, 'lập trình java', 4),
(3, 'mạng máy tính', 3);

insert into enrollment values
(1, 1, '2024-09-01'),
(1, 2, '2024-09-01');

insert into score values
(1, 1, 7, 7.5),
(1, 2, 6, 6.5);

update score
set final_score = 8.5
where student_id = 1 and subject_id = 1;

delete from enrollment
where student_id = 1 and subject_id = 2;

select 
    s.student_id,
    s.full_name,
    sub.subject_name,
    sc.mid_score,
    sc.final_score
from student s
join score sc on s.student_id = sc.student_id
join subject sub on sc.subject_id = sub.subject_id;
select * from student