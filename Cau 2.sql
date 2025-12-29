create database if not exists bai2ss03;
use bai2ss03;

create table if not exists studentss03 (
    student_id int primary key,
    full_name varchar(30) not null,
    date_of_birth date,
    email varchar(30) unique
);

insert into studentss03 (student_id, full_name, date_of_birth, email)
values
(1, 'Nguyễn Văn A', '2003-05-12', 'an.nguyen@gmail.com'),
(2, 'Nguyễn Văn B', '2002-09-20', 'binh.tran@gmail.com'),
(3, 'Nguyễn Văn C', '2003-01-15', 'anh.le@gmail.com'),
(5, 'Nguyễn Văn D', '2001-08-10', 'd.nguyen@gmail.com');

update studentss03
set email = 'nguyenvanc@gmail.com'
where student_id = 3;

update studentss03
set date_of_birth = '2006-12-12'
where student_id = 2;

delete from studentss03
where student_id = 5;

select * from studentss03;

select student_id, full_name
from studentss03;
