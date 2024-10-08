/*
 * This table is going to store user information, go figure...
 * 
 * userName -----> user defined type. this must be unique in the table.
 * userPassword -> this is going to store a hashed user password for login validation.
 * userEmail ----> the user's email, maybe use this for login resets if we have the time to implement this?
 * numSaved -----> this number represents the number of graph projects that the user has saved to the cloud. Dont want this number to get too big,
 *                 limiting it to 10 graphs at the moment.
 */
CREATE TABLE IF NOT EXISTS UserInfo (
    userName VARCHAR(100) NOT NULL,
    userPassword BYTEA NOT NULL,
    userEmail VARCHAR(100) NOT NULL,
    numSaved INT, NOT NULL CHECK (numSaved >= 0 AND numSaved <= 10),
    PRIMARY KEY (userName)
);
