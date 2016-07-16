<?php 
    function addUser($uname,$pword,$email)
    {
        $servername = "localhost";
        $username = "root";
        $password1 = "";
        $dbname = "ums";
        // Create connection
        $conn = new mysqli($servername, $username, $password1,$dbname);
        
        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
        else
        {
            $queryarray = array("INSERT INTO `users` (`index`, `username`, `password`) VALUES (NULL, '" , $uname , "' , '" , $pword, "')" );
            $query = join("",$queryarray);
            if($conn->query($query) === TRUE)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
?>