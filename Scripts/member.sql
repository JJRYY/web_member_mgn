CREATE TABLE member (
	id  varchar(15)    NOT null,
	password    char(41),
	name  varchar(15), 
	age int(11),   
	gender varchar(5),
	email varchar(30),
	primary key(id)
);

drop table member;

select * from member;
desc member;

insert into member values(1, password('1111'), '김상건', 40, '여자', 'text@test.co.kr');
insert into member values(2, password('1111'), '김상건2', 40, '남자', 'text2@test.co.kr');
insert into member values('admin', password('rootroot'), '김재룡', 30, '남자', 'kjr@test.co.kr');

select id, name, age, gender, email from member where id = 1 and password = password('1111');

select id, name, age, gender, email from member where id != 'admin';