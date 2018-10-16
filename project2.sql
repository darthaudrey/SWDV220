Use disk_inventory;
ALTER TABLE users ADD PRIMARY KEY (id);

CREATE TABLE addresses (
  user_id int, 
  street varchar(30) NOT NULL,
  city varchar(30) NOT NULL,
  state varchar(30) NOT NULL,
  PRIMARY KEY (user_id),
  FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE
);
INSERT INTO addresses (user_id, street, city, state) VALUES
  (1, '1 Market Street', 'San Francisco', 'CA'),
  (2, '2 Elm Street', 'San Francisco', 'CA'),
  (3, '3 Main Street', 'Boston', 'MA');
 
 CREATE TABLE cds (
  id type,
  title varchar(100) NOT NULL,
  author varchar(100) NOT NULL,
  published_date timestamp NOT NULL,
  isbn char(12),
  PRIMARY KEY (id),
  UNIQUE (isbn)
);


CREATE TABLE reviews (
  id serial,
  cd_id integer NOT NULL,
  reviewer_name varchar(255),
  content varchar(255),
  rating integer,
  published_date timestamp DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  FOREIGN KEY (cd_id) REFERENCES cd(id) ON DELETE CASCADE
);