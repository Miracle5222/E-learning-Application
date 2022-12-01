
<?php include "../connections/config.php" ?>
<?php

$json = file_get_contents('php://input');

// decoding the received JSON and store into $obj variable.
$obj = json_decode($json, true);



$lesson_id = $obj['lesson_id'];
// $student_id = $obj['student_id'];


$sql = "update tblmylessons set lesson_status = 'done' where myLessons_Id = '$lesson_id'  ";
$result = $conn->query($sql);


if ($result) {
    $Message['data'] = array("message" => "Lesson: $lesson_id updated");

    $id = $lesson_id;
    $id += 1;

    $selectUpdate = "select * from tblmylessons where myLessons_Id = '$id'";
    $selectUpdateResult = $conn->query($selectUpdate);

    if ($selectUpdateResult->num_rows > 0) {
        while ($row = $selectUpdateResult->fetch_assoc()) {
            if ($row['lesson_status'] != "done") {
                $sqls = "update tblmylessons set lesson_status = 'unlock' where myLessons_Id = '$id'  ";
                $results = $conn->query($sqls);
                if ($results) {
                    $Message['data'] = array("message" => "Unlock Status");
                } else {
                    $Message['data'] = array("message" => "Unlock Status Failed");
                }
            }
        }
    }
} else {
    $Message['data'] = array("message" => "Update Failed");
}



// $sqlModule = "SELECT * FROM lesson_tbl WHERE STATUS = 'lock' AND module_id =  '$module_id'";
// $resultModule = $conn->query($sqlModule);


// if (!$resultModule->num_rows > 0) {

//     $sqlModuleUpdate = "update modules_tbl set status = 'done' where module_id = '$module_id'  ";


//     if ($conn->query($sqlModuleUpdate) === TRUE) {
//         $nextModule = $module_id + 1;

//         $sqlModuleUpdateNext = "update modules_tbl set status = 'unlock' where module_id = '$nextModule'   ";
//         if ($conn->query($sqlModuleUpdateNext) === TRUE) {

//             // echo "Data Updated Successfully";
//         } else {
//             // echo "Data Update Failed";
//         }
//     } else {
//         // echo "Data Update Failed";
//     }
// }

$conn->close();




echo json_encode($Message);
