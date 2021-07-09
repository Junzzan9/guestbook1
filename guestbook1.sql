--계정생성
create user guestbook1 identified by guestbook1; 
grant resource, connect to guestbook1;




--테이블 삭제
drop table guestbook;

--시퀀스 삭제
drop sequence seq_no;

--테이블 생성
create table 	guestbook(
    no			number,
    name   		varchar2(80),
    password	varchar2(20),
    content		varchar2(2000),
    reg_date	 date
    PRIMARY KEY(no)	
);

--시퀀스 생성
CREATE SEQUENCE seq_no
INCREMENT BY 1 
START WITH 1 ;



commit;
