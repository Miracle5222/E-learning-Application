
<?php include "../connections/config.php" ?>
<?php

$json = file_get_contents('php://input');

// decoding the received JSON and store into $obj variable.
$obj = json_decode($json, true);

// lesson_id: route.params.id,
// module_id: route.params.module_id,
// score: score,
// student_id: currStudent_id,
// quiz_id: quiz_id,
date_default_timezone_set('Asia/Calcutta');

$script_tz = date_default_timezone_get();
strcmp($script_tz, ini_get('date.timezone'));


$lesson_id = $obj['lesson_id'];
$module_id = $obj['mymodule'];
$quiz_id = $obj['quiz_id'];
$student_id = $obj['student_id'];
$score = $obj['score'];


$status = "";
$dateToday = date("h:i:s");

$selectQuestions = "select count(question_Id) as length from tblquestions where quiz_Id = '$quiz_id'";
$selectQueryQuestions = $conn->query($selectQuestions);
$questionsResult = $selectQueryQuestions->fetch_assoc();

$questionLength = $questionsResult['length'];
$selectQuiz = "";
if (round(($score * 100)) / $questionLength  < 80) {
    $remarks = "Failed";

    $selectQuiz = "insert into tblresult (quiz_Id,student_Id,remarks,endedAt,score) values ('$quiz_id','$student_id','$remarks','$dateToday','$score')";
    $insertResult = $conn->query($selectQuiz);

    if ($insertResult) {
        $Message['data'] = array("message" => "Success");
    } else {
        $Message['data'] = array("message" => "Failed");
    }
} else {
    $remarks = "Passed";
    $selectQuiz = "insert into tblresult (quiz_Id,student_Id,remarks,endedAt,score) values ('$quiz_id','$student_id','$remarks','$dateToday','$score')";
    $insertResult = $conn->query($selectQuiz);


    if ($insertResult) {
        $sqlModuleUpdate = "update tblmyclass set module_status = 'done' where myclassId = '$module_id'  ";

        if ($conn->query($sqlModuleUpdate) === TRUE) {
            $nextModule = $module_id + 1;

            $sqlModuleUpdateNext = "update tblmyclass set module_status = 'unlock' where myclassId = '$nextModule'   ";
            if ($conn->query($sqlModuleUpdateNext) === TRUE) {

                // echo "Data Updated Successfully";
                $Message['data'] = array("message" => "Success set next module to unlock");
            } else {
                // echo "Data Update Failed";
                $Message['data'] = array("message" => "failed set next module to unlock");
            }
        } else {
            // echo "Data Update Failed";
        }
        $Message['data'] = array("message" => "Success set module to done");
    } else {
        $Message['data'] = array("message" => "Failed");
    }
}
// if ($quiz_Id) {


// }

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
