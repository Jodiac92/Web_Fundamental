CREATE TABLE member(
m_seq INT PRIMARY KEY AUTO_INCREMENT,
m_id VARCHAR(20) NOT NULL ,
m_email VARCHAR(100) NOT NULL ,
m_name VARCHAR(20) NOT NULL ,
m_pwd CHAR(41) NOT NULL ,
m_phone VARCHAR(15) NOT NULL ,
m_regdate DATETIME NOT NULL
);
