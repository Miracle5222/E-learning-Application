
<?php include "../connections/config.php" ?>
<?php

$json = file_get_contents('php://input');

// decoding the received JSON and store into $obj variable.
$obj = json_decode($json, true);
$arr1 = array();
$arr2 = array();

$lang1 = array();
$lang2 = array();

$email = $obj['email'];
$password = $obj['password'];


$sql = "SELECT * FROM tblstudent where password = '$password' and email ='$email ' ";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $arr2["student_Id"] = $row['student_Id'];
    $arr2["username"] = $row['username'];
    $arr2["email"] = $row['email'];

    // $lang2 = $row['student_Id'];
    // array_push($lang1, $lang2);

    $language = "SELECT programminglang.`name`,programminglang.`programming_Id` FROM tblstudentlang INNER JOIN 
    programminglang ON programminglang.`programming_Id`= tblstudentlang.`programming_Id` 
    WHERE tblstudentlang.`student_Id` = '$row[student_Id]'";
    $result = $conn->query($language);
    if ($result) {
        while ($rowLanguage = $result->fetch_assoc()) {
            $arr2['language'] = $rowLanguage['name'];
            $arr2['programming_Id'] = $rowLanguage['programming_Id'];
            array_push($arr1, $arr2);
        }
    }
} else {
    $arr2["email"] = "false";
    $arr2["password"] = "false";
    array_push($arr1, $arr2);
}

echo json_encode($arr1);

$conn->close();
