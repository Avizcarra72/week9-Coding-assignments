create database if not exists users;

use users;
drop table if exists comments;
drop table if exists posts;
drop table if exists users;



CREATE TABLE users( 
   username varchar(15) not null,
   email varchar(20) not null,
   pswd varchar(10) not null,
   primary key(username)
);

CREATE TABLE posts(
  p_userid int(10) not null auto_increment,
  p_username varchar(15) not null,
  title varchar(150) not null,
  p_date datetime default current_timestamp,
  primary key(p_userid),
  foreign key(p_username) references users(username)
  
);

CREATE TABLE comments(
  c_id int(10) not null auto_increment,
  c_userid int(10) not null,
  c_username varchar(15) not null,
  comment varchar(150),
  c_date datetime default current_timestamp,
  primary key(c_id,c_userid),
  foreign key (c_userid) references posts(p_userid),
  foreign key (c_username) references posts(p_username)
);

