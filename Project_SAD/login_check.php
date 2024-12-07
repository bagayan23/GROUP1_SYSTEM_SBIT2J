<?php
include('php/connection.php');
include('php/scripts.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Prepare the SQL statement
    $stmt = $conn->prepare("SELECT user_name, user_password, email, acc_type FROM viewdetails WHERE (user_name = ? OR email = ?) LIMIT 1");
    $stmt->bind_param("ss", $username, $username);
    $stmt->execute();
    $rs = $stmt->get_result();

    if ($rs->num_rows > 0) {
        $user = $rs->fetch_assoc();
        $accountType = $user["acc_type"]; // Corrected variable usage

        // Verify the password
        if (password_verify($password, $user['User_Password'])) {
            echo json_encode([
                'success' => true,
                'accountType' => $accountType
            ]);
            header('refresh:0.5;admin.php');
        } else {
            echo json_encode([
                
                'success' => false,
                'message' => 'Invalid credentials'
            ]);
        }
    } else {
        // User not found
        echo json_encode([
            'success' => false,
            'message' => 'User not found'
        ]);
    }

    // Close the statement
    $stmt->close();
} else {
    echo json_encode([
        'success' => false,
        'message' => 'Invalid request method'
    ]);
}

// Close the database connection
$conn->close();
?>
