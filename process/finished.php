<?php
session_start();
?>

<?php include "../connections/config.php" ?>
<?php


$doneModules = 0;
$doneLesson = 0;


$selectModules = "select * from tblmyclass where class_Id = '    $_SESSION[StudentClass]' ";
$querModules = $conn->query($selectModules);

if ($querModules->num_rows > 0) {
    while ($rowModules = $querModules->fetch_assoc()) {
        if ($rowModules['module_status'] === "done") {
            $doneModules += 1;
        }
    }
}

$selectLessons = "select * from tblmylessons where class_Id = ' $_SESSION[StudentClass]'";
$querLesson = $conn->query($selectLessons);
if ($querLesson->num_rows > 0) {
    while ($rowLesson = $querLesson->fetch_assoc()) {
        if ($rowLesson['lesson_status'] === "done") {
            $doneLesson += 1;
        }
    }
}

echo json_encode([$doneModules, $doneLesson]);
