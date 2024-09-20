CREATE TABLE UserInfo (
    userID VARCHAR(100) NOT NULL,
    userName VARCHAR(100) NOT NULL,
    userPassword BYTEA NOT NULL,                            -- password encryption
    numSaved INT, NOT NULL CHECK (numSaved >= 0 AND numSaved <= 10) -- number of graphs they have stored, probably going to limit this
    PRIMARY KEY (userID)
);