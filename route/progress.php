<?php
// Start the session
session_start();
?>
<?php include "../connections/config.php" ?>
<?php

$json = file_get_contents('php://input');
$obj = json_decode($json, true);

// decoding the received JSON and store into $obj variable.

$student_id = $obj['student_id'];
// $sql = "select * from modules_tbl";


$sel = "select * from tblstudentlang where student_Id = '$student_id'";
$ros = $conn->query($sel);
$rowRes = $ros->fetch_assoc();

if ($ros->num_rows > 0) {

    $sql = "SELECT * from  tblmylessons WHERE class_Id = '$rowRes[class_Id]'";
    $result = $conn->query($sql);

    $done = 0;
    $unlock = 0;
    $lock = 0;
    $length = 0;


    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $GLOBALS['length'] += 1;
            // echo $row['lesson_name'];
            if ($row['lesson_status'] == "done") {

                $GLOBALS['done'] += 1;
            }
            if ($row['lesson_status'] == "unlock") {

                $GLOBALS['unlock'] += 1;
            }
            if ($row['lesson_status'] == "lock") {

                $GLOBALS['lock'] += 1;
            }
        }
    }

    $send['data'] = array("length" => $length, "done" => $done, "lock" => $lock, "unlock" => $unlock);
    echo json_encode($send);
}

$conn->close();
