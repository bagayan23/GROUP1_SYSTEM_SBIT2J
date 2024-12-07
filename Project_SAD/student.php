
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/student.css"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<nav>
        <div class="logo"> <img src="images/logo.jpg" alt="logo" /></div>
                    
        <div class="nav-wrapper">
            <div class="wrapper">
                <div class="button">
                    <div class="icon"><i class="bi bi-house-door" style="font-weight: bold;"></i></div>
                    <span>Home</span>
                </div>
            </div>

            <div class="wrapper">
                <div class="button">
                    <div class="icon"><i class="bi bi-calendar4" style="font-weight: bold;"></i></div>
                    <span>Events</span>
                </div>
            </div>

            <div class="wrapper">
                <div class="button">
                    <div class="icon"><i class="bi bi-check2-square" style="font-weight: bold;"></i></div>
                    <span>My Events</span>
                </div>
            </div>
            </div>

        <div class="wrapper-notif">
        <div class="notif-btn">
        <div class="notif-icon"><i class="bi bi-bell" style="font-weight: bold;"></i></div>
        </div>
        <div class="notif-btn">
        <div class="notif-icon"><i class="bi bi-qr-code-scan" style="font-weight: bold;"></i></div>
        </div>
        </div>
        <button class="user-btn" onclick="toggleMenu()">
        <img src="images/user-icon.png" class="user-pic"><p>></p></image>
        </Button>
        <div class="sub-menu-wrap" id="subMenu">
            <div class="sub-menu">
                <div class="user-info">
                    <img src="images/user-icon.png">
                    <div class="user-info-details">
                    <h3>User Names</h3>
                    <h4>00-0000</h4>
                    </div>
                    </div>
                    <hr>

                    <a href="#" class="sub-menu-link">
                        <p>View Profile</p>
                    </a>

                    <a href="#" class="sub-menu-link">
                        <p>My Events</p>
                    </a>

                    <a href="#" class="sub-menu-link">
                        <p>Notifications</p>
                    </a>

                    <hr>
                    <a href="#" class="sub-menu-link">
                        <p>Account Settings</p>
                    </a>
                    <a href="#" class="sub-menu-link">
                        <p>Log Out</p>
                    </a>

            </div>
        </div>
    </nav>
    <div class="homepage">
        
    </div>
    <footer>
        <hr>
        <div class="container-footer">
        </div>
    </footer>
</body>
<?php
include('php/scripts.php');
?>
</html>