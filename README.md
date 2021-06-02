My PlayList
I have have complete this particular website as my DBMS mini project. 
In this project any user can register by using their email address and they can collect their favourite song or any video link from youtoube embbeded link and they can play those song on our website. And if the user wants to he/she can share those playList with their relatives or friends by using a SHARE CODE provided by Website.

WHat Is Used ???

    Booststrap
    Html5
    CSS3
    JavaScript
    
    
    PHP (Not OOP)
    MYSQLI
  
  
  
   I have use 1 database and 3 table
       first table: user

           CREATE TABLE `user` (
          `id` int(100) NOT NULL,
          `name` varchar(100) NOT NULL,
          `username` varchar(100) NOT NULL,
          `password` varchar(100) NOT NULL,
          `email` varchar(100) NOT NULL
          )


      second table :

           CREATE TABLE `filelist` (
          `id` int(11) NOT NULL,
          `user_id` int(11) NOT NULL,
          `title` varchar(255) NOT NULL,
          `catagory` varchar(100) NOT NULL,
          `file` text NOT NULL,
          `playcount` int(100) NOT NULL
           )


       3rd table :

           CREATE TABLE `shareinfo` (
          `shareid` int(100) NOT NULL,
      `    user_id` int(100) NOT NULL,
      `    share_code` varchar(100) NOT NULL,
      `    value` int(1) NOT NULL
           ) 

  
    
    
    
    
    
