insert into ACCOUNT values ('John', 'Smith', 'jsmith', 'jsmith12@yahoo.com', 'Password', 'M');
insert into ACCOUNT values ('Emma', 'Janes', 'Emma123', 'emma_j@gmail.com', 'cat123', 'F');
insert into ACCOUNT values ('Daniel', 'Jones', 'DJ', 'dan_jones01@gmail.com', 'keys11', 'M');
insert into ACCOUNT values ('Joy', 'Philips', 'joy2', 'joyPhilips@gmail.com', 'pass2', 'F');

insert into FRIEND values ('jsmith12@yahoo.com', 'emma_j@gmail.com');
insert into FRIEND values ('jsmith12@yahoo.com', 'dan_jones01@gmail.com');
insert into FRIEND values ('emma_j@gmail.com', 'dan_jones01@gmail.com');
insert into FRIEND values ('joyPhilips@gmail.com', 'jsmith12@yahoo.com');

insert into POST (Content, PostDate, PostTime, UserEmail) values ('Got a new phone today!', '07/16/2010', '12:07:05', 'jsmith12@yahoo.com');
insert into POST (Content, PostDate, PostTime, UserEmail) values ('Overslept today. Miss my bus...', '03/27/2015', '8:30:18', 'dan_jones01@gmail.com');

/* MEDIA insertion */
insert into MEDIA ([Type], Caption, PostID, [FileName]) 
values ('jpg', 'New phone!', 
(select PostID from POST where UserEmail = 'jsmith12@yahoo.com' AND PostDate = '07/16/2010' AND PostTime = '12:07:05'),
'newPhone'); 

insert into MEDIA ([Type], Caption, PostID, [FileName])
values ('png', 'No bus & now raining :(', 
(select PostID from POST where UserEmail = 'dan_jones01@gmail.com' AND PostDate = '03/27/2015' AND PostTime = '8:30:18'),
'busStopSign');

/* REACTION insertion */
insert into REACTION values ('Angry');
insert into REACTION values ('Dislike');

/* POST_REACTION insertion */
insert into POST_REACTION (UserEmail, PostID, ReactionType)
values ('emma_j@gmail.com', 
(select PostID from POST where UserEmail = 'jsmith12@yahoo.com' AND PostDate = '07/16/2010' AND PostTime = '12:07:05'),'Love');

insert into POST_REACTION (UserEmail, PostID, ReactionType)
values ('emma_j@gmail.com',
(select PostID from POST where UserEmail = 'dan_jones01@gmail.com' AND PostDate = '03/27/2015' AND PostTime = '8:30:18'),
'Sad');

insert into POST_REACTION (UserEmail, PostID, ReactionType)
values ('jsmith12@yahoo.com',
(select PostID from POST where UserEmail = 'dan_jones01@gmail.com' AND PostDate = '03/27/2015' AND PostTime = '8:30:18'),
'Sad');

/* POST_COMMENTS insertion */
insert into POST_COMMENTS (PostID, CommentTime, CommentDate, CommentContent, Commenter)
values ((select PostID from POST where UserEmail = 'jsmith12@yahoo.com' AND PostDate = '07/16/2010' AND PostTime = '12:07:05'), 
'14:25:49','07/16/2010', 'That is awesome!', 'emma_j@gmail.com');

insert into POST_COMMENTS (PostID, CommentTime, CommentDate, CommentContent, Commenter)
values ((select PostID from POST where UserEmail = 'dan_jones01@gamil.com' AND PostDate = '03/27/2015' AND PostTime = '8:30:18'), 
 '9:30:05', '03/27/2015','That sucks, man. Stay dry!', 'jsmith12@yahoo.com');

insert into POST_COMMENTS (PostID, CommentTime, CommentDate, CommentContent, Commenter)
values ((select PostID from POST where UserEmail = 'jsmith12@yahoo.com' AND PostDate = '07/16/2010' AND PostTime = '12:07:05'), 
'13:07:46', '07/16/2010', 'Did you change your number?', 'joyPhilips@gmail.com');

insert into POST_COMMENTS (PostID, CommentTime, CommentDate, CommentContent, Commenter)
values ((select PostID from POST where UserEmail = 'jsmith12@yahoo.com' AND PostDate = '07/16/2010' AND PostTime = '12:07:05'),
'16:15:59', '07/16/2010', 'Thanks, currently learning how to use it', 'jsmith12@yahoo.com');

/* MESSAGE_TRHEAD insertion */
insert into MESSAGE_THREAD (OwnerEmail) values ('jsmith12@yahoo.com');

/* MESSAGE insertion */
insert into [MESSAGE] (ThreadID, Sender, MsgDate, MsgTime, Content)
values ((select ThreadID from MESSAGE_THREAD where OwnerEmail = 'jsmith12@yahoo.com'), 
'jsmith12@yahoo.com', '05/25/2009', '15:31:56', 'Hey, we should hangout sometime!');

insert into [MESSAGE] (ThreadID, Sender, MsgDate, MsgTime, Content)
values ((select ThreadID from MESSAGE_THREAD where OwnerEmail = 'jsmith12@yahoo.com'), 
'dan_jones01@gmail', '05/25/2009', '20:46:13', 'Sure, want to do Saturday night?');

insert into [MESSAGE] (ThreadID, Sender, MsgDate, MsgTime, Content)
values ((select ThreadID from MESSAGE_THREAD where OwnerEmail = 'jsmith12@yahoo.com'),
'jsmith12@yahoo.com', '05/25/2009', '20:47:05', 'Yeah! Sounds good!');

/* THREAD_PARTICIPANT insertion */
insert into THREAD_PARTICIPANT (ThreadID, UserEmail)
values ((select ThreadID from MESSAGE_THREAD where OwnderEmail = 'jsmith12@yahoo.com'), 
'dan_jones01@gmail.com');

insert into THREAD_PARTICIPANT (ThreadID, UserEmail)
values ((select ThreadID from MESSAGE_THREAD where OwnderEmail = 'jsmith12@yahoo.com'),
'jsmith12@yahoo.com');
