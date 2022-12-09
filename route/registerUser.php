

<?php include "../connections/config.php" ?>

<?php
$json = file_get_contents('php://input');
// decoding the received JSON and store into $obj variable.
$obj = json_decode($json, true);

$errorMessage1 = array();
$errorMessage2 = array();

$success1 = array();
$success2 = array();

$name = $obj['name'];
$email = $obj['email'];
$password = $obj['password'];

$sql = "select * from tblstudent where username = '$name' and email = '$email'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $errorMessage2 = "user already exist";
    array_push($errorMessage1, $errorMessage2);
} else {
    $sql = "INSERT INTO tblstudent (username, email, password)VALUES ('$name',  '$email', '$password')";

    if ($conn->query($sql) === TRUE) {

        $sqlStudent = "select * from tblstudent where username = '$name' and email = '$email'";
        $result1 = $conn->query($sqlStudent);
        $studentId = $result1->fetch_assoc();

        $lang = "select * from programminglang where name = 'Java'";
        $resultLang = $conn->query($lang);
        $LanguageRow = $resultLang->fetch_assoc();


        if ($result1->num_rows > 0 && $resultLang->num_rows > 0) {
            $insertLanguage = "insert into tblstudentlang(programming_Id,student_Id)values ('$LanguageRow[programming_Id]','$studentId[student_Id]')";
            $resultsLang = $conn->query($insertLanguage);

            if ($resultsLang) {


                $selectModules = "SELECT tblstudentlang.`class_Id` FROM tblstudentlang WHERE tblstudentlang.`programming_Id`= '$LanguageRow[programming_Id]' AND tblstudentlang.`student_Id`= '$studentId[student_Id]'";
                $resultModules = $conn->query($selectModules);
                $rowClassId = $resultModules->fetch_assoc();


                $allmodules = "SELECT * FROM tblmodules WHERE programming_Id = '$LanguageRow[programming_Id]'";
                $resultAllmodules = $conn->query($allmodules);

                $selectQuiz = "select * from tblquiz";
                $resselectQuiz = $conn->query($selectQuiz);

                if ($resultAllmodules->num_rows > 0) {
                    while ($rowModules = $resultAllmodules->fetch_assoc()) {
                        $insertModules = "insert into tblmyclass(class_Id,modules_Id,module_status)values('$rowClassId[class_Id]','$rowModules[modules_Id]','$rowModules[status]')";

                        if ($conn->query($insertModules) === TRUE) {
                            $allLessons = " SELECT * FROM tbllessons WHERE modules_Id = '$rowModules[modules_Id]' ORDER BY lessons";
                            $lessonResult = $conn->query($allLessons);
                            if ($lessonResult->num_rows > 0) {
                                while ($rowlesson =   $lessonResult->fetch_assoc()) {
                                    $insertLessons = "insert into tblmylessons(class_Id,lesson_Id,lesson_status,modules_Id)values('$rowClassId[class_Id]','$rowlesson[lesson_Id]','$rowlesson[status]','$rowModules[modules_Id]')";
                                    if ($conn->query($insertLessons) === TRUE) {
                                        $success2 = "lesson added Successfully";
                                        array_push($success1, $success2);
                                    }
                                }
                            }
                        }
                    }
                    while ($rowQuiz = $resselectQuiz->fetch_assoc()) {
                        $insertQuiz = "insert into tblquizzes(quiz_Id,student_Id,modules_Id)value('$rowQuiz[quiz_Id]','$studentId[student_Id]','$rowQuiz[modules_Id]')";
                        if ($conn->query($insertQuiz) === TRUE) {
                            $success2 = "Quiz added Successfully";
                            array_push($success1, $success2);
                        }
                    }
                }
            }
        }
    }
}

echo json_encode($errorMessage1);
echo json_encode($success1);
