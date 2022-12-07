<?php include "../connections/config.php" ?>
<?php

$array1 = array();
$array2 = array();
$query = "SELECT * FROM tblquiz";
$results = $conn->query($query);


if ($results->num_rows > 0) {

    while ($row = $results->fetch_assoc()) {
        $array2['modules_Id'] =  $row['modules_Id'];


        array_push($array1, $array2);
    }
}
$message = $array1;

echo json_encode($message);
