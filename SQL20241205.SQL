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

ALTER TABLE member MODIFY membergender VARCHAR(10);

ALTER TABLE member MODIFY ridx VARCHAR(13);

ALTER TABLE member MODIFY ridx INT;


ALTER TABLE member ADD COLUMN admin VARCHAR(1) DEFAULT 'N';

UPDATE member SET admin = 'Y' WHERE memberid = 'admin';

UPDATE member SET admin = 'N' WHERE memberid = 'qqq';
UPDATE member SET admin = 'N' WHERE memberid = 'ddd';


CREATE TABLE notice
(
	-- 공지게시판번호
	nidx int NOT NULL AUTO_INCREMENT COMMENT '멤버번호',

	-- 게시제목
	ntitle TEXT not null COMMENT '제목',
	-- 내용
	ncontents TEXT NOT NULL  COMMENT '내용',
	-- 작성자
	writer VARCHAR(30) NOT NULL COMMENT '작성자',
	-- 글쓴날짜
	writeday datetime COMMENT '날짜',
	-- 추천수
	recom int NOT NULL COMMENT '추천수',
	-- 조회수
	viewcnt int COMMENT '조회수',

	-- 파일이름
	filename varchar(50) COMMENT '파일이름',

	-- 삭제여부
	 delyn char(1) DEFAULT 'N' COMMENT '삭제여부',
	 -- 멤버번호
	 midx int not NULL COMMENT '멤버번호',
	 PRIMARY KEY (nidx)
);

	private int nidx;
	private String ntitle;
	private String ncontents;
	private String writer;
	private int recom;
	private int viewcnt;
	private String filename;
	private String writeday;
	private String delyn;
	private int midx;



ALTER TABLE notice
MODIFY writer VARCHAR(30) NULL;

select * from notice where delyn='N'

UPDATE notice SET delyn = 'N';


ALTER TABLE notice
MODIFY ncontents LONGTEXT NULL;





CREATE TABLE qna
(
	-- 질문 게시판번호
	qidx int NOT NULL AUTO_INCREMENT COMMENT '질문게시판번호',

	-- 게시제목
	qtitle TEXT not null COMMENT '제목',
	-- 내용
	qcontents LONGTEXT NOT NULL  COMMENT '내용',
	-- 작성자
	writer VARCHAR(30) NOT NULL COMMENT '작성자',
	-- 글쓴날짜
	writeday datetime COMMENT '날짜',
	-- 추천수
	recom int NOT NULL COMMENT '추천수',
	-- 조회수
	viewcnt int COMMENT '조회수',

	-- 파일이름
	filename varchar(50) COMMENT '파일이름',

	-- 삭제여부
	 delyn char(1) DEFAULT 'N' COMMENT '삭제여부',
	 -- 멤버번호
	 midx int not NULL COMMENT '멤버번호',
	 PRIMARY KEY (qidx)

);

ALTER TABLE qna ADD COLUMN modifyday DATETIME;

ALTER TABLE qna
MODIFY writer VARCHAR(30) NULL;



CREATE TABLE FLIGHT (
    flight_id INT NOT NULL AUTO_INCREMENT,
    flight_number VARCHAR(10) NOT NULL,
    departure_airport_id INT NOT NULL,
    arrival_airport_id INT NOT NULL,
    departure_time DATETIME NOT NULL,
    arrival_time DATETIME NOT NULL,
    aircraft_type VARCHAR(50),
    available_seats INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (flight_id)
);

CREATE TABLE RESERVATION (
    reservation_id INT NOT NULL AUTO_INCREMENT,
    flight_id INT NOT NULL,
    midx INT NOT NULL,
    reservation_date DATETIME NOT NULL,
    seat_number VARCHAR(10),
    status VARCHAR(20) NOT NULL,
    PRIMARY KEY (reservation_id),
    FOREIGN KEY (flight_id) REFERENCES FLIGHT(flight_id),
    FOREIGN KEY (midx) REFERENCES MEMBER(midx)
);

CREATE TABLE AIRPORT (
    airport_id INT NOT NULL AUTO_INCREMENT,
    airport_code VARCHAR(3) NOT NULL,
    airport_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    PRIMARY KEY (airport_id)
);




INSERT INTO AIRPORT (airport_code, airport_name, city, country) VALUES
('ICN', 'Incheon International Airport', 'Seoul', 'South Korea'),
('NRT', 'Narita International Airport', 'Tokyo', 'Japan'),
('LAX', 'Los Angeles International Airport', 'Los Angeles', 'USA'),
('GMP', 'Gimpo International Airport', 'Seoul', 'South Korea'),
('HND', 'Haneda International Airport', 'Tokyo', 'Japan'),
('JFK', 'John F. Kennedy International Airport', 'New York', 'USA'),
('CDG', 'Charles de Gaulle International Airport', 'Paris', 'France');


INSERT INTO FLIGHT (flight_number, departure_airport_id, arrival_airport_id, departure_time, arrival_time, aircraft_type, available_seats, price) VALUES
('KE001', 1, 2, '2024-12-05 09:00:00', '2024-12-05 11:30:00', 'Boeing 787', 200, 350000.00),
('KE002', 2, 1, '2024-12-05 13:00:00', '2024-12-05 15:30:00', 'Airbus A330', 180, 320000.00);

ALTER TABLE FLIGHT
ADD COLUMN economy_seats INT NOT NULL DEFAULT 0,
ADD COLUMN business_seats INT NOT NULL DEFAULT 0,
ADD COLUMN first_seats INT NOT NULL DEFAULT 0,
ADD COLUMN economy_price DECIMAL(10, 2) NOT NULL DEFAULT 0,
ADD COLUMN business_price DECIMAL(10, 2) NOT NULL DEFAULT 0,
ADD COLUMN first_price DECIMAL(10, 2) NOT NULL DEFAULT 0;


DELETE FROM FLIGHT;

INSERT INTO FLIGHT (flight_number, departure_airport_id, arrival_airport_id, departure_time, arrival_time, aircraft_type, available_seats, price, economy_seats, business_seats, first_seats, economy_price, business_price, first_price) VALUES
('KE001', 1, 2, '2024-12-05 09:00:00', '2024-12-05 11:30:00', 'Boeing 787', 300, 350000.00, 200, 80, 20, 350000.00, 700000.00, 1200000.00),
('KE002', 2, 1, '2024-12-05 13:00:00', '2024-12-05 15:30:00', 'Airbus A330', 280, 320000.00, 180, 80, 20, 320000.00, 650000.00, 1100000.00),
('KE003', 1, 3, '2024-12-06 10:00:00', '2024-12-06 22:00:00', 'Boeing 777', 340, 1200000.00, 240, 80, 20, 1200000.00, 2500000.00, 4000000.00);



INSERT INTO AIRPORT (airport_code, airport_name, city, country) VALUES
('ICN', 'Incheon International Airport', 'Seoul', 'South Korea'),
('NRT', 'Narita International Airport', 'Tokyo', 'Japan'),
('LAX', 'Los Angeles International Airport', 'Los Angeles', 'USA');





UPDATE AIRPORT
SET airport_name = 'Narita International Airport', city = 'Tokyo', country = 'Japan'
WHERE airport_code = 'NRT';

UPDATE AIRPORT
SET airport_name = 'Los Angeles International Airport', city = 'Los Angeles', country = 'USA'
WHERE airport_code = 'LAX';

UPDATE AIRPORT
SET airport_name = 'John F. Kennedy International Airport', city = 'New York', country = 'USA'
WHERE airport_code = 'JFK';

UPDATE AIRPORT
SET airport_name = 'Charles de Gaulle Airport', city = 'Paris', country = 'France'
WHERE airport_code = 'CDG';



CREATE TABLE seat (
    sidx INT AUTO_INCREMENT NOT NULL COMMENT '좌석번호',
    seat_grade CHAR(1) DEFAULT 'E',
    flight_id INT NOT NULL,
    PRIMARY KEY (sidx),
    FOREIGN KEY (flight_id) REFERENCES FLIGHT(flight_id)
);


CREATE TABLE flightschedule (
    fsidx INT AUTO_INCREMENT NOT NULL COMMENT '비행일정번호',
    departure_time DATETIME NOT NULL,
    arrival_time DATETIME NOT NULL,
    departure_airport_id int NOT NULL,
    arrival_airport_id int NOT NULL,
    flight_id INT,
    PRIMARY KEY (fsidx),
    FOREIGN KEY (departure_airport_id) REFERENCES AIRPORT(airport_id),
    FOREIGN KEY (arrival_airport_id) REFERENCES AIRPORT(airport_id),
    FOREIGN KEY (flight_id) REFERENCES FLIGHT(flight_id)
);


ALTER TABLE seat
ADD COLUMN seat_number VARCHAR(10) NOT NULL;

-- reservation 테이블 수정
ALTER TABLE reservation
CHANGE COLUMN seat_number seat_id INT;

-- 외래키 제약조건 추가
ALTER TABLE reservation
ADD CONSTRAINT fk_reservation_flight FOREIGN KEY (flight_id) REFERENCES flight(flight_id),
ADD CONSTRAINT fk_reservation_member FOREIGN KEY (midx) REFERENCES member(midx),
ADD CONSTRAINT fk_reservation_seat FOREIGN KEY (seat_id) REFERENCES seat(sidx);



CREATE TABLE payment (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    reservation_id INT,
    amount DECIMAL(10, 2) NOT NULL,
    payment_method VARCHAR(50) NOT NULL,
    payment_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (reservation_id) REFERENCES reservation(reservation_id)
);



CREATE TABLE airline (
    airline_id INT AUTO_INCREMENT PRIMARY KEY,
    airline_name VARCHAR(100) NOT NULL,
    airline_code VARCHAR(3) NOT NULL
);

ALTER TABLE flight
ADD COLUMN airline_id INT,
ADD CONSTRAINT fk_flight_airline FOREIGN KEY (airline_id) REFERENCES airline(airline_id);


-- 기존 seat_number 컬럼을 seat_id로 변경
ALTER TABLE RESERVATION
CHANGE COLUMN seat_number seat_id INT;




-- 새로운 컬럼 추가
ALTER TABLE reservation
ADD COLUMN total_price DECIMAL(10,2),
ADD COLUMN passenger_name VARCHAR(100),
ADD COLUMN seat_grade CHAR(1);


-- airlin_id 에 값 직접입력
UPDATE flight
SET airline_id = 1
WHERE flight_number LIKE 'KE%';

UPDATE flight
SET airline_id = 2
WHERE flight_number LIKE 'OZ%';


-- airlin not null로 지정
ALTER TABLE flight
MODIFY COLUMN airline_id INT NOT NULL;


------------------------------------------------------------------------ 더미데이터 ------------------------------------

INSERT INTO airline (airline_id, airline_name, airline_code) VALUES
(1, '대한항공', 'KE'),
(2, '아시아나항공', 'OZ'),
(3, '제주항공', '7C'),
(4, '진에어', 'LJ'),
(5, '에어부산', 'BX');




DELETE FROM airport;

INSERT INTO airport (airport_id, airport_code, airport_name, city, country) VALUES
(1, 'ICN', '인천국제공항', '인천', '대한민국'),
(2, 'GMP', '김포국제공항', '서울', '대한민국'),
(3, 'NRT', '나리타국제공항', '도쿄', '일본'),
(4, 'HND', '하네다국제공항', '도쿄', '일본'),
(5, 'LAX', '로스앤젤레스국제공항', '로스앤젤레스', '미국');


INSERT INTO flight (flight_number, departure_airport_id, arrival_airport_id, departure_time, arrival_time, aircraft_type, available_seats, price, economy_seats, business_seats, first_seats, economy_price, business_price, first_price) VALUES
('KE1001', 1, 3, '2024-12-06 09:00:00', '2024-12-06 11:00:00', 'B747', 300, 350000, 200, 80, 20, 350000, 750000, 1500000),
('OZ1002', 1, 4, '2024-12-06 10:00:00', '2024-12-06 12:00:00', 'A330', 280, 380000, 180, 70, 30, 380000, 800000, 1600000);
-- 추가 28개 생성 필요


INSERT INTO seat (seat_grade, flight_id, seat_number) VALUES
('E', 5, '1A'),
('B', 6, '1B'),
('F', 7, '1C'),
('E', 8, '2A'),
('B', 9, '2B')
-- 각 항공편별로 좌석 등급 데이터 추가


INSERT INTO reservation (flight_id, midx, reservation_date, seat_id, status, total_price, passenger_name, seat_grade) VALUES
(5, 1, '2024-12-05 10:00:00', 7, 'Confirmed', 350000, '홍길동', 'E'),
(6, 3, '2024-12-05 11:00:00', 8, 'Confirmed', 380000, '김철수', 'E');
-- 추가 28개 생성 필요

----------------------------------- 더미 데이터 끝 ---------------------------------

