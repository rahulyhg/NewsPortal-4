<?php
        require_once ("scripts/validate.php");
        ob_start();
        if(isset($_POST["username"]) && isset($_POST["password"]))
        {
            
            if(Login($_POST["username"], $_POST["password"]))
            {
                //Set the session variables and execute everything
                if(isset($_SESSION["uname"]))
                {
                       /* echo $_SESSION["fname"];
                        echo $_SESSION["lname"];
                        echo $_SESSION["uname"];
                        echo "Login Successfull"; */
                        @session_start();
                        include("scripts/redirect.php");
                        redirect("home.php");
                       
                }
                        
            }
            else
            {
                @session_start();
                $_SESSION["incorrect"] = true;
                die(header("Location: index.php"));

            }
        }
?>
