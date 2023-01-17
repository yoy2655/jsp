create sequence bo_seq
increment by 1
start with 1
minvalue 1
maxvalue 1000;

create table board(
num number primary key,
writer varchar2(20),
email varchar2(50),
subject varchar2(50),
password varchar2(10),
reg_date date,
ref number,
re_step number,
re_level number,
readcount number,
content varchar2(500));
