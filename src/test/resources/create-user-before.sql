delete from user_role;
delete from usr;

insert into usr(id, active, password, username) values
(1, true, '$2a$08$nnlouAr83cKmub8M1sNzoeYZw0Z5IQwOV3h6/GBt8vXFgIoB6A57q', 'Dmitry'),
(2, true, '$2a$08$nnlouAr83cKmub8M1sNzoeYZw0Z5IQwOV3h6/GBt8vXFgIoB6A57q', 'Ilon');

insert into user_role(user_id, roles) values
(1, 'USER'), (1, 'ADMIN'),
(2, 'USER');