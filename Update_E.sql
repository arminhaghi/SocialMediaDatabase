update ACCOUNT set NickName = 'joker' 
where Email = 'jsmith12@yahoo.com';

update FRIEND set FriendEmail = 'emma_j@gmail.com' 
where UserEmail = 'joyPhilips@gmail.com' AND FriendEmail = 'jsmith12@yahoo.com';

update POST set Content = 'Why does it always rain when I am late?'
where PostDate = '03/27/2015' AND PostTime = '8:30:18' AND UserEmail = 'jsmith12@yahoo.com';

update POST set Content = 'New phone with silver back!' 
where PostDate = '07/16/2010' AND PostTime = '12:07:05' AND UserEmail = 'jsmith12@yahoo.com';

update MEDIA set [Type] = 'png' 
where PostID = (select PostID from POST where UserEmail = 'jsmith12@yahoo.com' AND PostDate = '07/16/2010' AND PostTime = '12:07:05');

update POST_REACTION set ReactionType = 'Like' where UserEmail = 'emma_j@gmail.com' AND 
PostID = (select PostID from POST where UserEmail = 'jsmith12@yahoo.com' AND PostDate = '07/16/2010' AND PostTime = '12:07:05');

update POST_COMMENTS set CommentContent = 'Thanks, guys. And, Joy, I did not change my number'
where CommentTime = '16:15:59' AND CommentDate = '07/16/2010' AND Commenter = 'jsmith12@yahoo.com';

update [MESSAGE] set Content = 'Dude, when are you free?'
where Sender = 'jsmith12@yahoo.com' AND MsgDate = '05/25/2009' AND MsgTime = '15:31:56';
