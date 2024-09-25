--MYSQL SQL 학습

1. DDL 언어 학습하기
1-1.create 문

creat table 테이블이름(
컬럼이름 컬럼타입 컬럼크기 null여부 컬럼기본값 제약조건.
컬럼이름 컬럼타입 컬럼크기 null여부 컬럼기본값 제약조건.
컬럼이름 컬럼타입 컬럼크기 null여부 컬럼기본값 제약조건.

);

-- 회원테이블 MEMBER를 생성하고 다음과 같은각 회원정보를 등록하세요


-- 회원번호 midx 타입은 숫자형, null은 허용하지않음, 주요키(primary key) 등록
-- 회원아이디 memberid 타입은 문자형, 크기를 100byte null허용안함
-- 회원비밀번호 memberpwd 타입은 문자형,크기를 100byte null허용안함
-- 회원이름 membername 타입은 문자형, 크기 100byte null허용안함
-- 회원성별 membergender 타입은 문자형 크기는 1byte null허용안함(남성은 m입력 여성은f)
-- 회원생년월일 memberbirth 타입은 숫자형 크기는 8byte null허용안함
-- 회원주소 memberaddr 타입은 문자형 크기는 10byte null허용
-- 회원전화 memberphone 타입은 문자형 null허용
-- 회원이메일 membereamil 타입은 문자형 크기는 100byte null허용
-- 회원취미 memberhabby 타입은 문자형 크기는 100byte null허용
-- 탈퇴여부 delyn 타입은 고정문자형 크기는 1byte 기본값은 N null허용안함
-- 회원등록일 writeday 타입은 날짜형 기본값은 시스템 날짜(now()함수) null허용안함
-- 회원ip memberip 타입은 문자형 크기는 20byte null허용


-- 입력
-- 1 hong 1234 홍길동 M 19990101 대전 01047478585 hong@naver.com 축구 N 2024-09-25 211.155.244.37



-- 테이블 스키마 생성
create table MEMBER (
midx int not null auto_increment primary key,
memberid varchar(100) not null,
memberpwd varchar(100) not null,
membername VARCHAR(100) not null,
membergender char(1) not null,
memberbirth int not null,
memberaddr varchar(10) null,
memberphone varchar(20) null,
membereamil varchar(100) null,
memberhobby varchar(100) null,
delyn char(1) default 'N' not null,
writeday DATETIME DEFAULT now() not null,
memberip varchar(20) null
);

-- 테이블 이름 대소문자 확인방법(1:대소문자 안함, (): 대소문자구분)
-- show variables like 'lower_case_table_names';

-- DML 언어중 insert 명령어로 데이터 입력

-- 형식 :
-- intsert into 테이블이름(컬럼1, 컬럼2, 컬럼3....) values(값,값,값...);  -- 값을 입력할 때 문자값은 "안에 입력한다

insert into member(memberid,memberpwd,membername,membergender,memberbirth,memberaddr,memberphone,membereamil,memberhobby)
values('hong','1234','홍길동','M',19990101,'대전','01047478585','hong@naver.com','축구');


1-2. alter구문 사용해서 컬럼 변경하기(기존데이터를 삭제하고 컬럼을 변경해야하나 삭제 할 수 없는 상황이라면 변경시 데이터를 미리 백업한다.)

형식 : alter table 테이블이름
컬럼 추가 add
컬럼 수정 modify
컬럼 삭제 drop
컬럼 이름변경 rename

alter table member
MODIFY memberbirth varchar(10) null;


샘플데이터 입력하기
insert into member(memberid,memberpwd,membername,membergender,memberbirth,memberaddr,memberphone,membereamil,memberhobby)
values('hong','1234','홍길동','M','19990101','대전','01047478585','hong@naver.com','축구');

insert into member(memberid,memberpwd,membername,membergender,memberbirth,memberaddr,memberphone,membereamil,memberhobby)
values('lee','1234','이순신','M','19990102','서울','01047478586','lee@naver.com','야구');

insert into member(memberid,memberpwd,membername,membergender,memberbirth,memberaddr,memberphone,membereamil,memberhobby)
values('kang','1234','강감찬','M','19980701','부산','01012345678','kang@naver.com','농구');

insert into member(memberid,memberpwd,membername,membergender,memberbirth,memberaddr,memberphone,membereamil,memberhobby)
values('you','1234','유관순','F','19960203','대구','01045678912','you@naver.com','배구');

insert into member(memberid,memberpwd,membername,membergender,memberbirth,memberaddr,memberphone,membereamil,memberhobby)
values('do','1234','세종','M','19880301','광주','01033335698','do@naver.com','낚시');

insert into member(memberid,memberpwd,membername,membergender,memberbirth,memberaddr,memberphone,membereamil,memberhobby)
values('leelee','1234','이이','M','19550401','인천','01078962156','leelee@naver.com','농구');

insert into member(memberid,memberpwd,membername,membergender,memberbirth,memberaddr,memberphone,membereamil,memberhobby)
values('jojo','1234','조조','M','19920502','대전','01087953145','jojo@naver.com','축구');

insert into member(memberid,memberpwd,membername,membergender,memberbirth,memberaddr,memberphone,membereamil,memberhobby)
values('son','1234','손흥민','M','19920806','부천','01075214632','son@naver.com','축구');

insert into member(memberid,memberpwd,membername,membergender,memberbirth,memberaddr,memberphone,membereamil,memberhobby)
values('jang','1234','장비','M','19960623','낙양','01041203692','jang@naver.com','게임');

insert into member(memberid,memberpwd,membername,membergender,memberbirth,memberaddr,memberphone,membereamil,memberhobby)
values('ark','1234','잔다르크','F','19991013','파리','01078963025','ark@naver.com','제빵');

insert into member(memberid,memberpwd,membername,membergender,memberbirth,memberaddr,memberphone,membereamil,memberhobby)
values('jangdo','1234','장도현','F','19911102','전주','01073264138','jangdo@naver.com','요리');

insert into member(memberid,memberpwd,membername,membergender,memberbirth,memberaddr,memberphone,membereamil,memberhobby)
values('Tom','1234','톰','M','19750726','시애틀','01056982347','Tom@naver.com','독서');
commit;

-- commit;
-- mysql에서는 자동커밋이 설정되어있다 그래서 commit 명령어를 쓰지않아도 된다.

-- 자동커밋확인 방법
show VARIABLES like 'autocommit';
set autocommit = TRUE;

-- 데이터 삭제 DML구문
delete from member;
COMMIT;

-- DML구문중에 select 구문(데이터를 조회하는 구문)
형식 : select 컬럼1, 컬럼2,컬럼3,컬럼4..... from 테이블이름 where조건절 groupby그룹절 orderby순서정렬;

-- 회원이름을 나열하시오
select membername from member;


-- 회원아이디와 회원 성별을 보여주세요
select memberid,membergender from member;


-- 회원정보 모든 값을 출격해주세요
select *from member;


-- 회원정보중에서 회원이 여성이 회원만 이름을 출력하시오
select membername from member where membergender = 'F'



