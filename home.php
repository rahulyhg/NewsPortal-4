<?php 
	@session_start();
	if(!isset($_SESSION["uname"]))
	{
		header("Location: index.php");
	}
?>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <link rel="stylesheet" href="css/material.min.css">
        <script src="js/material.min.js"></script>
        <link rel="stylesheet" href="css/icon.css">
        <style>
            .mycard
            {
                width:80%;
            }
            .newscontent
            {
                text-align: justify;
            }
        </style>
    </head>
    <body>
        <div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer">
            <div class="mdl-layout__drawer">
                <span class="mdl-layout-title">News Portal</span>
                <nav class="mdl-navigation">
                    <a class="mdl-navigation__link" href="#">News</a>
                    <?php 
                        @session_start();
                        if($_SESSION["usertype"] == "admin")
                        {
                            echo '<a class="mdl-navigation__link" href="add.php" id="addNews">Add News</a>';
                        }
                       

                    ?>
                    <a class="mdl-navigation__link" href="logout.php">Log Out</a>
                </nav>
            </div>
            <main class="mdl-layout__content">
                <div class="page-content" style="padding-left:100px;" id="content">
                    <?php
                        require_once("scripts/db_connect.php");
                        $conn = dbconnect();
                        $query = "SELECT * from contents";
                        $result = $conn->query($query);
                        $conn->close();
                        while($userdata = $result->fetch_assoc())
                        {
                            echo '<div class="mycard wide-card mdl-card mdl-shadow--2dp">
                                        <div class="mdl-card__title">
                                            <h2 class="mdl-card__title-text">';echo $userdata["title"];echo '</h2>
                                        </div>
                                        <div class="mdl-card__supporting-text newscontent">';
                            echo $userdata["content"];            
                            echo '</div>';
                            if(($userdata["protected"] == 0 && $_SESSION["usertype"]=="subadmin")||$_SESSION["usertype"]=="admin")            
                            {
                                echo '<div class="mdl-card__actions mdl-card--border">
                                        <button class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" onclick="edit(this)" id=';
                                            echo '"id'.$userdata["id"].'"';
                                         echo'>Edit</button>
                                      </div>';    
                            }            
                                        
                                        
                            echo '</div>';
                        }

                    ?>
                </div>
            </main>
        </div>
        <script type="text/javascript">
            document.addEventListener('DOMContentLoaded',function(){
                document.getElementById('logout').addEventListener('click',function(){
                    //my code here
                    return true;
                },false);
            },false);
        </script>
        <script>
            function edit(elem)
            {
                var res = elem.id.split("d");
                window.location="edit.php?id=" + res[1]; 
            }
        </script>
    </body>
</html>