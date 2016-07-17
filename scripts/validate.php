<?php
	function Login($uname,$password)
	{
		$servername = "localhost";
		$username = "root";
		$password1 = "";
		$dbname = "ums";
		// Create connection
		$conn = new mysqli($servername, $username, $password1,$dbname);
		
		// Check connection
		if ($conn->connect_error) {
			//Show a modal 
			die("Connection failed: " . $conn->connect_error);
		}
		else
		{
			$getuserdata = "SELECT * from users";
			$result = $conn->query($getuserdata);
			while($userdata = $result->fetch_assoc())
			{
				if(($uname == $userdata["username"]) && ($password == $userdata["password"] ))
				{
					session_start();
					
					$_SESSION["uname"] = $userdata["username"];
					$_SESSION["incorrect"] = false;
					$_SESSION["usertype"] = $userdata["user_type"];
					return true;
				}
			} 
			return false;
			
		
		}

		
	}
?>