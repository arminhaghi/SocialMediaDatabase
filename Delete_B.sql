DELETE FROM POST
WHERE PostID = 23;

DELETE FROM POST
WHERE PostID = 24;

DELETE FROM POST_COMMENTS
WHERE PostID = 20 AND CommentTime = '03/01/2017' AND CommentDate = '17:01:29' AND Commenter = 'jbond@uw.edu';

DELETE FROM [MESSAGE]
WHERE ThreadID = 25 AND Sender = 'taloyrs@uw.edu' AND MsgDate = '03/02/2017' AND MsgTime = '13:41:23';

DELETE FROM [MESSAGE]
WHERE ThreadID = 25 AND Sender = 'jbond@uw.edu' AND MsgDate = '03/02/2017' AND MsgTime = '14:00:46';