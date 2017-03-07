update ACCOUNT
Set Lname = 'Nguyen'
where Email = 'Asian@gmail.com'

update MEDIA
set [Type] = 'Video'
where Caption = 'Selfie 360'  -- This doesn't work the way it's instended since full primary key is not captured

update MESSAGE 
set Content = 'None'
where Sender = 'Asian@gmail.com' AND MsgDate = '03/05/2017' AND
MsgTime = '03:05:08'

update POST
set Content = 'I ''bored ' 
where UserEmail = 'Asian@gmail.com' AND PostDate= '03/02/2017' AND PostTime= '13:00:00'

update POST_COMMENTS
set CommentContent = 'Too bad'
where Commenter = 'Asian@gmail.com' AND CommentTime = '05:06:30' AND CommentDate = '03/08/2017'
