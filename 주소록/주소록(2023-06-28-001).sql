-- 여기는 addr 사용자 화면

-- 1. 데이터를 저장할 TABLE 생성하기
CREATE TABLE tbl_address (
    a_id	VARCHAR2(5)		PRIMARY KEY,
    a_name	nVARCHAR2(20)	NOT NULL,	
    a_tel	VARCHAR2(15)	NOT NULL,	
    a_addr	nVARCHAR2(125)	NOT NULL
);