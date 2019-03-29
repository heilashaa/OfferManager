CREATE TABLE users
(
    id int PRIMARY KEY NOT NULL,
    login varchar(255) NOT NULL,
    password varchar(255),
    name varchar(255) NOT NULL,
    surname varchar(255) NOT NULL
);
CREATE UNIQUE INDEX users_id_uindex ON users (id);
CREATE UNIQUE INDEX users_login_uindex ON users (login);



