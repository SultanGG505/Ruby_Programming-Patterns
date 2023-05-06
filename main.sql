drop database university;
create database university;
use university;

create table student (
     id          int auto_increment,
     last_name   varchar(128) not null,
     first_name  varchar(128) not null,
     father_name varchar(128) not null,
     phone       varchar(20) null,
     telegram    varchar(100) null,
     email       varchar(100) null,
     git         varchar(100) null,
     constraint student_pk
         primary key (id)
);
insert into student(last_name, first_name, father_name, phone, telegram, email, git) values
                                                                                         ('Хахук', 'Рустам', 'Нальбиевич', '79186733293', 'deltanull', 'deltanull@vk.ru', 'deltanull'),
                                                                                         ('Ашотов', 'Александр', 'Васеевич', NULL, 'ashottelega', 'ashot@mail.ru', 'ashotgit'),
                                                                                         ('Нагалевский', 'Артем', 'Великий', '79999999999', 'jakekepps', 'jakekepps@gmail.com', 'jakekepps');