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

CREATE TABLE course (
	cno INT AUTO_INCREMENT PRIMARY KEY, -- 강의 코드
	course_name VARCHAR(100) NOT NULL, -- 강의명
	price INT NOT NULL, -- 강의 가격
	start_date DATE NOT NULL ,  -- 개강일
	end_date DATE NOT NULL , -- 종강일
	total_num INT NOT NULL, -- 총 인원 수
	curr_num INT NOT NULL DEFAULT 0, -- 현재 신청 인원 수
	teacher_name VARCHAR(50) NOT NULL , -- 강사j명 ( teacher 테이블에서 조인)
	content VARCHAR(3000) NOT NULL, -- 강의 소개
	book_name VARCHAR(100) NOT NULL, -- 교재 이름
	book_price INT NOT NULL, -- 교재 가격
	imgsrc1 VARCHAR(256) DEFAULT 'noimg.jpg', -- 강의 사진
	imgsrc2 VARCHAR(256) DEFAULT 'noimg.jpg' -- 교재 사진
); 

SELECT * FROM 
DROP TABLE course;

INSERT INTO course VALUES(DEFAULT, "독해하이라이트", 120000, "2023-10-20", "2023-12-31", 100, DEFAULT, "park", "d", "독해하이라이트 리딩북", 21000, DEFAULT, DEFAULT);
INSERT INTO course VALUES(DEFAULT, "독해하이라이트2", 320000, "2023-10-20", "2023-12-31", 1, DEFAULT, "park", "d", "독해하이라이트 리딩북2", 21000, DEFAULT, DEFAULT);

INSERT INTO course VALUES(DEFAULT, "독해하이라이트3", 120000, "2023-10-20", "2023-12-31", 100, DEFAULT, "park", "d", "독해하이라이트 리딩북3", 21000, DEFAULT, DEFAULT);
INSERT INTO course VALUES(DEFAULT, "독해하이라이트4", 120000, "2023-10-20", "2023-12-31", 100, DEFAULT, "park", "d", "독해하이라이트 리딩북4", 21000, DEFAULT, DEFAULT);
INSERT INTO course VALUES(DEFAULT, "독해하이라이트5", 120000, "2023-10-20", "2023-12-31", 100, DEFAULT, "park", "d", "독해하이라이트 리딩북5", 21000, DEFAULT, DEFAULT);
-- 교재 - 교재코드, 교재명, 교재목차, 출판사, 출판일, 저자, 가격, 기타메모, 
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
	eno INT AUTO_INCREMENT PRIMARY KEY, -- 수강코드
	cno int NOT NULL, -- 수강신청한 강의 코드
	id VARCHAR(20) NOT NULL, -- 수강신청한 회원의 아이디 
	-- total_time INT NOT NULL, -- 총 강의 시간 
	-- curr_time INT NOT NULL, -- 수강한 시간
	complete BOOLEAN NOT NULL DEFAULT 0, -- 수강 완료 여부
	book BOOLEAN NOT NULL DEFAULT 1, -- 교재 선택 여부 (기본값은 1이며, 0은 미선택 1은 선택)
	enroll_price INT NOT NULL, -- 총 수강 가격 (교재 선택 여부에 따라 달라짐)
	book_name VARCHAR(100) NOT NULL -- 교재 이름
);

select * from course where cno = 1

SELECT b.bno, c.book_name, b.price FROM book b, course c WHERE b.cno=1;

update course set curr_num =curr_num+1 where cno=1;

SELECT * from enroll WHERE id = "park" and cno=1;

INSERT INTO enroll VALUES(DEFAULT, 1, "park", DEFAULT, DEFAULT, 141000, "리딩북");

CREATE TABLE fileinfo(NO INT AUTO_INCREMENT PRIMARY KEY,  -- 번호
articleno varchar(45) DEFAULT NULL,	-- 글번호
saveFolder varchar(45) DEFAULT NULL,	-- 저장 디렉토리
originFile varchar(45) DEFAULT NULL,	-- 
saveFile varchar(45) DEFAULT NULL
);


CREATE TABLE fileobj (
	no int NOT NULL AUTO_INCREMENT PRIMARY KEY,
	postno INT NOT NULL,
	savefolder VARCHAR(400),
	originfile VARCHAR(400),
	savefile VARCHAR(800),
	filesize LONG,
	uploaddate VARCHAR(100)
);

CREATE TABLE fileboard (
	postno int NOT NULL AUTO_INCREMENT PRIMARY KEY,	-- 글 번호
	title VARCHAR(100) not null,   -- 글제목
	content VARCHAR(1500) not null,    -- 글내용
	regdate DATETIME DEFAULT CURRENT_TIMESTAMP(),   -- 작성일
	visited INT DEFAULT 0   -- 조회수
);



--자료실 - 순번,제목,내용,자료파일1,자료파일2,자료파일3,작성일,작성자,읽은횟수
CREATE TABLE fileboard22 (
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

CREATE table notice(
no INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(200) NOT NULL,
content VARCHAR(2000) NOT NULL,
resdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
visit int DEFAULT 0
);

INSERT INTO notice VALUES(
DEFAULT,
'[애니키즈] 다시보기 서비스 중지 프로그램 안내',
'"애니키즈" VOD 다시보기 프로그램 중 서비스 계약 만료에 따라<br>
10월 17일(화)부터 서비스 이용이 불가능한 프로그램을 알려드립니다.<br>
<br>
* 서비스 중단일 : 10월17일(화)<br>
<br>
① 모험왕 블링키<br>
② 안녕 자두야 1<br>
③ 극장판 안녕 자두야<br>
④ 콩순이 쑥쑥 인기동요(한/영)<br>
⑤ 콩순이 쑥쑥 베스트송(한/영)<br>
⑥ 콩순이 쑥쑥 여행동요(한/영)<br>
⑦ 콩순이 쑥쑥 창의력동요(한/영)<br>
⑧ 콩순이 쑥쑥 놀이동요(한/영)<br>
⑨ 콩순이 쑥쑥 요리동요(한/영)<br>
⑩ 콩순이 쑥쑥 자존감동요(한/영)<br>
⑪ 콩순이 쑥쑥 교통수단동요(한/영)<br>
⑫ 콩순이 쑥쑥 상상력동요(한/영)<br>
⑬ 콩순이 쑥쑥 탐험동요(한/영)<br>
<br>
애니키즈 프로그램에 많은 관심 부탁드리며<br>
앞으로 더 좋은 서비스로 보답하겠습니다.<br>
<br>
감사합니다.',
DEFAULT,
DEFAULT
);

INSERT INTO notice VALUES(
DEFAULT,
'macOS 14.0 업데이트에 따른 학습용 플레이어 서비스 이용제한 안내',
'macOS 14.0 업데이트 버전이 2023년 9월 27일 신규 패치됨에 따라,<br>
 안정적인 강좌 스트리밍 서비스를 위해 자동/수동 업데이트를 추석 연휴 이후 진행을 부탁드립니다.<br>
<br>
macOS 14.0 이하 기존 사용자는 현재 서비스 그대로 학습용 플레이어를 통해 강좌 학습을 이용하시면 되며,<br>
OS 업데이트 하신 분들은 강좌 학습 이용에 제한이 있을 수 있습니다.<br>
<br>
OS버전 업데이트를 하신 사용자분은 불편하시겠지만<br>
 플레이어 업데이트(2023.10.05. 예정) 전까지는 모바일에서 이용을 부탁드립니다. ',
DEFAULT,
DEFAULT
);

SELECT * FROM enroll WHERE id = "admin";
SELECT c.cno, c.course_name, c.start_date, c.end_date, c.imgsrc1, e.eno, e.id, e.complete FROM course c INNER JOIN enroll e ON c.cno = e.cno WHERE id="admin";

SELECT c.cno, c.course_name, c.start_date, c.end_date, c.imgsrc1, e.eno, e.id, e.complete, u.name
FROM course c
INNER JOIN enroll e ON c.cno = e.cno 
INNER JOIN user u ON e.id = u.id
WHERE u.id = 'admin' AND e.complete = 1;

SELECT b.bno, b.book_name, b.price AS book_price
    FROM book b
    INNER JOIN course c ON b.cno = c.cno
    WHERE c.cno = 1;
    

update enroll set complete =1 where eno=1 ;

-- 자료실 자료 데이터 테이블 생성
CREATE TABLE fileInfo(
    no int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    articleno INT,
    saveFolder VARCHAR(300) NOT NULL,
    originFile VARCHAR(300) NOT NULL,
    saveFile VARCHAR(300) NOT NULL);

-- 자료실 테이블 생성
CREATE TABLE fileboard (
    articleno int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id varchar(16) NOT NULL,
    title varchar(100) NOT NULL,
    content varchar(2000) NOT NULL,
    regdate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP);


CREATE TABLE fileinfo(
NO INT AUTO_INCREMENT PRIMARY KEY,  -- 번호
articleno varchar(45) DEFAULT NULL,	-- 글번호
saveFolder varchar(45) DEFAULT NULL,	-- 저장 디렉토리
originFile varchar(45) DEFAULT NULL,	--
saveFile varchar(45) DEFAULT NULL
);
CREATE TABLE fileobj (
	no int NOT NULL AUTO_INCREMENT PRIMARY KEY,
	postno INT NOT NULL,
	savefolder VARCHAR(400),
	originfile VARCHAR(400),
	savefile VARCHAR(800),
	filesize LONG,
	uploaddate VARCHAR(100)
);
CREATE TABLE fileboard (
	postno int NOT NULL AUTO_INCREMENT PRIMARY KEY,	-- 글 번호
	title VARCHAR(100) not null,   -- 글제목
	content VARCHAR(1500) not null,    -- 글내용
	regdate DATETIME DEFAULT CURRENT_TIMESTAMP(),   -- 작성일
	visited INT DEFAULT 0   -- 조회수
);
SELECT c.cno, c.course_name, c.start_date, c.end_date, c.imgsrc1, e.eno, e.id, e.complete, u.name
        FROM course c
                 INNER JOIN enroll e ON c.cno = e.cno
                 INNER JOIN user u ON e.id = u.id
        WHERE u.id = "admin"

CREATE table review(
no INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(200) NOT NULL,
content VARCHAR(2000) NOT NULL,
resdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
visit int DEFAULT 0,
id VARCHAR(50)
);

INSERT INTO review VALUES(
DEFAULT,
'OO 대학교 합격 수기 (수학 3등급->수능 96점,전교1등)',
'1. 매 수업마다 테스트 진행<br>
수업 시작 전 테스트를 진행했고 친구들과 점수와 틀린문제를 공유하며 어디서 부족한 지 점검할 수 있었습니다. <br>
처음에는 낮은 점수를 받을때마다 부끄러웠지만 다음엔 절대 그러지 않겠다는 다짐을 하고<br>
열심히 공부할 수 있었기에 성장할 수 있었습니다.<br><br>
2. 좋은 수업 분위기와 좋은 친구들<br>
공부를 열심히하고 잘하는 친구들이 많아서 제가 조금이라도 공부를 대충한 날이 있으면 바로 티가 났습니다. <br>
그래서 큰 슬럼프없이 공부를 집중할 수 있었습니다. <br>
서광선생님의 수업을 듣는 학생들은 1등급인 학생이 1등급이 아닌 학생보다 더 많았습니다.<br>
덕분에 공부자극을 받으며 더 열정적으로 할 수 있었습니다. <br>
열심히 공부하면 김수현선생님이 선물도 주셔서 공부가 괴롭지 않았습니다!<br><br>
3. 영재학습실과 개별질문시간<br>
수업을 듣고 난 뒤 영재학습실에서 오답과 숙제를 90분정도 했습니다. <br>
모르는 문제를 조교선생님께 질문하면 친절하게 설명해주셨고 이해가 잘 됐습니다. <br>
학원에 다니기 전에는 앉아있는 시간이 길지 않아 공부하는 시간도 적었습니다. <br>
스마트해법에 다니면서 앉아있는 시간이 늘었고 자연스레 공부하는 시간도 늘었습니다. <br>
덕분에 고3내내 10시간 공부를 할 수 있었고 큰 성장을 이룰 수 있었습니다.<br><br>
열심히 하고자하는 학생, 수학을 잘하고 싶은 학생은 스마트해법을 강추합니다.',
DEFAULT,
DEFAULT,
'leeeunyoung'
);

SELECT * FROM enroll;