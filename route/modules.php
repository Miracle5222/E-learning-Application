
<?php include '../connections/config.php'; ?>



<?php

$json = file_get_contents('php://input');

// decoding the received JSON and store into $obj variable.
$obj = json_decode($json, true);
$arr1 = array();
$arr2 = array();
$arr3 = array();
$arr4 = array();

$student_id = $obj['student_id'];

$selectModules = "SELECT tblmyclass.`modules_Id`,tblmyclass.`module_status`, tblmyclass.`myclassId`, tblmodules.`module_name` FROM tblmyclass INNER JOIN tblstudentlang ON tblstudentlang.`class_Id` = tblmyclass.`class_Id` INNER JOIN tblmodules ON tblmodules.`modules_Id` = tblmyclass.`modules_Id` WHERE tblstudentlang.`student_Id` = '$student_id'";
$resultModules = $conn->query($selectModules);


if ($resultModules->num_rows > 0) {
    while ($rowModules = $resultModules->fetch_assoc()) {
        $arr2['modules_Id'] = $rowModules['modules_Id'];
        $arr2['mymoduleId'] = $rowModules['myclassId'];
        $arr2['module_name'] = $rowModules['module_name'];
        $arr2['module_status'] = $rowModules['module_status'];
        array_push($arr1, $arr2);
    }
}

$selectlessons = "SELECT tbllessons.`lessons`, tbllessons.`lesson_name`, tbllessons.`lesson_Id`, tblmodules.`module_name`, tblmylessons.`modules_Id`, tblmylessons.`lesson_status` ,tblmylessons.`class_Id` ,tblmylessons.`myLessons_Id` FROM tblmylessons INNER JOIN tbllessons ON tbllessons.`lesson_Id` = tblmylessons.`lesson_Id` INNER JOIN tblstudentlang ON tblstudentlang.`class_Id` = tblmylessons.`class_Id` INNER JOIN tblmodules ON tblmodules.`modules_Id` = tblmylessons.`modules_Id`  WHERE tblstudentlang.`student_Id` = '$student_id '";
$resultLessons = $conn->query($selectlessons);


if ($resultLessons->num_rows > 0) {
    while ($rowLessons = $resultLessons->fetch_assoc()) {
        $arr4['lesson_Id'] = $rowLessons['lesson_Id'];
        $arr4['lessons'] = $rowLessons['lessons'];
        $arr4['lesson_name'] = $rowLessons['lesson_name'];
        $arr4['modules_Id'] = $rowLessons['modules_Id'];
        $arr4['lesson_status'] = $rowLessons['lesson_status'];
        $arr4['class_Id'] = $rowLessons['class_Id'];
        $arr4['myLessons_Id'] = $rowLessons['myLessons_Id'];
        $arr4['module_name'] = $rowLessons['module_name'];
        array_push($arr3, $arr4);
    }
}



$Message = ["module" => $arr1];

$Message1 = ["lessons" => $arr3];
$data['data'] = [$Message, $Message1];
echo json_encode($data);
// echo json_encode($Message);
// echo json_encode($Message1);
