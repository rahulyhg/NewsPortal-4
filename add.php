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
            .forms
            {
                width:100%;
            }
        </style>
    </head>
    <body>
        <div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer">
            <div class="mdl-layout__drawer">
                <span class="mdl-layout-title">News Portal</span>
                <nav class="mdl-navigation">
                    <a class="mdl-navigation__link" href="home.php">News</a>
                    <?php 
                        @session_start();
                        if($_SESSION["usertype"] == "admin")
                        {
                            echo '<a class="mdl-navigation__link" href="#" id="addNews">Add News</a>';
                        }
                       

                    ?>
                    <a class="mdl-navigation__link" href="logout.php">Log Out</a>
                </nav>
            </div>
            <main class="mdl-layout__content">
                <div class="page-content" style="padding-left:100px;" id="content">
                      <p align="center" style="padding-top:10px;color:rgba(122,0,0,.78);">
        
                            <?php 
                                function cantadd()
                                {
                                    echo "Sorry you are not allowed to add news";
                                }
                                if($_SESSION["usertype"] != "admin")
                                {
                                    cantadd();
                                    $_SESSION["add"] = false;

                                }
                            ?>
                        </p>
                     <form class="forms" method="POST" id="addform" action="scripts/addnews.php">
                        <div class="mdl-grid">
                            
                            <div class="mdl-cell mdl-cell--10-col">
                                <div class="forms mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                    <textarea class="mdl-textfield__input" type="text" rows="1" pattern="[A-Z,a-z]*" name="title" id="title"> </textarea>
                                    <label class="mdl-textfield__label" for="title">Title</label>
                                </div>
                                <div class="forms mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                    <textarea class="mdl-textfield__input" type="text" rows="25" id="content" name="content" >  </textarea>
                                    <label class="mdl-textfield__label" for="content">Content</label>
                                </div>
                                <label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="allowedits">
                                    <input type="checkbox" id="allowedits" name="allowedits" class="mdl-checkbox__input">
                                    <span class="mdl-checkbox__label">Allow Edits</span>
                                </label>
                                <div>
                                    <input type="submit" ID="Add" value="Add" class="mdl-button mdl-js-button mdl-button--colored mdl-js-ripple-effect mdl-button--raised"/>
                                </div>
                            </div>
                            
                        </div>

                    </form>

                </div>
                <script>
                    <?php
                        if($_SESSION["add"] == false)
                        {
                            echo "document.getElementById('addform').style.display='none'";
                        }
                    ?>
                </script>
            </main>
        </div>
    </body>
</html>
