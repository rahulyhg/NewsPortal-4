<?php 
	@session_start();
    if(!isset($_SESSION["logout"]))
    {
        if(isset($_SESSION["uname"]))
        {
            header("Location: home.php");
        }
    }
	
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <link rel="stylesheet" href="css/material.min.css">
        <script src="js/material.min.js"></script>
        <link rel="stylesheet" href="css/icons.css">

    </head>
    <body style="background-color: #dddddd;">
		
        <p align="center" style="padding-top:10px;color:rgba(122,0,0,.78);">
        
        <?php 
            @session_start();
            if(isset($_SESSION["incorrect"]))
            {
                if($_SESSION["incorrect"] == true)
                {
                    echo "Wrong UserName and Password Combination";
                    $_SESSION["incorrect"] = false;
                }
            }
            if(isset($_SESSION["logout"])) 
            {
                if($_SESSION["logout"] == true)
                {
                    echo "You have successfully logout";
                    $_SESSION["logout"] = false;
                }
            }
        ?>
        </p>
        <form method="POST" action="signin.php">
			<div class="mdl-grid">
				<div class="mdl-layout-spacer"></div>
				<div class="mdl-cell mdl-cell--4-col">
					<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
						<input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z]*" name="username" id="username" />
						<label class="mdl-textfield__label" for="username">Username</label>
					</div>
					<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
						<input class="mdl-textfield__input" type="password" id="password" name="password" />
						<label class="mdl-textfield__label" for="password">Password</label>
					</div>
					<div>
						<input type="submit" ID="signIn" value="Sign In" class="mdl-button mdl-js-button mdl-button--colored mdl-js-ripple-effect mdl-button--raised"/>
					</div>
				</div>
				<div class="mdl-layout-spacer"></div>
			</div>

		</form>
    </body>
</html>