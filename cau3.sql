create database if not exists bai3ss03;
use bai3ss03;

create table if not exists subject (
    subject_id int primary key,
    subject_name varchar(50) not null,
    credit int check (credit > 0)
);

insert into subject (subject_id, subject_name, credit)
values
(1, 'cơ sở dữ liệu', 3),
(2, 'lập trình java', 4),
(3, 'mạng máy tính', 3);

update subject
set credit = 5
where subject_id = 2;

update subject
set subject_name = 'hệ quản trị cơ sở dữ liệu'
where subject_id = 1;

select * from subject;

select subject_id, subject_name
from subject;
