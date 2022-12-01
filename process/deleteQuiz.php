<?php
include "../connections/config.php";
if (isset($_GET['sublesson_Id'])) {

    $success = "";
    $error = "";
    $fileName = "../uploads/images/$_GET[image]";
    $sql = "delete from tblsublessons where sublesson_Id = '$_GET[sublesson_Id]'";
    if ($conn->query($sql) === TRUE) {

        if (!unlink($fileName)) {
            $errorDelete = '<div class="alert alert-warning alert-dismissible fade show" role="alert">
            <strong>Holy guacamole!</strong> You should check in on some of those fields below.
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>';
            header("Location: ../sublesson.php?lesson_Id=$_GET[lesson_Id]");
        } else {

            $successDelete = '<div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>Holy guacamole!</strong> You should check in on some of those fields below.
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
          </div>';
            header("Location: ../sublesson.php?lesson_Id=$_GET[lesson_Id]");
        }
    } else {
        $errorDelete = '<div class="alert alert-warning alert-dismissible fade show" role="alert">
        <strong>Holy guacamole!</strong> You should check in on some of those fields below.
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>';
        header("Location: ../sublesson.php?lesson_Id=$_GET[lesson_Id]");
    }
}
