
<?php include '../connections/config.php'; ?>

<?php

$json = file_get_contents('php://input');
$obj = json_decode($json, true);

$arr1 = array();
$arr2 = array();
$choices1 = array();
$choices2 = array();

$student_id = $obj['student_id'];





$sql = "SELECT tblquizzes.`modules_id`, tblquizzes.`quiz_Id`, tblquizzes.`student_Id`,
 tblquestions.`description`, tblquestions.`question_Id`, tblquestions.time,tblquestions.`question_type`, 
 tblquestions.`level`  FROM tblquizzes  INNER JOIN tblquestions ON tblquestions.`quiz_Id` = tblquizzes.`quiz_Id` where tblquizzes.`student_Id` = '$student_id ' ORDER BY RAND() ";
$result = $conn->query($sql);


if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $arr2["student_id"] = $row['student_Id'];
        $arr2["quiz_id"] = $row['quiz_Id'];
        $arr2["module_id"] = $row["modules_id"];
        $arr2["question_id"] = $row["question_Id"];
        $arr2["time"] = $row["time"];
        $arr2["difficulty_level"] = $row["level"];
        $arr2["question_type"] = $row["question_type"];
        $arr2["description"] = $row["description"];

        array_push($arr1, $arr2);

        $sqls = "SELECT * FROM tblchoices where question_Id = '$row[question_Id]' ORDER BY RAND()";
        $results = $conn->query($sqls);
        while ($rows = $results->fetch_assoc()) {
            // echo $rows['question_id'];
            $choices2['choices_id'] = $rows['choice_Id'];
            $choices2['answer'] = $rows['isCorrect'];
            $choices2['choice_description'] = $rows['ch_description'];
            $choices2['question_id'] = $rows['question_Id'];
            array_push($choices1, $choices2);
        }
    }
}






$data['data'] = ["questions" => $arr1, "choices" => $choices1];
echo json_encode($data);
