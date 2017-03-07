UPDATE ACCOUNT SET Lname = 'Swift'
WHERE Email = 'taylors@uw.edu';

UPDATE POST SET Content = 'Life is so tough :<'
WHERE PostID = 21;

UPDATE POST SET Content = 'nvm DELL fixed my laptop for me. yay!'
WHERE PostID = 23;

UPDATE POST SET Content = 'oops! you saw nothing!'
WHERE PostID = 24;

UPDATE [MESSAGE] SET Content = 'gotchu babe'
WHERE ThreadID = 25 AND Sender = 'jbond@uw.edu' AND MsgDate = '03/01/2017' AND MsgTime = '17:04:21';