
<?php include '../connections/config.php'; ?>



<?php

$json = file_get_contents('php://input');

// decoding the received JSON and store into $obj variable.
$obj = json_decode($json, true);
$arr1 = array();
$arr2 = array();
$arr3 = array();
$arr4 = array();

$lesson_Id = $obj['lesson_Id'];

$selectSublesson = "SELECT * FROM tblsublessons WHERE lesson_Id = '$lesson_Id'";
$resultSublesson = $conn->query($selectSublesson);



if ($resultSublesson->num_rows > 0) {
    while ($rowSublesson = $resultSublesson->fetch_assoc()) {
        $arr2['sublesson_Id'] = $rowSublesson['sublesson_Id'];
        $arr2['header'] = $rowSublesson['header'];
        $arr2['paragraph'] = $rowSublesson['paragraph'];
        $arr2['video'] = $rowSublesson['video'];
        $arr2['images'] = $rowSublesson['images'];
        $arr2['lesson_Id'] = $rowSublesson['lesson_Id'];
        array_push($arr1, $arr2);


        $selectSnippets = "SELECT * FROM tblsnippets WHERE sublesson_Id = '$rowSublesson[sublesson_Id]'";
        $resultselectSnippets = $conn->query($selectSnippets);
        while ($rowSnippets = $resultselectSnippets->fetch_assoc()) {
            $arr4['snippets_Id'] = $rowSnippets['snippets_Id'];
            $arr4['languageName'] = $rowSnippets['languageName'];
            $arr4['snippets'] = $rowSnippets['snippets'];
            $arr4['sublesson_Id'] = $rowSnippets['sublesson_Id'];

            array_push($arr3, $arr4);
        }
    }
}






$Message = ["sublesson" => $arr1];
$Message1 = ["snippets" => $arr3];
$data['data'] = [$Message, $Message1];
echo json_encode($data);
// echo json_encode($Message);
// echo json_encode($Message1);
