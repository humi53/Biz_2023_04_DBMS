CREATE TABLE tbl_product(
    pCode	VARCHAR2(13)		PRIMARY KEY,
    pName	nVARCHAR2(50)	NOT NULL,	
    pItem	VARCHAR2(10)	NOT NULL,	
    pIPrice	NUMBER	DEFAULT 0,	
    pOPrice	NUMBER	DEFAULT 0	
);
drop table tbl_product;
drop table tbl_buyer;
drop table tbl_iolist;
CREATE TABLE tbl_buyer(
    buId	VARCHAR2(10)		PRIMARY KEY,
    buName	nVARCHAR2(20)	NOT NULL,	
    buTel	VARCHAR2(15),		
    buAddr	nVARCHAR2(125)		
);
CREATE TABLE tbl_iolist(
    ioSEQ	NUMBER		PRIMARY KEY,
    ioDate	VARCHAR2(10)	NOT NULL,	
    ioTime	VARCHAR2(10)	NOT NULL,	
    ioBuid	VARCHAR2(10)	NOT NULL,	
    ioPCode	VARCHAR2(13)	NOT NULL,	
    ioQuan	NUMBER	DEFAULT 0,	
    ioPrice	NUMBER	DEFAULT 0	
);



DROP SEQUENCE seq_iolist;
CREATE SEQUENCE seq_iolist
START WITH 1 INCREMENT BY 1;

INSERT INTO tbl_product(pCode, pName , pItem, pIPrice, pOPrice)
VALUES('00003', '솜사탕', '과자', 300, 500);

SELECT pCode, pName , pItem, pIPrice, pOPrice FROM tbl_product ORDER BY pCode ASC; 
SELECT pCode, pName , pItem, pIPrice, pOPrice FROM tbl_product WHERE pName = '솜사탕' ORDER BY pCode ASC; 
SELECT pCode, pName , pItem, pIPrice, pOPrice FROM tbl_product WHERE pCode = '00002'; 

UPDATE tbl_product 
SET pName = '새우깡', 
    pItem = '과자', 
    pIPrice = 500, 
    pOPrice = 1500
    WHERE pCode = '00003';
    
SELECT MAX(pCode) as pCode
FROM tbl_product;


INSERT INTO tbl_buyer(buId, buName, buTel, buAddr)
VALUES('0000000003', '홍길동', '010-1111-1111', '서울');

SELECT buId, buName, buTel, buAddr FROM tbl_buyer ORDER BY buId ASC;
SELECT buId, buName, buTel, buAddr FROM tbl_buyer WHERE buId = '00010101';
SELECT buId, buName, buTel, buAddr FROM tbl_buyer WHERE buName = '홍길동' ORDER BY buId ASC;

UPDATE tbl_buyer 
SET buName = '홍길동',
    buTel = '1',
    buAddr = '2'
    WHERE buId = '00010101';

SELECT MAX(buId) as buId
FROM tbl_buyer;


INSERT INTO tbl_iolist(ioSEQ, ioDate, ioTime, ioBuid, ioPCode, ioQuan, ioPrice)
VALUES(seq_iolist.nextval, '2023-05-30', '01:00:00', '00010103', '00003', 1, 500);
SELECT ioSEQ, ioDate, ioTime, ioBuid, ioPCode, ioQuan, ioPrice FROM tbl_iolist ORDER BY ioSEQ ASC;
SELECT ioSEQ, ioDate, ioTime, ioBuid, ioPCode, ioQuan, ioPrice FROM tbl_iolist WHERE iopcode = '00003' ORDER BY ioSEQ ASC;
SELECT ioSEQ, ioDate, ioTime, ioBuid, ioPCode, ioQuan, ioPrice FROM tbl_iolist WHERE ioBuid = '00010103' ORDER BY ioSEQ ASC;
SELECT ioSEQ, ioDate, ioTime, ioBuid, ioPCode, ioQuan, ioPrice FROM tbl_iolist WHERE ioDate BETWEEN '2023-0-30' AND '2023-05-30';
SELECT ioSEQ, ioDate, ioTime, ioBuid, ioPCode, ioQuan, ioPrice FROM tbl_iolist 
    WHERE iopcode = '000000000001' and ioDate BETWEEN '2023-01-30' AND '2023-05-30';




INSERT INTO tbl_product (pCode, pName, pItem, pIPrice, pOPrice)
VALUES ('000000000001', 'Apple', 'Fruit', 1000, 1200);

INSERT INTO tbl_product (pCode, pName, pItem, pIPrice, pOPrice)
VALUES ('000000000002', 'Banana', 'Fruit', 500, 600);

INSERT INTO tbl_product (pCode, pName, pItem, pIPrice, pOPrice)
VALUES ('000000000003', 'Orange', 'Fruit', 800, 900);

INSERT INTO tbl_product (pCode, pName, pItem, pIPrice, pOPrice)
VALUES ('000000000004', 'Milk', 'Dairy', 2000, 2200);

INSERT INTO tbl_product (pCode, pName, pItem, pIPrice, pOPrice)
VALUES ('000000000005', 'Cheese', 'Dairy', 3000, 3500);

INSERT INTO tbl_product (pCode, pName, pItem, pIPrice, pOPrice)
VALUES ('000000000006', 'Chicken', 'Meat', 5000, 5500);

INSERT INTO tbl_product (pCode, pName, pItem, pIPrice, pOPrice)
VALUES ('000000000007', 'Beef', 'Meat', 7000, 8000);

INSERT INTO tbl_product (pCode, pName, pItem, pIPrice, pOPrice)
VALUES ('000000000008', 'Rice', 'Grain', 1500, 1700);

INSERT INTO tbl_product (pCode, pName, pItem, pIPrice, pOPrice)
VALUES ('000000000009', 'Bread', 'Grain', 2000, 2200);

INSERT INTO tbl_product (pCode, pName, pItem, pIPrice, pOPrice)
VALUES ('000000000010', 'Eggs', 'Dairy', 1500, 1600);

COMMIT;