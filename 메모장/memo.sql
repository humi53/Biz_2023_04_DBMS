CREATE TABLE tbl_memo(
    m_seq	NUMBER		PRIMARY KEY,
    m_writer	nVARCHAR2(20)	NOT NULL,
    m_date	VARCHAR2(10)	NOT NULL,	
    m_subject	nVARCHAR2(20)	NOT NULL,	
    m_content	nVARCHAR2(400)		
);

DROP SEQUENCE seq_memo;
CREATE SEQUENCE seq_memo
START WITH 1 INCREMENT BY 1;


INSERT INTO tbl_memo(m_seq,m_writer,m_date,m_subject,m_content)
VALUES(seq_memo.nextval, '홍길동', '2023-05-26', '제목입니다', '내용입니다');

SELECT * FROM tbl_memo ORDER BY m_seq ASC;
SELECT m_seq,m_writer,m_date,m_subject,m_content FROM tbl_memo;

UPDATE tbl_memo
SET m_content = '내용은 010-111-1234'
WHERE m_seq = 1;

DELETE FROM tbl_memo
WHERE m_seq = 1;

COMMIT;