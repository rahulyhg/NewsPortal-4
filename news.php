<?php
    if(isset($_SERVER["PHP_AUTH_USER"])&&isset($_SERVER["PHP_AUTH_PW"]))
    {
        require_once("scripts/validate.php");
        if(Login($_SERVER["PHP_AUTH_USER"],$_SERVER["PHP_AUTH_PW"]))
        {
            require_once("scripts/db_connect.php");
            if(isset($_GET["id"]))
            {
                news($_GET["id"]);
            }
            else 
            {
                allnews();
            }
        }
        else 
        {
            header('HTTP/1.0 403 Forbidden');
        }
    }
    else
    {
        header('HTTP/1.0 403 Forbidden');
    }
    function news($id)
    {
        $conn = dbconnect();
        $queryArray = array("Select * from `contents` where `id`=",$id);
        $query = join("",$queryArray);
        $result = $conn->query($query);
        $conn->close();
        if($newsdata = $result->fetch_assoc())
        {
            require_once("objects/news.php");
            $news = new News($newsdata["id"],$newsdata["title"],$newsdata["content"]);
            header('Content-Type: application/json');
            echo json_encode($news);
        }
        else
        {

        }


    }
    function allnews()
    {
        require_once("objects/news.php");
        $conn = dbconnect();
        $query = "SELECT * from `contents`";
        $result = $conn->query($query);
        $newsarray = array();
        while($newsdata = $result->fetch_assoc())
        {
            $news = new News($newsdata["id"],$newsdata["title"],$newsdata["content"]);
            array_push($newsarray,$news);
        }
        //header('Content-Type: application/json');
        //print_r($newsarray);
        echo json_encode($newsarray);

    }
    

?>

