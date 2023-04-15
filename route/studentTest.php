<?php
// Start the session
session_start();
?>
<?php include "../connections/config.php" ?>
<?php

$json = file_get_contents('php://input');
$arr1 = array();
$arr2 = array();
// decoding the received JSON and store into $obj variable.
$obj = json_decode($json, true);
$sql = "select * from tblstudent";
$result = $conn->query($sql);

if ($result->num_rows > 0) {

    while ($row = $result->fetch_assoc()) {

        $arr2["username"] = $row['username'];
        $arr2["email"] = $row["email"];
        
        array_push($arr1, $arr2);
    }
} else {
    $Message = ["result" => "No Result"];
}
$Message = ["result" => $arr1];

echo  json_encode($Message);


$conn->close();
