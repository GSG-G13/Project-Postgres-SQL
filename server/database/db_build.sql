BEGIN;
DROP TABLE IF EXISTS user, photographer CASCADE;

CREATE TABLE IF NOT EXISTS user(
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(200) NOT NULL,
    phone TEXT NOT NULL,
    country VARCHAR(100),
    city VARCHAR(100) ,
    purpose VARCHAR(100) NOT NULL,
   customer_message TEXT
);

INSERT INTO user (customer_name, email, phone, country,city, purpose) VALUES
('shatha', 'shatha@gmail.com', '0097567042924','Palestine', 'Khan Younis', 'Other'),
('moh', 'moh123@gmail.com', '00971452379284', 'Palestine','Gaza', 'Commercial');


CREATE TABLE IF NOT EXISTS photographer(
    id SERIAL PRIMARY KEY,
    photo_name VARCHAR(100) NOT NULL,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES user(customer_id)
);



INSERT INTO photographer (photo_name) VALUES ('shatha');

COMMIT;