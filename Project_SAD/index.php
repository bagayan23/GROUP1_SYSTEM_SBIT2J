<?php
include ('php/connection.php');
include ('php/scripts.php');

if(isset($_POST['submit'])){
$username = $_POST['username'];
$password = $_POST['password'];
$email = $_POST['email'];
$hashPassword = password_hash($password, PASSWORD_DEFAULT);

$stmt = $conn ->prepare("SELECT user_name, email, user_password FROM viewdetails WHERE (user_name = ? OR email = ? ) AND user_password = ?");
$stmt->bind_param("sss", $username, $username, $hashPassword);
$stmt->execute();


$rs = $stmt-> get_result();

if ($rs-> num_rows > 0 ){
    $row = $result->fetch_assoc(); 
    $acc_type = $row["account_type"];

    if($acc_type === "user"){
        ?><header>
        <?php
    
    echo "<script>
    swal({
    title: 'LogIn Successfully!',
    icon: 'success',
    button: 'okay',
    });
    </script>";
    ?>
    </header>
    <?php
     header('refresh:2;href.php'); //Insert url to page for  user
     exit;
    }elseif($acc_type === "organizer"){
        ?><header>
        <?php
    
    echo "<script>
    swal({
    title: 'LogIn Successfully!',
    icon: 'success',
    button: 'okay',
    });
    </script>";
    ?>
    </header>
    <?php
     header('refresh:2;href.php'); //Insert url to page for admin
     exit;
    }else{
        ?><header>
        <?php
    
    echo "<script>
    swal({
    title: 'LogIn Successfully!',
    icon: 'success',
    button: 'okay',
    });
    </script>";
    ?>
    </header>
    <?php

     header('refresh:2;href.php'); //Insert url to page for admin
     exit;
    }
}else {
    ?><header>
    <?php

echo "<script>
swal({
title: 'LogIn Failed!',
icon: 'error',
button: 'okay',
});
</script>";
?>
</header>
<?php
}
$stmt->close();
$conn->close();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="CSS/styles.css">
</head>
<body>
    <nav>
        <div class="logo"> <img src="images/logo.png" alt="logo" /></div>
        <div class="nav-links">
            <a href="#">About Us</a>
            <a href="#">Contact Us</a>
        </div>
        <div class="auth-buttons">
            <button class="btn btn-secondary">Sign In</button>
            <button class="btn btn-primary">Register</button>
        </div>
    </nav>

    <main class="container">
        <div class="login-container">
            <div class="illustration">
                <img src="images/Body.png" alt="Chat illustration" />
            </div>
            <div class="login-form">
                <h2>Welcome Back</h2>
                <div id="error-message" class="error-message"></div>
                <form id="loginForm" action="POST" novalidate>
                    <div class="form-group">
                        <label for="username">
                            <svg class="icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                                <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                <circle cx="12" cy="7" r="4"></circle>
                            </svg>
                        </label>
                        <input type="text" id="username" placeholder="Username" required>
                        <span class="validation-message" id="username-validation"></span>
                    </div>
                    <div class="form-group">
                        <label for="password">
                            <svg class="icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                                <rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect>
                                <path d="M7 11V7a5 5 0 0 1 10 0v4"></path>
                            </svg>
                        </label>
                        <input type="password" id="password" placeholder="Password" required>
                        <button type="button" id="togglePassword" class="toggle-password">
                            <svg class="icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                                <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path>
                                <circle cx="12" cy="12" r="3"></circle>
                            </svg>
                        </button>
                        <span class="validation-message" id="password-validation"></span>
                    </div>
                    <div class="forgot-password">
                        <a href="#" id="forgotPassword">Forgot password?</a>
                    </div>
                    <button type="submit" name="submit" class="btn btn-primary btn-block" id="loginButton">
                        <span>Sign In</span>
                        <div class="spinner" id="loginSpinner"></div>
                    </button>
                    <div class="terms">
                        By continuing, you agree to our <a href="#">Terms of Service</a> and <a href="#">Privacy Policy</a>
                    </div>
                </form>
                <div class="register-link">
                    No account yet? <a href="login.php" id="registerLink">Register now!</a>
                </div>
            </div>
        </div>
    </main>
    
</body>
</html>