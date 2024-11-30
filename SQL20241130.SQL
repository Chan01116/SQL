CREATE TABLE MEMBER
(
	-- 멤버번호
	midx int NOT NULL AUTO_INCREMENT COMMENT '멤버번호',
	-- 멤버아이디
	memberid varchar(20) NOT NULL COMMENT '멤버아이디',
	-- 멤버비밀번호
	memberpassword varchar(100) NOT NULL COMMENT '멤버비밀번호',
	-- 멤버 이름
	mebername VARCHAR(50) NOT NULL COMMENT '멤버이름',
	-- 멤버이메일
	memberemail varchar(50) COMMENT '멤버이메일',
	-- 멤버전화번호
	memberphone int NOT NULL COMMENT '멤버전화번호',
	-- 멤버생성날짜
	membercreatday datetime COMMENT '멤버생성날짜',
	-- 멤버생일
	memberbirthday int NOT NULL COMMENT '멤버생일',
	-- 멤버 삭제여부
	delyn char(1) DEFAULT 'N' COMMENT '멤버탈퇴여부',
	-- 멤버마일리지
	membermiles int COMMENT '멤버마일리지',
	-- 예약번호
	ridx int NOT NULL COMMENT '예약번호',
	PRIMARY KEY (midx),
	UNIQUE (ridx)
);

ALTER TABLE MEMBER
MODIFY COLUMN memberbirthday VARCHAR(30) NOT NULL COMMENT '멤버생일';

ALTER TABLE MEMBER RENAME COLUMN mebername TO membername;


ALTER TABLE MEMBER
ADD COLUMN membergender VARCHAR(5);