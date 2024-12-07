<?php
include ('php/connection.php'); //connection

if ($_SERVER['REQUEST_METHOD'] === 'GET') { 
    $sql = "SELECT id, User_name, email, acc_type FROM viewdetails";
    $result = $conn->query($sql);

    $userData = [];
    while ($row = $result->fetch_assoc()) {
        $userData[] = $row;
    }

    echo json_encode($userData); 

    $conn->close();
}
?>