insert into users(username,email,pswd) 
values('User1','JohnSmith@testDB.com','MyPassWord'),
      ('User2','MaryPalm@testDB.com','MyPassWord'),
      ('User3','GeorgePen@testDB.com','MyPassWord');


select * from users;

insert into posts(p_username,title)
    values('User1','My first SQL Database'),
          ('User2','My first Java Programming'),
          ('User3','My first C++ Programming');


select * from users;


insert into comments(c_userid,c_username,comment)
     values(1,'User1','Goodluck to me..');

insert into comments(c_userid,c_username,comment)
     values(1,'User3','Dont worry, you can do it!!');

insert into comments(c_userid,c_username,comment)
     values(1,'User2','Yeah, If you need some help, let me know!');

insert into comments(c_userid,c_username,comment)
     values(2,'User1','Ive been there you can make it!!');

insert into comments(c_userid,c_username,comment)
     values(2,'User3','I am soon be graduate!!');

insert into comments(c_userid,c_username,comment)
     values(2,'User2','Thanks guys, Congratulations to all!');

insert into comments(c_userid,c_username,comment)
     values(3,'User1','I am interested in C++ program too..');

insert into comments(c_userid,c_username,comment)
     values(3,'User2','Wow you guys have a lot of knowledge and skills!');

insert into comments(c_userid,c_username,comment)
     values(3,'User2','Just one at a time and you will be there');


Select p.title as "Post Title",p.p_username as "Post Owner",
c.comment as "Comment",c.c_username as "Comment ID",c.c_date 
from comments c
inner join posts p on p.p_userid = c.c_userid
group by c.c_date;



