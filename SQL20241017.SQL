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
COMMIT; -- DB반영
rollback; -- 이전복원
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
-- 3개의 코드가 같은 코드



-- group by 절 사용하기(그룹으로 묶을때)

형식 : select 1차컬럼이름, 2차컬럼이름 from member group by 1차컬럼이름, 2차컬럼이름

-- 회원들의 사는 곳을 그룹별로 출력하세요

select memberaddr from member group by memberaddr;



-- 회원들의 사는 곳의 그룹별 성별로 출력하세요



SELECT   memberaddr, membergender
FROM     member
GROUP BY memberaddr, membergender
ORDER BY memberaddr ASC, membergender DESC;

-- 전체그룹
select *from member;

1.count() 함수
-- 갯수함수를 사용해서 전체 인원수를 출력하세요 count()

select count(*) as cnt from member; -- 행의 갯수
select count(midx) as midxcnt from member; -- 행의 컬럼갯수 null값 제외

2. sum()함수 : 합을 구하는 함수

회원들의 회원번호의 총합을 구해서 값을 출력하세요
select sum(midx) as midxsum from member;

3. max()함수 : 그룹내에 최고값
-- 회원들중에 최고회원번호의 최고값을 구해서 출력하세요
select max(midx) as midxmax from member;

4.min()함수 : 그룹내 최소값
select min(midx) as midxmin from member;

5. avg()함수 : 그룹내 평균값
select avg(midx) as midxavg from member;

-- 회원들중에 사는곳을 각 지역별로 인원수를 출력하세요

select memberaddr,count(*) as membercnt from member group by memberaddr;

-- 회원들의 분포를 각 지역별 성별로 인원수를 출력하세요


SELECT   memberaddr,
         COUNT(*) AS membercnt,
         membergender,
         COUNT(*) AS membergenidx
FROM     member
GROUP BY memberaddr,membergender
ORDER BY memberaddr,membergender;

-- 회원번호 3~7번까지의 회원중에 naver메일을 사용하는 사람들의 인원수를 출력하세요

select count(*) from member where midx between 3 and 7 and membereamil like '%naver%';

--회원번호 2번부터 9번까지 회원중에 지역별로 각 인원수를 출력하세요

select memberaddr,count(*) from member where midx between 2 and 9 group by memberaddr;



-- instr() 위치값을 출력하는 함수

-- 메일에서 @의 자리수 위치를 출력하세요
select instr(membereamil,'@') from member;
select membereamil,instr(membereamil,'@') as instr from member;
select substr(membereamil,instr(membereamil,'@')) from member;

-- 각 회원들의 메일 사용현황(인원수)를 출력하세요
select substr(membereamil,instr(membereamil,'@')) as email , count(*) as membercnt
from member
GROUP by substr(membereamil,instr(membereamil,'@'));

-- conact() 글자 붙이기 함수
select membername from member;
select concat(membername,'회원님') from member;
select concat(concat(membername,'회원님'),'~~!!') as con from member;


-- 서브 쿼리 : 쿼리안에 또 쿼리

-- 서브쿼리 학습하기
1. where절 서브쿼리 : where조건절 안에 쿼리가 존재
-- 회원들 중에 회원번호가 회원번호 평균값보다 작은 사람들의 명단을 출력하세요

select midx, membername from member where midx < (select avg(midx) as midxavg from member);

-- select avg(midx) as midxavg from member

-- 회원번호중에 홀수인 사람들의 명단을 서브쿼리를 활용해서 출력하세요

mod()함수 : 나머지 추출 연산함수

select mod(midx,2) as midxmod from member;

-- 홀수 뽑아내기

select *from member where mod(midx,2) = 1;

select *from member where midx
in (select midx from member where mod(midx,2)=1)

-- 스칼라 서브쿼리 : 컬럼절안에 존재하는 쿼리


-- 테이블 별칭
select A. *from member A;

-- 회원 번호와 이름을 스칼라 쿼리를 활용해서 출력하시오

select a.midx,(select b.membername from member b where b.midx = a.midx) from member a

-- 인라인뷰 : from절에 쿼리가 들어간다

회원이름,회원성별,회원나이만있는 테이블을 만들고 성별이 여성인 사람의 명단을 출력하세요


select A.membername,A.age from(select membername,membergender,(2024-substr(memberbirth,1,4)) as age from member) A
where A.membergender = 'F';



-- case when then else end 컬럼조건식
-- 회원번호가 1번 5번인 사람은 로또당첨이라고 출력하고 나머지는 꽝이라고 출력하시오


SELECT midx, membername,
       CASE midx
              WHEN 1
              THEN '로또당첨'
              WHEN 5
              THEN '로또당첨'
              ELSE '꽝입니다'
       END as msg
FROM   member


select midx,
	case when midx = 1 or midx = 5 then '로또당첨'
	else '꽝입니다'
	end as msg
from  member;

-- if()함수 : 조건식 함수

select midx, if(midx in(1,5),'로또당첨','꽝입니다') as msg from member;

select midx, if(midx = 1,'로또당첨',if(midx = 5,'로또당첨','꽝입니다'))as msg from member;

-- null체크 함수 : nvl()-> 오라클, ifnull()-> mysql

select ifnull(memberip,'아이피가 존재하지 않습니다.') as memberip from member;

-- 회원 ip가 null인 사람의 명단을 출력하세요
select membername from member where member memberip is null;


-- 날짜 함수 사용하기
-- 년도를 추출하는 함수 YEAR()

-- 회원번호 3번인 사람의 가입년도를 출력하세요
SELECT YEAR(writeday) as year from member where midx=3;
-- 월을 추출함수 month()
SELECT MONTH(wirteday) as month from member where midx=3;
-- 날짜 date함수
SELECT DATE(wirteday) as date from member where midx=3;

-- 기타 시간 HOUR()함수 MINUTE()함수 SECOND()함수

-- 요일함수 weekday()함수나

select WEEKDAY(now()) as '요일' from dual; (0월요일, 1화요일....6 일요일)

-- last_day() : 해당날짜의 달에 마지막 날짜정보

select last_day(writeday) from member;

-- 현재 날짜와 시간

select now() from dual;
select CURRENT_TIMESTAMP() from dual;

-- 현재 날짜
select curdate() from dual;
select CURRENT_DATE() from dual;

-- 현재 시각
select CURTIME() from dual;
select CURRENT_TIME() from dual;


-- 날짜표현을 형식화 시키는 함수 date_format(date,format)
select date_format(writeday,'%Y-%m-%d') from member;

select date_format(writeday,'%Y-%m-%d%T') from member;

select date_format(writeday,'%Y-%m-%d%H:%i:%s') from member;

-- 날짜 계산함수 date_add()

select date_add(NOW(),interval 1 day) from dual;

-- 문자를 날짜로 변환하는 함수 str_to_date()

select str_to_date('20300505','%Y%m%d') from dual;
select str_to_date('2030-05-05','%Y-%m-%d') from dual;
select str_to_date('2030/05/05','%Y/%m/%d') from dual;

select str_to_date(2024-10-9)
select weekday('2024-10-09') as WEEKDAY;
SELECT WEEKDAY(str_to_date('20241009','%Y%m%d')) from dual;


-- union 사용하기

-- 회원번호 1번인 사람의 이름과 대전에 사는 사람들의 명단을 모두 출력하세요

select membername from member where midx='1'
union
select membername from member where memberaddr = '대전'; -- 중복은 제거

select membername from member where midx='1'
union all
select membername from member where memberaddr = '대전';  -- 중복도 포함

-- 서울 대전 부산에 사는 사람들의 나이와 명단과 여성인 사람의 나이와 명단을 모두 출력하세요


select membername from member where memberaddr = '서울'
union
select membername from member where memberaddr = '대전'
union
select membername from member where memberaddr = '부산'
union
select membername from member where membergender = 'F'


SELECT membername, 2024-substr(memberbirth,1,4) as age from member where memberaddr in ('서울','대전','부산')
union
SELECT membername, 2024-substr(memberbirth,1,4) from member where membergender = 'F';


-- 임시테이블 사용하기

-- 필요한 데이터를 추출후 임시형태로 보관후 필요한 조건에 따라 다시 추출하는 방법


with temptables as (
	select *from member where membergender = 'M'
)

SELECT *from temptables;

-- 가상테이블 생성하기
create view virtualtable
as
select *from member where memberaddr = '대전'

select *from virtualtable;


-- rownum 행의 순서
-- 회원정보를 회원번호 내림차순으로 순서를 두고 정렬하시오
set @rownum:=0;
select @rownum:=@rownum+1 as nm, A.*from member A order by A.midx desc;


-- 프로시저 만들기
create PROCEDURE proctest (
param_name varchar(20)  -- 파라미터(매개) 변수 선언
)
BEGIN

declare i int; -- 변수선언 타입과 같이
set i =1; -- 변수에 초기값 담기
while i<=1000 do -- 반복문 사용하기
insert into member(memberid,memberpwd,membername,membergender,memberbirth,memberaddr,memberphone,membereamil,memberhobby)
values(concat(param_name,i),'1234','홍길동','M',19990101,'대전','01047478585','hong@naver.com','축구');
set i = i+1;


end while; -- 반복문 끝

end



drop PROCEDURE proctest;

call proctest('test');


select *from member;
select count(*) from member;

-- 데이터 삭제하기
delete from member where midx >10;

delete from member;

-- auto_increment 초기화
alter table member AUTO_INCREMENT=1;




-- 인덱스 생성하기
-- 데이터를 조회할 때 검색속도를 빨리하기 위해서 목차(색인)이라고 하는 index를 사용해서 데이터검색을 빨리하는 방법

-- 형식
create index 인덱스 이름 on 테이블이름(인덱스를 걸 컬럼)

select COUNT(*)from member;

create index memberid_idx on member(memberid);

select *from member;

select *from member where memberid = 'test555';

select A.*from (select * from member) A where A.memberid = 'test555';







-- 게시판 테이블 생성하기 (BOARD)
CREATE TABLE BOARD (
bidx INT NOT NULL AUTO_INCREMENT PRIMARY KEY,  -- 글번호
subject VARCHAR(100) NOT NULL,  -- 글제목
contents TEXT NOT NULL, -- 글내용
writer VARCHAR(100) NOT NULL, -- 작성자
recom int NULL, -- 추천수
viewcnt int NULL, -- 조회수
filename varchar(100) NULL,
writeday DATETIME DEFAULT NOW(), -- 등록일
delyn CHAR(1) DEFAULT 'N', -- 삭제여부
ip VARCHAR(30) NULL, -- ip
midx int NOT NULL -- 회원번호
);

-- 외래키(foreign key 제약조건 추가)
alter table board
add Constraint bidx_midx_fk foreign key(midx) references member(midx);

insert into board(subject,contents,writer,recom,viewcnt,filename,ip,midx)
values('글제목','글내용','글작성자',0,0,null,'211.111.222.330',1001);

select *from board;


-- 추천, 조회수 컬럼 기본값 0 주기
alter table board
MODIFY recom int DEFAULT 0;

alter table board
MODIFY viewcnt int DEFAULT 0;

insert into board(subject,contents,writer,recom,viewcnt,filename,ip,midx)
values('글제목2','글내용2','글작성자2',0,0,null,'211.111.222.320',1002);  -- 2번째 샘플데이터  제약 조건을 넣음




-- join 학습하기
-- 공통된 컬럼으로 묶어서 하나의 테이블로 합치는 방법

형식
select *from 테이블1 inner join 테이블2 on 테이블1.pk 컬럼 = 테이블2.fk컬럼


-- 회원아이디가 test2인 사람의 제목을 출력하세요
select A.subject from BOARD A inner join member B on B.midx = A.midx where B.memberid = 'test2';


-- member 테이블 데이터 수정하기 update (DML)

-- 형식 update 테이블이름 set 컬럼='값',컬럼2='값' where midx = 값;(where조건을 사용하지 않으면 전체가 업데이트 될 수 있으니 주의요망)

-- 회원번호가 홀수인 사람들은 사는 지역을 모두 서울로 변경하세요


select 3 mod 2 from dual;  -- mod 나머지 연산자

update member
set memberaddr='서울'
where midx mod 2 = 1;

select *from member;

-- 회원번호가 3의 배수인 사람들은 성별을 여성으로 하고 취미는 야구라고 변경하세요



UPDATE member
SET    membergender='F', memberhobby = '야구'
WHERE  midx mod 3  = 0;


update member
set membername='강감찬',memberhobby = '낚시'
where midx mod 5 = 0;

update member
SET membereamil = SUBSTR(membereamil, 1, memberid);

UPDATE member
SET membereamil = CONCAT(memberid, '@', SUBSTR(membereamil, INSTR(membereamil, '@') + 1));


UPDATE member
SET membereamil = CONCAT(SUBSTR(membereamil, 1, INSTR(membereamil, '@') - 1), '@hanmail.com')
WHERE MOD(midx, 8) = 0;

UPDATE member
SET membereamil = CONCAT(SUBSTR(membereamil, 1, INSTR(membereamil, '@') - 1), '@gmail.com')
WHERE MOD(midx, 7) = 0;


update member
set membername = concat('이름',memberid);


SELECT *from member;


-- 1. 이름을 변경해야지 memberid하고 이름이이라는 글자를 붙여서 고유하게 만들자
-- 2. 두글자를 붙이기 함수 concat을 사용해지
-- 3. 확인 select concat('이름',memberid) from member;
-- 4. update를 치자
-- 5. update member set membername = concat('이름',memberid)
-- 6. 전체를 대상으로 하므로 whwere 조건은 필요X
-- 7. 확인 select *from member;


select *from board;





-- 보드 샘플데이터 입력하기

insert into board(subject,contents,writer,recom,viewcnt,filename,ip,midx)
values('안녕하세요','내용입니다.','홍길동',0,0,null,NULL,1005);

insert into board(subject,contents,writer,recom,viewcnt,filename,ip,midx)
values('질문있습니다','게시판내용입니다','나그네',0,0,null,NULL,1009);

insert into board(subject,contents,writer,recom,viewcnt,filename,ip,midx)
values('가을','좋은내용.','아무개',0,0,null,NULL,1010);

insert into board(subject,contents,writer,recom,viewcnt,filename,ip,midx)
values('단풍','알록달록한 단풍이 왔어요.','계룡산',0,0,null,NULL,1006);

insert into board(subject,contents,writer,recom,viewcnt,filename,ip,midx)
values('평화','평화주의자입니다.','간디',0,0,null,NULL,1012);

insert into board(subject,contents,writer,recom,viewcnt,filename,ip,midx)
values('소통해요','저는 초음파로 소통해요','돌고래',0,0,null,NULL,1052);

insert into board(subject,contents,writer,recom,viewcnt,filename,ip,midx)
values('사장님이 미쳤어요','아주 싸게 팝니다','털보',0,0,null,NULL,1042);

insert into board(subject,contents,writer,recom,viewcnt,filename,ip,midx)
values('비빔밥','모든지 다 비벼버려요.','유비빔',0,0,null,NULL,1032);

insert into board(subject,contents,writer,recom,viewcnt,filename,ip,midx)
values('좋습니다','아주이븐하게 익었어요.','안재성',0,0,null,NULL,1073);

insert into board(subject,contents,writer,recom,viewcnt,filename,ip,midx)
values('재밌어요','이야 아주 재밌는 맛이 나네','백종원',0,0,null,NULL,1037);

-- 게시글을 최근 등록된 순서대로 나열하세요
select * from board order by bidx desc;

-- 3번째 게시글을 쓴 사람의 회원 이름을 출력하세요
-- select *from 테이블1 inner join 테이블2 on 테이블1.pk 컬럼 = 테이블2.fk컬럼

1. select *from member A inner join board B on A.midx = B.midx -- 데이터가 제대로 조인됬는지 확인
2. select A.membername from member A inner join board B on A.midx = B.midx where B.bidx =3;



-- 아이디가 test2인 사람이 쓴 게시글을 모두 출력해주세요
select B.* from member A inner join board B on A.midx = B.midx where A.memberid ='test2';



-- 대전에서 사는 사람들이 쓴 게시물의 수를 출력해주세요
select count(*) from member A inner join board B on A.midx = B.midx where A.memberaddr ='대전';



-- 8번 게시물의 조회수를 +1 업데이트 해주세요
 update board set viewcnt = viewcnt+1 where bidx=8;

select *from board;



-- left outer join (부분 교집합) 학습하기
 : 기준점이 되는 모든 데이터(테이블)들은 나타내주고 다른 테이블의 데이터는 공통적인 컬럼으로 묶어져있는 데이터만 추출한다

  left outer join 형식

  select *from 테이블 A left outer join 테이블 B on A.pk = B.pk

  -- 회원들중에 게시글을 쓴 게시물 수를 모두 출력하세요 (게시글을 쓰지않았으면 0)



SELECT   A.midx, COUNT(B.bidx)
FROM     member A
         LEFT OUTER JOIN board B
         ON  A.midx = B.midx
GROUP BY A.midx
ORDER BY midx;



-- left 조인 학습예제

-- 회원들중에 사는 지역별로 게시물을 쓴 사람들의 인원수를 출력하세요

select A.memberaddr,count(B.bidx) from member A left join board B on A.midx = B.midx group by A.memberaddr


select A.memberaddr, B.bidx from member A left join board B on A.midx = B.midx group by A.memberaddr order by memberaddr

select A.memberaddr, B.bidx from member A join board B on A.midx = B.midx group by A.memberaddr order by memberaddr



-- test3인 사람이 쓴 글이 ip가 있으면 ip있음이라고 출력하고 ip가 없으면 ip없음이라고 출력하세요

select if(B.ip,'ip있음','ip없음')as ip from member A left join board B on A.midx = B.midx where memberid = 'test3';

-- 제목이 '소통해요'라고 쓰여진 글의 회원이름을 출력하세요
select A.membername from member A left join board B on A.midx = B.midx where subject = '소통해요'

select A.membername from member A inner join board B on A.midx = B.midx where B.subject = '소통해요'

-- 각게시글의 추천수가 제일 많은 사람의 아이디를 출력하세요
select A.memberid from member A left join board B on A.midx = B.midx order by recom


select A.memberid from member A left join board B on A.midx = B.midx where recom = '최고값'

select A.memberid from member A left join board B on A.midx = B.midx where recom = (select max(recom) from board)


1. 합쳐진 데이터를 살펴본다 1단계
2. 어떠한 조인을 써야할지 고민한다.
3. where 조건을 사용한다.
4. 검증
test2인 아이디가 실제로 추천수 3인지를 확인해본다

(DBMS) : 관계형데이터베이스
ORMDBMS : 객체기능형 관계형데이터베이스


select max(recom) from board

update board set recom=3 where bidx = 3;

select *from board




-- reply create 테이블 만들어보기 실습


CREATE TABLE REPLY (
ridx int not null primary key AUTO_INCREMENT,
rsubject varchar(100) null,
rcontents varchar(4000) not null,
rwriter varchar(100) null,
writeday datetime DEFAULT now(),
delyn char(1) DEFAULT 'N',
rip VARCHAR(20),
midx int not null,
bidx int not null
);

-- 제약조건 추가

-- alter table reply
-- add Constraint bidx_midx_fk foreign key(midx) references member(midx);

-- midx FK 설정

alter table reply
add CONSTRAINT member_reply_midx_FK FOREIGN key(midx) REFERENCES member (midx);


-- bidx FK 설정
alter table reply
add CONSTRAINT board_reply_bidx_FK FOREIGN key(bidx) REFERENCES board (bidx);




-- reply 샘플데이터 추가
-- 게시글 5번글에 대해서 회원번호 1009번인 사람이 궁금이라는 제목으로 알려주세요라는 내용을 작성하고 닉네임은 삼삼이라고 등록하는 구문을 작성하세요

insert into reply (rsubject,rcontents,rwriter,rip,midx,bidx)
VALUES ('질문있습니다','게시판내용입니다','삼삼','1111.222.333.444',1009,5);


-- 답변형게시판 (계층형 게시판)
-- 번호 제목    내용            날짜 -----------------
-- 1번  첫글    첫내용         2024-10-01
-- 2번 두번째  두번째 내용     2024-10-02
-- 3번 세번째  세번째 내용     2024-10-03



-- 추가할 필요성
-- originbidx 컬럼필요 : 원글의 그룹을 나타내주는 기능
-- depth 컬럼 필요 : 순서를 나타내주는 기능
-- level_ 컬럼 필요 : 답변 단계를 나타내주는 기능


-- bidx   originbidx    depth    level_      subject        contents     ~~~~  writeday
--  1        1            0        0          첫글          첫내용               10.01               <-새글 입력시
--  5        1            1        1
--  4        1            1        1        첫글의 답      첫글의 답             10.07               <-답변 입력시

--  2        2            0        0         두번째         두번째               10.02


--  3        3            0        0         세번째         세번째               10.03






select *from board;
-- 게시판용 컬럼추가

alter table board
add originbidx int null;
alter table board
add depth int null;
alter table board
add level_ int null;


-- 컬럼순서 바꾸기

alter table board
MODIFY COLUMN originbidx int after bidx;

alter table board
MODIFY COLUMN depth int after originbidx;


alter table board
MODIFY COLUMN level_ int after depth;


UPDATE board set originbidx = bidx, depth=0, level_=0;

select *from board;

-- 게시판 조회목록 쿼리

select *from board order by originbidx desc, depth asc;


-- 답변달기 쿼리
-- update board set
insert into board (originbidx, depth, level_, subject, contents, writer,midx)
values(9,1,1,'9번글 답변','9번글답변내용','답변자',1002)

-- 또다른 답변달기 (원글번호의 순서보다 큰것들은 순서를+1 업데이트하고 그 사이에 답변글을 입력한다)
update board set depth = depth+ 1 where originbidx = 답변할려는 원글번호 and depth > 원글의 순서;


insert into board (originbidx, depth, level_, subject, contents, writer,midx)
values(원글번호,원글번호의+1,원글답변단계+1,'제목','답변내용','답변자',회원번호)
commit; -- update insert 일괄 실행


set autocommit = TRUE; -- 자동커밋으로 전환

set autocommit = FALSE;  -- 수동커밋으로 전환




-- 수정하기 쿼리
update board set subject = '수정할 제목내용', contents = '수정할 내용', writer = '작성자',
modifyday = now() where bidx = 수정할려는 글번호;


-- 수정날짜 입력 컬럼 생성하기
alter table board
add modifyday datetime null;


-- 삭제하기 쿼리
update board set delyn = 'Y',modifyday=now() where bidx = 삭제하려는 글번호;


-- 내용보기 쿼리
select *from board where bidx = 내용을 보려고 하는 글번호;

-- 목록쿼리
select *from board where delyn = 'N' order by originbidx desc, depth asc;


-- 새글 입력 쿼리

set autocommit = 0;  -- 수동 설정
insert into board (originbidx,depth,level_,subject,contents,writer,midx)
VALUES(null,0,0,'제목','내용','작성자',회원번호);

update board set originbidx = (select max(bidx)from board)
where bidx = (select max(bidx)from board);
commit;

set autocommit=1; -- 자동으로 변경



-- 페이징 목록 쿼리

select *from board where delyn = 'N' order by originbidx desc, depth asc limit 0,15;  -- 첫번째 0번행부터 15개를 가지고 온다


-- 보드 더미 데이터 만들어 보기







create PROCEDURE boardproc (
param_name varchar(20)  -- 파라미터(매개) 변수 선언
)
BEGIN

declare i int; -- 변수선언 타입과 같이
set i =1; -- 변수에 초기값 담기
while i<=1000 do -- 반복문 사용하기
insert into board(originbidx,depth,level_,subject,contents,writer,midx)
values(null,0,0,concat(param_name,i),concat(param_name,i),concat(param_name,i),1003);
set i = i+1;


end while; -- 반복문 끝

end

call boardproc('게시판');

select *from board;

update board set originbidx =bidx;
select *from board where delyn = 'N' order by originbidx desc, depth asc limit 0,15;

select *from board where delyn = 'N' order by originbidx desc, depth asc limit 15,15;

select *from board where delyn = 'N' order by originbidx desc, depth asc limit 30,15;


select *from reply;

-- 댓글테이블 샘플데이터 입력

insert into reply(rsubject,rcontents,rwriter,midx,bidx)
VALUES('댓글제목','댓글내용','댓글작성자',1004,3)

insert into reply(rsubject,rcontents,rwriter,midx,bidx)
VALUES('댓글제목2','댓글내용2','댓글작성자2',1007,5)

insert into reply(rsubject,rcontents,rwriter,midx,bidx)
VALUES('댓글제목3','댓글내용3','댓글작성자3',1012,9)

insert into reply(rsubject,rcontents,rwriter,midx,bidx)
VALUES('댓글제목4','댓글내용4','댓글작성자4',1044,8)

insert into reply(rsubject,rcontents,rwriter,midx,bidx)
VALUES('댓글제목5','댓글내용5','댓글작성자5',1045,12)

insert into reply(rsubject,rcontents,rwriter,midx,bidx)
VALUES('댓글제목6','댓글내용6','댓글작성자6',1075,96)

insert into reply(rsubject,rcontents,rwriter,midx,bidx)
VALUES('댓글제목7','댓글내용7','댓글작성자7',1032,67)

insert into reply(rsubject,rcontents,rwriter,midx,bidx)
VALUES('댓글제목8','댓글내용8','댓글작성자8',1093,71)


select *from member;
select *from board;
select *from reply;

-- 7번에 대한 댓글을 쓴 사람들의 아이디를 출력해주세요
-- 행인이라는 작성자가 쓴 게시글의 댓글을 쓴 사람들의 아이디를 출력해주세요


-- 1단계 board 테이블과 reply 테이블을 조인해서 합친다
-- 2단계 합쳐진 두테이블과 member테이블을 조인한다.
-- 3단계 where 조건식과 합친다.

SELECT C.memberid
FROM   board A
JOIN reply B ON A.bidx = B.bidx
JOIN member C ON C.midx = B.midx
where A.writer = '돌고래';

-- 4단계 검증 샘플검사 or 전수검사

update reply set rsubject ='악플' where ridx = 7;

-- 댓글중에 악플이라고 써있는 게시글을 모두 찾아서 게시글번호와 그 댓글을 쓴 사람의 이름과 연락처를 출력해주세요

SELECT A.bidx,C.membername,C.memberphone
FROM   board A
JOIN reply B ON   A.bidx = B.bidx
JOIN member C ON     C.midx = B.midx
WHERE  B.rsubject = '악플';



select *from member order by midx desc;


select *from member where memberid= '' and memberpwd='1234';

-- 입력값을 아이디 'or 1 = '1
-- sql 인젝션 해킹공격

Alter table member
change COLUMN membereamil memberemail varchar(100); -- 컬럼 이름변경





-- 3개 조인연습
-- 회원들이 9번개시글에 대해서 댓글을 각각 몇개씩 작성했는지 출력해 주세요

select Count(C.rsubject) from member A join board B on A.midx = B.midx join reply C on C.bidx = B.bidx where B.bidx = 9

select *from member A left join board B on A.midx = B.midx join reply C on B.bidx = C.bidx where B.bidx = 9 -- 잘못된 방식

-- 1.
select A.midx, count(ridx) from member A left join
(select C.midx,C.ridx,B.bidx from board B join reply C on B.bidx = C.bidx where B.bidx = 9) D on A.midx = D.midx
group by A.midx

-- 2
select A.midx, count(B.ridx) from member A left join (select * from reply where bidx = 9) B
on A.midx = B.midx group by A.midx

-- 3
select A.midx, count(AA.ridx) from member A left join
(select C.midx, C.ridx from board B join reply C on B.bidx=C.bidx
where B.bidx=9) AA on A.midx = AA.midx
group by A.midx




-- 1. 조인을 한다.
-- 2. 데이터를 본다
-- 3. 그룹을 짓는다
-- 4. 집계함수를 사용해서 갯수를 뽑아낸다





select *from member order by midx desc;



-- 로그인 체크하는 쿼리만들기

SELECT *FROM member WHERE memberid = 'test1' AND memberpwd = '1234';



-- 회원목록 쿼리 만들기
SELECT *FROM member  WHERE delyn = 'N' ORDER BY midx DESC;


-- 아이디 체크 쿼리 만들기

SELECT COUNT(*)FROM member WHERE memberid = 'test1';











