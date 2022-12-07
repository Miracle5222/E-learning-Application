<?php
session_start();
?>

<?php include "../connections/config.php" ?>
<?php

$array1 = array();
$array2 = array();
$query = "SELECT tblquiz.`modules_Id`, tblresult.`score` FROM tblresult INNER JOIN tblquiz ON tblquiz.`quiz_Id` = tblresult.`quiz_Id` where tblresult.student_Id = '    $_SESSION[studentId]' ";
$results = $conn->query($query);


if ($results->num_rows > 0) {

    while ($row = $results->fetch_assoc()) {
        $array2['modules_Id'] =  $row['modules_Id'];
        $array2['score'] =  $row['score'];

        array_push($array1, $array2);
    }
}


$array3 = array();
$array4 = array();
$query = "SELECT * FROM tblquiz";
$results = $conn->query($query);


if ($results->num_rows > 0) {

    while ($row = $results->fetch_assoc()) {
        $array4['modules_Id'] =  $row['modules_Id'];


        array_push($array3, $array4);
    }
}

$modules['modules'] = $array3;
$quizResult['quizResults'] = $array1;

echo json_encode([$modules, $quizResult]);
