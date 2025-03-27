<?php

require 'config/constants.php';
//get back from data if there was a registration error
$firstname=$_SESSION['signup-data']['firstname']  ?? null;
$lastname=$_SESSION['signup-data']['lastname'] ?? null;
$username=$_SESSION['signupemailusername'] ?? null;
$email=$_SESSION['signup-data']['email'] ?? null;
$createpassword=$_SESSION['signup-data']['createpassword'] ?? null;
$confirmpassword=$_SESSION['signup-data']['confirmpassword'] ?? null;

//delete signup data session
unset($_SESSION['signup-data']);

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SignEase Home Page</title>
    <link rel="stylesheet" href="<?= ROOT_URL?>css/style.css">

    <link href="
https://cdn.jsdelivr.net/npm/@iconscout/unicons@4.0.8/css/line.min.css
" rel="stylesheet">
<!-- google font:Montserrat -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
</head>
<body>
    <section class="form_section">
        <div class="container form_section-container">
            <h2>Sign Up</h2>
            <?php
                if(isset($_SESSION['signup'])):?>
                    <div class="alert_message error">
                        <p>
                            <?=$_SESSION['signup'];
                            unset($_SESSION['signup']);
                            ?>
                        </p>
                    </div>
            <?php endif ?>
            <form action="<?=ROOT_URL?>signup-logic.php" enctype="multipart/form-data" method="POST">
                <input type="text" value="<?=$firstname ?>" name="firstname" placeholder="First Name">
                <input type="text" value="<?=$lastname ?>" name="lastname" placeholder="Last Name">
                <input type="text" value="<?=$username ?>" name="username" placeholder="Username">
                <input type="email" value="<?=$email ?>" name="email" placeholder="Email">
                <input type="password" value="<?=$createpassword ?>" name="createpassword"  placeholder="Create Password">
                <input type="password" value="<?=$confirmpassword ?>" name="confirmpassword" placeholder="Confirm Password">
                <div class="form_control">
                    <label for="avatar">User Avatar</label>
                    <input type="file"value="$firstname" name="avatar" id="avatar">
                </div>
                <button type="submit"value="$firstname" name="submit" class="btn">Sign Up</button>
                <small>Already have an account? <a href="signin.php">Sign In</a></small>
            </form>
        </div>
    </section>
</body>
</html>