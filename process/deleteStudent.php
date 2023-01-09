<?php
include "../connections/config.php";
if (isset($_GET['deleteStudent'])) {

    $success = "";
    $error = "";

    $sql = "delete from tblstudent where student_Id = '$_GET[student_Id]'";
    if ($conn->query($sql) === TRUE) {

        $successDelete = '<div class="alert alert-success alert-dismissible fade show" role="alert">
        <strong>Holy guacamole!</strong> You should check in on some of those fields below.
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>';
    } else {
        $errorDelete = '<div class="alert alert-warning alert-dismissible fade show" role="alert">
        <strong>Holy guacamole!</strong> You should check in on some of those fields below.
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>';
    }
}
