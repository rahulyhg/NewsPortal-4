# NewsPortal
### Initial Setup
1. Clone this repository to your working directory
2. Import the ums.sql file to a database named ums, with username=root,password=""
3. And then test the application



###Information
There are three types of users

1. Admin: Can edit and add all types of news
2. SubAdmin: Can only edit the news which s/he has access to edit
3. Users: Can only view the news


##API Setup
Now users can call to the /news.php?id=some_id or just /news.php
The first one will return the specific id news and the other one will send all the news.
Using basic authentication. So user must send Basic Auth headers. To access the api

