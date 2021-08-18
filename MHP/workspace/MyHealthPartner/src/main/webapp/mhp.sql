use mhp;

drop table member;
CREATE TABLE member(
	id VARCHAR(50),
    pw VARCHAR(16),
    name VARCHAR(10),
    nickname VARCHAR(10),
    date VARCHAR(10),
    reg_date VARCHAR(50),
    tel VARCHAR(20),
    address VARCHAR(100),
	email VARCHAR(20)
);

select * from member;

insert into member values('qwer', 1234, 'qwer', 'qwer', '19980428', now(), '010-1234-5678', '서울시','asdf@sdf.cdf');

SELECT * FROM member WHERE name='qwer' and id='qwer' and tel='010';