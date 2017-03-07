INSERT INTO ACCOUNT VALUES
('Billy', 'Agung Tjahjady', null, 'billyat8@uw.edu', 'definitelyasecret', 'M'),
('James', 'Bond', '007', 'jbond@uw.edu', 'someonewillhackme', 'M'),
('Nicki', 'Minaj', null, 'nickim@uw.edu', 'hehexd', 'F'),
('Taylor', 'Fast', null, 'taylors@uw.edu', 'swiftie', 'F');

INSERT INTO FRIEND VALUES
('billyat8@uw.edu', 'jbond@uw.edu'),
('nickim@uw.edu', 'jbond@uw.edu'),
('billyat8@uw.edu', 'nickim@uw.edu'),
('taylors@uw.edu', 'billyat8@uw.edu'),
('taylors@uw.edu', 'jbond@uw.edu');

INSERT INTO POST VALUES
(20, 'Oh God, I *love* cats!', '03/01/2017', '16:20:00', 'nickim@uw.edu'),
(21, 'School is so tough :<', '03/05/2017', '23:20:29', 'billyat8@uw.edu'),
(22, 'Lovin my new Lamborghini', '03/05/2017', '23:57:11', 'jbond@uw.edu'),
(23, 'rip my laptop', '03/06/2017', '11:33:19', 'billyat8@uw.edu'),
(24, 'drank 5 shots before my live performance. FeelsGreatMan!', '03/07/2017', '17:49:37', 'taylors@uw.edu'),
(25, 'ooo your cats is so cute. can i come over to play? :D @nickim', '03/09/2017', '23:13:22', 'taylors@uw.edu');

INSERT INTO MEDIA VALUES
('Photos', 'Oh God, I *love* cats!', 20);

INSERT INTO REACTION VALUES
('Like'),
('Love'),
('Surprised');

INSERT INTO POST_REACTION VALUES
('billyat8@uw.edu', 20, 'Love'),
('jbond@uw.edu', 20, 'Like'),
('billyat8@uw.edu', 22, 'Like'),
('taylors@uw.edu', 22, 'Love'),
('nickim@uw.edu', 22, 'Surprised');

INSERT INTO POST_COMMENTS VALUES
(20, '03/01/2017', '16:21:00', 'same', 'billyat8@uw.edu'),
(20, '03/01/2017', '17:01:29', 'nice. they are cute indeed', 'jbond@uw.edu'),
(20, '03/01/2017', '17:02:49', 'OMG THEIR SO CUTE!!', 'taylors@uw.edu');

INSERT INTO MESSAGE_THREAD VALUES
(20, 'taylors@uw.edu');


INSERT INTO THREAD_PARTICIPANT VALUES
(20, 'taylors@uw.edu'), -- Is already the owner doesn't need to be the participant anymore
(20, 'jbond@uw.edu');

INSERT INTO [MESSAGE] VALUES
(20, 'taylors@uw.edu', '03/01/2017', '17:03:11', 'hey james, did you see nickis cats?? their so cute!'),
(20, 'jbond@uw.edu', '03/01/2017', '17:03:29', 'ye, what about it? lemme guess. you want them?'),
(20, 'taylors@uw.edu', '03/01/2017', '17:04:01', 'yes! your so understanding james! thats my boy! kidnap them for me plz :) thx! xoxo'),
(20, 'jbond@uw.edu', '03/01/2017', '17:04:21', 'gotchu honey'),
(20, 'taylors@uw.edu', '03/02/2017', '13:41:23', 'actually nvm, nicki is a nice person'),
(20, 'jbond@uw.edu', '03/02/2017', '13:50:21', 'kk. can you do the chores later?'),
(20, 'taylors@uw.edu', '03/02/2017', '13:52:57', 'what? i have been doing them since 2 weeks now. Its your turn!'),
(20, 'jbond@uw.edu', '03/02/2017', '14:00:41', 'aww kk'),
(20, 'jbond@uw.edu', '03/02/2017', '14:00:46', 'mean');
