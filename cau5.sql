create database if not exists bai5ss03;
use bai5ss03;

create table if not exists studentss03 (
    student_id int primary key,
    full_name varchar(30),
    date_of_birth date,
    email varchar(30)
);

create table if not exists subject (
    subject_id int primary key,
    subject_name varchar(50),
    credit int check ( credit >0 )
);

create table if not exists score (
    student_id int,
    subject_id int,
    mid_score float check (mid_score between 0 and 10),
    final_score float check (final_score between 0 and 10),
    primary key (student_id, subject_id),
    foreign key (student_id) references studentss03(student_id),
    foreign key (subject_id) references subject(subject_id)
);

insert into studentss03 (student_id, full_name, date_of_birth, email)
values
(1, 'nguyễn văn a', '2003-05-12', 'a@gmail.com'),
(2, 'nguyễn văn b', '2002-09-20', 'b@gmail.com');

insert into subject (subject_id, subject_name, credit)
values
(1, 'cơ sở dữ liệu', 3),
(2, 'lập trình java', 4);

insert into score (student_id, subject_id, mid_score, final_score)
values
(1, 1, 7.5, 8.0),
(1, 2, 6.5, 7.0),
(2, 1, 8.0, 9.0);

update score
set final_score = 8.5
where student_id = 1 and subject_id = 2;

select * from score;

select * from score
where final_score >= 8;
