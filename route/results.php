<?php
// Start the session
session_start();
?>
<?php include "../connections/config.php" ?>
<?php

$json = file_get_contents('php://input');

// decoding the received JSON and store into $obj variable.
$obj = json_decode($json, true);

$arr1 = array();
$arr2 = array();

$quiz_id = $obj['quiz_id'];
$student_id = $obj['student_id'];
$module_id = $obj['module_id'];
// $sql = "SELECT result.`quiz_id`, result.`student_id`, result.`score`, result.`status` FROM result INNER JOIN quiz_tbl ON quiz_tbl.`quiz_id` = result.`quiz_id` WHERE quiz_tbl.`module_id` = '$module_id'";

$sql = "SELECT tblresult.`quiz_Id`,tblresult.`score`,tblresult.`endedAt` , tblresult.`remarks` , tblresult.student_Id 
FROM tblresult INNER JOIN tblquiz ON tblquiz.`quiz_Id` = tblresult.`quiz_Id` 
WHERE tblquiz.`modules_Id` = '$module_id' AND tblresult.student_Id = '$student_id' ORDER BY tblresult.endedAt ASC";
$result = $conn->query($sql);

if ($result->num_rows > 0) {

    while ($row = $result->fetch_assoc()) {

        $arr2["quiz_id"] = $row['quiz_Id'];
        $arr2["ended_at"] = $row["endedAt"];
        $arr2["score"] = $row["score"];
        $arr2["status"] = $row["remarks"];
        array_push($arr1, $arr2);
    }
} else {
    $Message = ["result" => "No Result"];
}
$Message = ["result" => $arr1];

echo  json_encode($Message);


$conn->close();
