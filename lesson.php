<?php
session_start();
?>
<?php

if (!isset($_SESSION['admin_id'])) {
    header("Location: index.php");
}
?>
<?php include "./connections/config.php" ?>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Basic Programming E-learning Application</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/xtreme-admin-lite/" />

    <link rel="icon" type="image/png" sizes="16x16" href="./uploads/images/icon.png" />

    <link href="./assets/libs/chartist/dist/chartist.min.css" rel="stylesheet" />

    <link href="./dist/css/style.min.css" rel="stylesheet" />

    <script src="./assets/libs/jquery/dist/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>

    <!-- <script src="  https://code.jquery.com/jquery-3.5.1.js"></script> -->


</head>

<body>


    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full" data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar" data-navbarbg="skin5">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <div class="navbar-header" data-logobg="skin5">
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <a class="navbar-brand" href="index.html">
                        <!-- Logo icon -->
                        <b class="logo-icon">
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                            <img src="./uploads/images/icon.png" alt="homepage" class="dark-logo" />
                            <!-- Light Logo icon -->
                            <img src="./uploads/images/icon.png" height="38" alt="homepage" class="light-logo" />
                        </b>
                        <!--End Logo icon -->
                        <!-- Logo text -->
                        <span class="logo-text">
                            <!-- dark Logo text -->


                        </span>
                    </a>

                    <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                </div>

                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">

                    <ul class="navbar-nav float-start me-auto">

                    </ul>

                    <ul class="navbar-nav float-end">

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <img src="./assets/images/users/1.jpg" alt="user" class="rounded-circle" width="31" />
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end user-dd animated" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="profile.php"><i class="ti-user m-r-5 m-l-5"></i> My Profile</a>

                            </ul>
                        </li>

                    </ul>
                </div>
            </nav>
        </header>

        <aside class="left-sidebar" data-sidebarbg="skin6">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <!-- User Profile-->
                        <li>
                            <!-- User Profile-->
                            <div class="user-profile d-flex no-block dropdown m-t-20">
                                <div class="user-pic">
                                    <img src="./assets/images/users/1.jpg" alt="users" class="rounded-circle" width="40" />
                                </div>
                                <div class="user-content hide-menu m-l-10">
                                    <a href="#" class="" id="Userdd" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <h5 class="m-b-0 user-name font-medium">
                                            <?= $_SESSION['username'] ?> <i class="fa fa-angle-down"></i>
                                        </h5>
                                        <span class="op-5 user-email"><?= $_SESSION['email'] ?></span>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="Userdd">
                                        <a class="dropdown-item" href="profile.php"><i class="ti-user m-r-5 m-l-5"></i> My Profile</a>


                                        <a class="dropdown-item" href="./process/logout.php"><i class="fa fa-power-off m-r-5 m-l-5"></i> Logout</a>
                                    </div>
                                </div>
                            </div>
                            <!-- End User Profile-->
                        </li>
                        <li class="p-15 m-t-10">
                            <a href="addQuiz.php" class="btn d-block w-100 create-btn text-white no-block d-flex align-items-center"><i class="fa fa-plus-square"></i>
                                <span class="hide-menu m-l-5">Add new Quiz</span>
                            </a>
                        </li>
                        <!-- User Profile-->
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="main.php" aria-expanded="false"><i class="mdi mdi-view-dashboard"></i><span class="hide-menu">Dashboard</span></a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="quiz.php" aria-expanded="false"><i class="mdi mdi-feather"></i><span class="hide-menu">Quiz</span></a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="modules.php" aria-expanded="false"><i class="mdi mdi-book-open"></i><span class="hide-menu">Modules</span></a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="lesson.php" aria-expanded="false"><i class="mdi mdi-book-open"></i><span class="hide-menu">Lessons</span></a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="sublesson.php" aria-expanded="false"><i class="mdi mdi-book-open"></i><span class="hide-menu">Lesson Content</span></a>
                        </li>
                        <li class="sidebar-item">
                            <a class="sidebar-link waves-effect waves-dark sidebar-link" href="profile.php" aria-expanded="false"><i class="mdi mdi-account"></i><span class="hide-menu">Profile</span></a>
                        </li>

                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>

        <div class="page-wrapper">

            <div class="page-breadcrumb">
                <div class="row align-items-center">
                    <div class="col-5">
                        <h4 class="page-title">Lessons</h4>
                    </div>
                </div>
            </div>

            <div class="container-fluid">
                <!-- 
                <div class="row">
                    <div class="col-md-6">
                        <div class="card p-4">
                            <h3 class="text-center">Popularity</h2>
                                <canvas id="myChart" style="width:100%;max-width:600px"></canvas>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card p-4">
                            <h3 class="text-center">Average Ratings</h2>
                                <canvas id="myCharts" style="width:100%;max-width:600px"></canvas>
                        </div>
                    </div>



                </div> -->

                <div class="row ">
                    <div class="col-md-5 my-4">
                        <?php



                        if (isset($_POST['submit'])) {

                            $lessonname = $_POST['lessonname'];
                            $status = $_POST['status'];
                            $moduleId = $_POST['moduleId'];
                            $lessonNo = $_POST['lessonNo'];
                            $inserted = false;


                            $sql = "insert into tbllessons (lesson_name,modules_Id,status,lessons)values('$lessonname','$moduleId','$status','$lessonNo')";
                            $result = $conn->query($sql);



                            if ($result) {

                                $selectModules = "select * from tbllessons where lessons = '$lessonNo'";
                                $resselectModules = $conn->query($selectModules);

                                $addAllStudent = "SELECT tblstudentlang.`class_Id`, tblstudentlang.`programming_Id` ,tblmodules.`modules_Id`, tbllessons.`lesson_Id` FROM tblstudentlang 
                                INNER JOIN tblmodules ON  tblmodules.`programming_Id` =tblstudentlang.`programming_Id` 
                                INNER JOIN tbllessons ON tbllessons.`modules_Id` = tblmodules.`modules_Id` WHERE  tbllessons.lessons = '$lessonNo'";

                                $resStudent = $conn->query($addAllStudent);

                                if ($resselectModules->num_rows > 0) {
                                    while ($rowModules = $resselectModules->fetch_assoc()) {

                                        if ($resStudent->num_rows > 0) {
                                            while ($rowRes = $resStudent->fetch_assoc()) {
                                                $insertQuiz = "insert into tblmylessons(class_Id,lesson_Id,lesson_status,modules_Id)value('$rowRes[class_Id]','$rowModules[lesson_Id]','$rowModules[status]','$rowModules[modules_Id]')";
                                                if ($conn->query($insertQuiz) === TRUE) {

                                                    $inserted = true; ?>


                                    <?php }
                                            }
                                        }
                                    }
                                }
                                if ($inserted) { ?>
                                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                                        Lesson added successfully.
                                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                    </div>
                                <?php
                                }

                                ?>


                            <?php

                            } else { ?>
                                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                    <strong> Failed to add Lesson</strong>
                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                </div>
                        <?php }
                        }
                        ?>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                            Add Lessons
                        </button>
                        <a href="modules.php" class="btn btn-outline-success">Back</a>

                        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h3 class="text-info text-center py-4">Add Lesson</h3>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form method="post" enctype="multipart/form-data">

                                            <div class="form-group">
                                                <label for="title">Lesson Name</label>
                                                <input type="text" placeholder="lesson name..." class="form-control my-2" name="lessonname" />

                                            </div>

                                            <div class="form-group">
                                                <label for="inputState">State</label>
                                                <select id="inputState" class="form-select" name="status">
                                                    <option value="lock" selected>lock</option>
                                                    <option value="unlock">unlock</option>

                                                    <option value="done">done</option>
                                                </select>
                                            </div>

                                            <div class="form-group">
                                                <label for="language">Module ID</label>
                                                <input type="text" placeholder="1.2" class="form-control my-2" name="moduleId" value="<?= $_GET['modules_Id'] ?>" />

                                            </div>

                                            <div class="form-group">
                                                <label for="title">Lesson No.</label>
                                                <input type="text" placeholder="1.2" class="form-control my-2" name="lessonNo" />

                                            </div>


                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                        <button type="submit" class="btn btn-success text-white" name="submit">Submit</button>
                                    </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container ">
                    <div class="row">
                        <div class="col-md-12">

                            <?php if (isset($_GET['lesson_Id'])) {

                                $id = $_GET['lesson_Id'];
                                $sql = "DELETE FROM tbllessons WHERE lesson_Id ='$id'";


                                if ($conn->query($sql) === TRUE) { ?>
                                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                                        <strong>Lesson deleted successfully</strong>
                                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                    </div>
                                <?php } else { ?>
                                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                        <strong> Failed to delete Lesson</strong>
                                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                    </div>
                            <?php
                                }
                            }
                            ?>
                        </div>
                    </div>
                    <div class="row card p-4">

                        <table id="example" class="display " style="width:100%">
                            <thead>
                                <tr>
                                    <th>Lesson ID</th>
                                    <th>Lesson Name</th>
                                    <th>Status</th>
                                    <th>Module ID</th>
                                    <th>lessons</th>
                                    <th>Edit</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php




                                if (isset($_GET['modules_Id'])) {
                                    $sql = "SELECT * from tbllessons where modules_Id = '$_GET[modules_Id]' order by lessons";
                                } else {
                                    $sql = "SELECT * from tbllessons  order by lessons";
                                }
                                $result = $conn->query($sql);

                                if ($result->num_rows > 0) {
                                    // output data of each row
                                    while ($row = $result->fetch_assoc()) {

                                ?>
                                        <tr>

                                            <td><?= $row['lesson_Id'] ?></td>
                                            <td><?= $row['lesson_name'] ?></td>
                                            <td><?= $row['status'] ?></td>
                                            <td><?= $row['modules_Id'] ?></td>
                                            <td><?= $row['lessons'] ?></td>


                                            <td>
                                                <div class="d-flex justify-content-start align-items-center flex-row ">
                                                    <a href="editLessons.php?lesson_Id=<?= $row['lesson_Id'] ?>" class="mx-2 btn btn-info">Edit</a>
                                                    <a onclick="confirm('are you sure you want to delete this Lesson?')" href="./lesson.php?lesson_Id=<?= $row['lesson_Id'] ?>" class="mx-2   btn btn-danger text-white">Delete</a>
                                                    <a href="sublesson.php?lesson_Id=<?= $row['lesson_Id'] ?>&modules_Id=<?= $row['modules_Id'] ?>" class="mx-2 btn btn-primary">View Content</a>

                                            </td>
                                        </tr>
                                <?php

                                    }
                                } else {
                                }
                                $conn->close(); ?>

                            </tbody>
                            <tfoot>
                                <tr>
                                    <th>Lesson ID</th>
                                    <th>Lesson Name</th>
                                    <th>Status</th>
                                    <th>Module ID</th>
                                    <th>lessons</th>
                                    <th>Edit</th>
                                </tr>
                            </tfoot>
                        </table>

                    </div>

                </div>
                <div class="row"></div>

                <div class="row"></div>

            </div>

            <footer class="footer text-center">
                Basic E-learning Programming Application<strong>copy right &copy 2022</strong>
            </footer>

        </div>

    </div>

    <script>
        $(document).ready(function() {
            $('#example').DataTable();
        });
    </script>

    <!-- Bootstrap tether Core JavaScript -->
    <script src="./assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="./dist/js/app-style-switcher.js"></script>
    <!--Wave Effects -->
    <script src="./dist/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="./dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="./dist/js/custom.js"></script>
    <!--This page JavaScript -->
    <!--chartis chart-->
    <script src="./assets/libs/chartist/dist/chartist.min.js"></script>
    <script src="./assets/libs/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>
    <script src="./dist/js/pages/dashboards/dashboard1.js"></script>
</body>

</html>