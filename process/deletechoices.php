<?php
include "../connections/config.php";
if (isset($_GET['choice_Id'])) {

    $success = "";
    $error = "";

    $sql = "delete from tblchoices where  choice_Id = '$_GET[choice_Id]'";
    if ($conn->query($sql) === TRUE) {

        $successDelete = '<div class="alert alert-success alert-dismissible fade show" role="alert">
        <strong>Holy guacamole!</strong> You should check in on some of those fields below.
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>';
        header("Location: ../choices.php?question_Id=$_GET[question_Id]");
    } else {
        $errorDelete = '<div class="alert alert-warning alert-dismissible fade show" role="alert">
        <strong>Holy guacamole!</strong> You should check in on some of those fields below.
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>';
        header("Location: ../choices.php?question_Id=$_GET[question_Id]");
    }
}
