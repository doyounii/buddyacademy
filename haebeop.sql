CREATE DATABASE haebeop;

USE haebeop;

CREATE TABLE test(num INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(100) NOT NULL);

INSERT INTO test VALUES (DEFAULT, '테스트제목1');
INSERT INTO test VALUES (DEFAULT, '테스트제목2');
INSERT INTO test VALUES (DEFAULT, '테스트제목3');
INSERT INTO test VALUES (DEFAULT, '테스트제목4');
INSERT INTO test VALUES (DEFAULT, '테스트제목5');

SELECT * from test;

CREATE TABLE USER (
	id VARCHAR(20) PRIMARY KEY,
	pw VARCHAR(350) NOT NULL,
	NAME VARCHAR(50) NOT NULL,
	email VARCHAR(150),
	tel VARCHAR(200),
	addr1 VARCHAR(200),
   addr2 VARCHAR(200),
	postcode VARCHAR(20),
	regdate DATETIME DEFAULT CURRENT_TIME,
	birth DATE DEFAULT CURRENT_DATE,
	pt INT DEFAULT 0,
	visited INT DEFAULT 0
);

INSERT INTO user( id, pw, NAME ) VALUES('admin', '$2a$10$mgYidy4Nlg8biY8b7jRnEex3UvogWP2Q28OtqI/f3V.g1OCaj74EW','관리자');
DROP TABLE user;

-- 공지사항 - 순번,제목,내용,작성일,읽은 횟수
CREATE TABLE notice (
	no INT AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	content VARCHAR(1000) NOT NULL,
	regdate DATETIME DEFAULT CURRENT_TIME,
	visited INT DEFAULT 0;
);

--자료실 - 순번,제목,내용,자료파일1,자료파일2,자료파일3,작성일,작성자,읽은횟수
CREATE TABLE fileboard (
	fno INT AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	content VARCHAR(1000) NOT NULL,
	f1 VARCHAR(300) NOT NULL,
	f2 VARCHAR(300),
	f3 VARCHAR(300),
	regdate DATETIME DEFAULT CURRENT_TIME,
	id VARCHAR(20) NOT NULL, 
	visited INT DEFAULT 0
);

-- 과목 - 과목코드, 과목명, 과목단가
CREATE TABLE SUBJECT (
	sno INT AUTO_INCREMENT PRIMARY KEY,
	subject_name VARCHAR(100) NOT NULL,
	price VARCHAR(100) NOT NULL,
);




-- 강사 - 강사코드, 강사명, 연락처, 이메일
CREATE TABLE teacher (
	tid VARCHAR(50) PRIMARY KEY,
	teacher_name VARCHAR(50) NOT NULL,
	tel VARCHAR(200),
	email VARCHAR(150)
);

INSERT INTO teacher VALUES("park", "박정우", "01012341234", "park@academy.com");


-- 강의 - 강의코드, 강의명, 강의단가, 개강일, 종강일, 최종인원수, 현재 신청 인원수, 강사명
CREATE TABLE course (
	cno INT AUTO_INCREMENT PRIMARY KEY,
	course_name VARCHAR(100) NOT NULL,
	price INT NOT NULL,
	start_date DATE NOT NULL ,
	end_date DATE NOT NULL ,
	total_num INT NOT NULL, 
	curr_num INT NOT NULL DEFAULT 0, 
	teacher_name VARCHAR(50) NOT NULL ,
	content VARCHAR(3000) NOT NULL
);

SELECT * FROM 
DROP TABLE course;

INSERT INTO course VALUES(DEFAULT, "독해하이라이트", 120000, "2023-10-20", "2023-12-31", 100, DEFAULT, "park", "d");

-- 교재 - 교재코드, 교재명, 교재목차, 출판사, 출판일, 저자, 가격, 기타메모
CREATE TABLE book (
	bno INT AUTO_INCREMENT PRIMARY KEY, 
	book_name VARCHAR(100) NOT NULL,
	publisher VARCHAR(50) NOT NULL,
	author VARCHAR(50) NOT NULL,
	price INT NOT NULL,
	etc VARCHAR(1000),
	cno INT NOT NULL
);
INSERT INTO book VALUES(DEFAULT, "독해하이라이트 리딩북", "해법", "박정우", "21000", NULL, 1);
SELECT book_name, b.price AS book_price FROM book b, course c WHERE b.cno=c.cno; 
SELECT b.bno, b.book_name, b.price AS book_price
    FROM book b
    INNER JOIN course c ON b.cno = c.cno
    WHERE c.cno = 1;
-- <p class="바탕글"><span style="font-size: 18px"><b>▶독해하이라이트란?</b></span></p>
-- <p class="바탕글"><span style="font-size: 14px">&nbsp;&nbsp;<u><b>세상의 모든 독해유형 실전마스터</b></u></span></p>
-- <p class="바탕글"><span style="font-size: 14px">&nbsp;&nbsp;</span><span style="font-size: 14px">#카르페디엠, 카이로스에서 배운 내용을</span></p>
-- <p class="바탕글"><span style="font-size: 14px">&nbsp; &nbsp;독해 지문에 적용해 보는 수업</span></p>
-- <p class="바탕글"><span style="font-size: 14px">&nbsp; #조각으로 알고 있던 문법을 문장지문에</span></p>
-- <p class="바탕글"><span style="font-size: 14px">&nbsp; &nbsp;활용하는 수업</span></p>
-- <p class="바탕글"><span style="font-size: 14px">&nbsp;</span></p>
-- <p class="바탕글"><span style="font-size: 18px"><b>▶강좌설명</b></span></p>
-- <p class="바탕글"><span style="font-size: 14px">&nbsp; #총 8회차 수업이 쉬는시간 전,후반부로 나뉘어 16강으로</span></p>
-- <p class="바탕글"><span style="font-size: 14px">&nbsp; &nbsp;구성되어있으며 순서에 맞춰 수강하시는것을 추천드립니다</span></p>
-- <p class="바탕글"><span style="font-size: 14px">&nbsp; #독해하이라이트는 훈련을 하는 수업이기 때문에&nbsp;</span></p>
-- <p class="바탕글"><span style="font-size: 14px">&nbsp; &nbsp; 10개의 과정으로 나뉘어 있으며 순서에 상관없이 수강하셔도됩니다</span></p>
-- <p class="바탕글"><span style="font-size: 14px">&nbsp; &nbsp; 단, 전체 과정 중 본교재 진도가 중복되는 경우가 있으니 수강신청 시 필히 확인부탁드립니다</span></p>
-- <p class="바탕글"><span style="font-size: 14px">&nbsp;</span></p>
-- <p class="바탕글"><span style="font-size: 18px"><b>▶학습교재</b></span></p>
-- <p class="바탕글"><span style="font-size: 14px">&nbsp; #독해하이라이트 본교재</span></p>
-- <p class="바탕글"><span style="font-size: 14px">&nbsp; #독해하이라이트 리딩북</span></p>
-- <p class="바탕글"><span style="font-size: 14px">&nbsp; &nbsp; (카르페디엠3,4 과정에서도 사용되는 교재입니다)</span></p>


CREATE TABLE user(
    id VARCHAR(20) PRIMARY KEY, pw VARCHAR(350) NOT NULL,
    name VARCHAR(50) NOT NULL, email VARCHAR(150),
    tel VARCHAR(20), addr1 VARCHAR(200),
    addr2 VARCHAR(200), postcode VARCHAR(20),
    regdate DATETIME DEFAULT CURRENT_TIME,
	 birth DATE DEFAULT CURRENT_DATE,
    pt INT DEFAULT 0,
    visited INT DEFAULT 0
);

-- 수강 - 수강코드, 강의코드, 학생아이디, 수강총시간, 수강완료여부
CREATE TABLE enroll (
	eno INT AUTO_INCREMENT PRIMARY KEY,
	cno int NOT NULL,
	id VARCHAR(20) NOT NULL,
	total_time INT NOT NULL, -- 총 강의 시간 
	curr_time INT NOT NULL, -- 수강한 시간
	complete BOOLEAN NOT NULL DEFAULT 0,
	book BOOLEAN NOT NULL DEFAULT 0, -- 교재 선택 여부
	price INT NOT NULL -- 교재여부에 따른 총 수강 가격
);
