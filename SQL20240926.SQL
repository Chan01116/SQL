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

1-3.
-- DDL 언어중에 3번째 table 삭제하기
형식은 drop table 테이블이름;

drop table member;


-- 회원번호 5번인 사람의 아이디와 이름 그리고 사는곳을 출력하세요
select memberid,membername,memberaddr from member where midx = '5'

-- 회원메일중에 네이버 메일을 사용하는 회원정보를 모두 출력해주세요
select *from member where membereamil like '%naver.com%';

-- 회원메일중에 네이버 메일을 사용하고 대전에 사는 회원정보를 모두 출력해주세요
select *from member where membereamil like '%naver.com%' and memberaddr = '대전';


-- 서울에 살고 성별이 여성인 회원의 정보를 출력해주세요
select *from member where membergender = 'F' and memberaddr = '서울';  -- and조건 (교집합)

-- 회원의 성씨가 김씨인 사람의 회원정보를 모두 출력하세요
1. 일단 데이터를 조회한다
select *from member;
2. 앞글자를 가져오는 함수나 like구문을 활용한다
select *from member where membername like '%김%'; -- <- 이구문은 김을 포함하는 모든 값을 뜻한다.  like '김%' <- 김으로 시작하는 모든 값을 뜻한다.
select *from member where SUBSTR(membername,1,1) = '김'; -- 글자자르기를 통해서 첫글자가 김인 사람데이터를 가져옴

-- 나이가 25살이고 성이 이씨인 사람의 정보를 출력하세요
select *from member where SUBSTR(membername,1,1) = '이' and 2024-SUBSTR(memberbirth,1,4) = '25';
-- 취미가 축구이고 성별이 여성인 사람이며 성이 박씨인 사람을 출력하세요


SELECT *
FROM   member
WHERE  memberhobby            = '축구'
AND    SUBSTR(membername,1,1) = '박'
AND    membergender           = 'F';

-- 회원이름중에 신으로 끝나는 회원의 이름을 출력해주세요

select *from member where membername like '%신';

select *from member where substr(membername,char_length(membername))='크';


select length(membername)from member; -- 글자 바이트 크기
select char_length(membername)from member; -- 글자크기

substr(컬럼,자리수,갯수) --갯수가 생략되어 있으면 그 자리부터 끝까지라는 뜻
자리수는 처음을 기준으로 하면 1로 시작되고 끝을 기준으로 하면 -1로 시작한다.

select *from member where substr(membername,-1,1)='크';


-- 정렬하기

order by (desc, asc) -- desc 내림차순 asc 오름차순

-- 회원번호의 순서를 내림차순으로 정렬해서 출력하시오

select *from member order by midx desc;
select *from member order by midx asc;

-- 회원이름 순서대로 오름차순으로 정렬하시오
select *from member order by membername asc;
asc는 생략 가능 desc는 반드신 써야한다.

-- 회원이름 순서대로 1차 오름차순으로 2차 지역 내림차순으로 정렬하시오
select *from member order by membername asc, memberaddr desc;

--데이터 수정 구문 updat
-- 회원번호 5번인 사람의 이름을 강감찬으로 바꾸세요
update member SET membername='강감찬' where midx ='5';
select *from member;


-- 서울에 살고 성이 홍씨인 사람들의 명단을 1차 회원번호 내림차순으로 2차 이름 오름차순으로 정렬해서 출력하시오


SELECT   *
FROM     member
WHERE    memberaddr             = '서울'
AND      SUBSTR(membername,1,1) = '홍'
ORDER BY midx DESC,
         membername ASC;


-- 성을 제외한 회원이름이 길동일때 해당 회원의 나이를 출력하세요(성이 한들자임을 전제하에)




SELECT SUBSTR(now(),1,4)-SUBSTR(memberbirth,1,4) AS age
FROM   member
WHERE  SUBSTR(membername,2)='길동';


-- 별칭 as

-- dual 가상의 테이블

-- 시스템 날짜 함수
select now()from dual;

-- or (합집합)
-- 회원들중에 서울 대전 부산에 사는 사람들의 명단을 최근 가입한 회원번호 순으로 정렬해서 출력하시오

select *from member where memberaddr = '서울' or memberaddr = '대전' or memberaddr = '부산' order by midx desc;
-- in 함수
select *from member where memberaddr in('서울','대전','부산') order by midx desc;


-- 서울 대구 광주 대전에 살고 있는 여성회원들의 이메일이 네이버인 사람들의 데이터를 뽑아서 내림차순(최근 가입한순)으로 정렬하세요

SELECT   *
FROM     member
WHERE    memberaddr IN('서울','대구','광주','대전')
AND      (membergender   = 'F' AND      membereamil LIKE '%naver%')
ORDER BY midx DESC;

-- 비교연산
>,<, >=,<=

-- 회원번호가 3보다 큰 사람들의 아이디를 출력하세요
select memberid from member where midx>3;

-- 회원번호가 3보다 크고 7보다 작은  사람들의 이름을 출력하세요
select membername from member where midx>3 and midx<7;
select membername from member where midx between 4 and 6;
select membername from member where midx >= 4 and midx <= 6;


