
USE bbsdb;

INSERT INTO tbl_bbs (b_username)
VALUES('callor');
-- AUTO_INCREMET 로 설정된 칼럼의 가장
-- 마지막 INSERT 된 데이터 가져오기
SELECT last_insert_id();

INSERT INTO tbl_bbs (b_username)
VALUES('callor'),
('callor2'),
('callor3'),
('callor4'),
('callor5');

CREATE TABLE tbl_images(
	i_seq	bigint PRIMARY KEY	AUTO_INCREMENT,
	i_bseq	bigint NOT NULL,
	i_originalName	VARCHAR(125),
	i_uploadName	VARCHAR(255)
);
SELECT * FROM tbl_bbs;