
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <link rel="stylesheet" href="../css/material.min.css">
        <script src="../js/material.min.js"></script>
        <link rel="stylesheet" href="../css/icon.css">
    </head>
    <body>
        <div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer">
            <div class="mdl-layout__drawer">
                <span class="mdl-layout-title">Material Design</span>
                <nav class="mdl-navigation">
                    <a class="mdl-navigation__link" href="../home.php">News</a>
                    <?php 
                        @session_start();
                        if($_SESSION["usertype"] == "admin")
                        {
                            echo '<a class="mdl-navigation__link" href="../add.php" id="addNews">Add News</a>';
                        }
                       

                    ?>
                    <a class="mdl-navigation__link" href="../logout.php">Log Out</a>
                </nav>
            </div>
            <main class="mdl-layout__content">
                <div class="page-content" style="padding-left:100px;" id="content">
                   <p align="center" style="padding-top:10px;color:rgba(122,0,0,.78);">
                   <?php 
                            require_once("db_connect.php");
                            $conn = dbconnect();
                            $title = $_POST["title"];
                            $content = $_POST["content"];
                            @session_start();
                            $id = $_SESSION["id"];

                            $queryarray  = array('UPDATE `contents` set `title`="', mysql_real_escape_string($title),'",`content`="', mysql_real_escape_string($content),'" WHERE `id`=',$id);
                            $query = join("",$queryarray);
                            //echo $query;

                            $result = $conn->query($query);
                            //echo $result;
                            if($result == 1)
                            {
                                echo "Successfully Edited the news";
                            }
                            else 
                            {
                                echo "Cant edit the news";
                            }

                        ?>
                    </p>
                </div>
            </main>
        </div>
    </body>
</html>


