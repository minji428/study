use mhp;

CREATE TABLE member(
	id VARCHAR(50),
    pw VARCHAR(16),
    name VARCHAR(10),
    nickname VARCHAR(10),
    reg_date VARCHAR(50),
    tel VARCHAR(20),
    address VARCHAR(100),
	email VARCHAR(20)
);

drop table member;

select * from member;