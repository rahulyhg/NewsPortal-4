<?php 
	@session_start();
	if(!isset($_SESSION["uname"]))
	{
		header("Location: index.php");
	}

    function cantedit()
    {
        echo "Sorry you are not allowed to edit the content of this news";
    }
    if($_SESSION["usertype"] == "user")
    {
        cantedit();
    }
    
    if(isset($_GET['id']))
    {
        require_once("scripts/db_connect.php");
    
        $id = $_GET['id'];

        $conn = dbconnect();

        $queryarray = array("SELECT * from `contents` where `id`=",$id);
        $query = join("",$queryarray);
        $result = $conn->query($query);
        if($newsdata = $result->fetch_assoc())
		{
                if($_SESSION["usertype"]=="subadmin" && $newsdata["protected"] == true) cantedit();
				else
                {
                    edit($newsdata['id'],$newsdata['title'],$newsdata['content']);
                    

                } 
		} 
        else
        {
            echo 'There is no such news';
        }
    }
    function edit($id,$title,$content)
    { 
        @session_start();
        $_SESSION["id"] = $id;
        $_SESSION["title"]=$title;
        $_SESSION["content"] = $content;
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
                <span class="mdl-layout-title">Material Design</span>
                <nav class="mdl-navigation">
                    <a class="mdl-navigation__link" href="home.php">News</a>
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
                     <form class="forms" method="POST" action="scripts/editnews.php">
                        <div class="mdl-grid">
                            
                            <div class="mdl-cell mdl-cell--10-col">
                                <div class="forms mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                    <textarea class="mdl-textfield__input" type="text" rows="1" pattern="[A-Z,a-z]*" name="title" id="title"> <?php echo $_SESSION["title"]; ?></textarea>
                                    <label class="mdl-textfield__label" for="title">Title</label>
                                </div>
                                <div class="forms mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                    <textarea class="mdl-textfield__input" type="text" rows="25" id="content" name="content" > <?php echo $_SESSION["content"]; ?>  </textarea>
                                    <label class="mdl-textfield__label" for="content">Content</label>
                                </div>
                                <div>
                                    <input type="submit" ID="Update" value="Update" class="mdl-button mdl-js-button mdl-button--colored mdl-js-ripple-effect mdl-button--raised"/>
                                </div>
                            </div>
                            
                        </div>

                    </form>
                </div>
            </main>
        </div>
    </body>
</html>
