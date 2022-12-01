<?php
$servername = "localhost";
$username = "root";
$password = "";
$db = "elearning";

// Create connection
$conn = new mysqli($servername, $username, $password, $db);

// // Check connection
// if ($conn->connect_error) {
//     die("Connection failed: " . $conn->connect_error);
// }
// echo "Connected successfully";


$encodedData = file_get_contents('php://input');  // take data from react native fetch API
$decodedData = json_decode($encodedData, true);
