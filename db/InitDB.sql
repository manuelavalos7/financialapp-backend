CREATE TABLE users(
    user_id serial PRIMARY KEY,
    username text UNIQUE NOT NULL,
    "password" text NOT NULL,
    email text UNIQUE NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL
);

CREATE TABLE transactions(
    transaction_id serial PRIMARY KEY,
    user_id int NOT NULL,
    "date" DATE NOT NULL,
    "timestamp" TIMESTAMP NOT NULL,
    new_ticker text NOT NULL,
    old_ticker text NOT NULL,
    new_ticker_volume DECIMAL NOT NULL,
    old_ticker_volume DECIMAL NOT NULL,
    transaction_fee DECIMAL NOT NULL,
    memo text    
);

CREATE TABLE tickers(
    ticker_id VARCHAR(10) PRIMARY KEY,
    ticker_type VARCHAR(10) NOT NULL,
    ticker_api text
);

INSERT INTO users(username, "password", email, first_name, last_name)
VALUES ('adminuser', 'testpassword2', 'manuelavalos7@yahoo.com', 'Test', 'Admin1');