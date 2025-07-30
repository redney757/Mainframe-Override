--
--First i notice that all the posts are in Lorem Ipsum format. Since there is a post according to the README stating there is a post containing "MY DAD" I will do a query to find that post.
SELECT * FROM forum_posts WHERE content LIKE '%My dad%';
--I take note of the username  of the post which is "smart-money-44" and do a query in the forum_accounts to find the account details of the user.
SELECT * FROM forum_accounts WHERE username = 'smart-money-44';
--Without actually looking at the read me i went to the emptystack_accounts table to look for a user with the same first name as the smart-money-44 user.
SELECT * FROM emptystack_accounts WHERE first_name = 'Brad';
-- i realized that users can have the same first name so i did a query to find the user with the same last name as the smart-money-44 user.
SELECT * FROM emptystack_accounts WHERE last_name = 'Steele';
-- I found two users and then tested each one to see which one woud get me logged in. which ended up being    triple-cart-38 | password456 | Andrew     | Steele
-- I then ran into trouble logging in and switched back to the readME to see what i needed to do to login with the correct credentials. I originally thought i could do aquery for the username admin but realized that it would be too obvious
--I did a query to find the post with the subject that contained the word 'taxi' and came up with nothing
 SELECT * FROM emptystack_messages WHERE subject LIKE '%taxi%';
--I then did a query to show all the posts and see which one was not in Lorem Ipsum format.
SELECT * FROM emptystack_messages; 
--I noticed one with the subject in all caps TAXI and did a query to find the post with the subject TAXI
SELECT * FROM emptystack_messages WHERE subject LIKE '%TAXI%';
-- I took note of the admin user and went back to the emptystack_accounts to find the user with the same username as the post.
SELECT * FROM emptystack_accounts WHERE username = 'your-boss-99';
--I took note of the password and tried to login with the username and password, i succeeded but had to then go back and find the PROJECT with the code containing the word TAXI in it.
SELECT * FROM emptystack_projects WHERE code = 'TAXI';
--I then wnt back to enter the credentials and the code and did the shutdown sequence to stop the project.

--These are the notes i took along the way to find the solution to the challenge.
-- smart-money-44
--  smart-money-44 | Brad       | Steele
--   worse-insolence-73 | SJXJhMrH2jqjBJ_ | Brad       | Smith
--    triple-cart-38 | password456 | Andrew     | Steele
--  lance-main-11  | password789 | Lance      | Steele
--  liquid-harp-44                  | RnKY2XkOSLfMJjR | Herminia    | Glover (RANDOM user to test login)
--   LidWj | your-boss-99                   | triple-cart-38 | Project TAXI                                                                            | Deploy Project TAXI by end of week. We need this out ASAP.


--   your-boss-99 | notagaincarter | Skylar     | Singer
--    DczE0v2b | TAXI