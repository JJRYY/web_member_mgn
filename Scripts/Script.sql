select * from member;

desc member;

insert into member values(1, password('1111'), '김상건', 40, '여자', 'text@test.co.kr');

select id, name, age, gender, email from member where id = 1 and password = password('1111');