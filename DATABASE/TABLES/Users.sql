CREATE TABLE USERDB (
    id VARCHAR (100) NOT NULL PRIMARY KEY,
    username VARCHAR(200),
    email VARCHAR(50) UNIQUE,
    password VARCHAR(200),
    isAdmin INT NOT NULL DEFAULT 0,
    isSent INT NOT NULL DEFAULT 0,
    resetSuccess INT NOT NULL DEFAULT 0
);
