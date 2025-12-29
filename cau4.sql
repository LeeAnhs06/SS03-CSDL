create database if not exists bai4ss03;
use bai4ss03;

create table if not exists studentss03 (
    student_id int primary key,
    full_name varchar(30),
    date_of_birth date,
    email varchar(30)
);

create table if not exists subject (
    subject_id int primary key,
    subject_name varchar(50),
    credit int check (credit >0 )
);

create table if not exists enrollment (
    student_id int,
    subject_id int,
    enroll_date date,
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

insert into enrollment (student_id, subject_id, enroll_date)
values
(1, 1, '2024-09-01'),
(1, 2, '2024-09-01'),
(2, 1, '2024-09-02');

select * from enrollment;

select * from enrollment
where student_id = 1;
