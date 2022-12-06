<?php
session_start();
?>

<?php include "./connections/config.php" ?>
<?php

if (!isset($_SESSION['admin_id'])) {
    header("Location: index.php");
}
?>
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
                        <h4 class="page-title">Dashboard</h4>
                    </div>
                </div>
            </div>

            <div class="container-fluid">

                <div class="row">
                    <?php
                    $modules = " select count(modules_Id) as totalModules from tblmodules";
                    $resultModules = $conn->query($modules);
                    $rowModules = $resultModules->fetch_assoc();
                    if ($resultModules) {
                        $_SESSION['totalModules'] = $rowModules['totalModules'];
                    } else {
                        $_SESSION['totalModules'] =  0;
                    }
                    $modules = " select count(lesson_Id) as totalLessons from tbllessons";
                    $resultModules = $conn->query($modules);
                    $rowModules = $resultModules->fetch_assoc();
                    if ($resultModules) {
                        $_SESSION['totalLessons'] = $rowModules['totalLessons'];
                    } else {
                        $_SESSION['totalLessons'] =  0;
                    }

                    $lang = " select count(programming_Id) as totalLanguage from programminglang";

                    $resultlang = $conn->query($lang);
                    $rowLang = $resultlang->fetch_assoc();
                    if ($resultlang) {
                        $_SESSION['totalLanguage'] = $rowLang['totalLanguage'];
                    } else {
                        $_SESSION['totalLanguage'] =  0;
                    }

                    ?>
                    <div class="col-md-4">
                        <div class="card ">
                            <h3 class="text-center py-4">Total Modules</h2>
                                <div style="height: 100px; width:100%; background-color:darkslategrey; border-top-left-radius: 15px;border-top-right-radius: 15px;" class="d-flex justify-content-center align-items-center">
                                    <h2 class="text-white"><?= $_SESSION['totalModules'] ?></h2>
                                </div>
                                <!-- <canvas id="myChart" style="width:100%;max-width:600px"></canvas> -->
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card ">
                            <h3 class="text-center py-4">Total Lessons</h2>
                                <div style="height: 100px; width:100%; background-color:darkcyan;  border-top-left-radius: 15px;border-top-right-radius: 15px;" class="d-flex justify-content-center align-items-center">
                                    <h2 class="text-white"><?= $_SESSION['totalLessons'] ?></h2>
                                </div>
                                <!-- <canvas id="myCharts" style="width:100%;max-width:600px"></canvas> -->
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card ">
                            <h3 class="text-center py-4">Total Language</h2>
                                <div style="height: 100px; width:100%; background-color:darkcyan;  border-top-left-radius: 15px;border-top-right-radius: 15px;" class="d-flex justify-content-center align-items-center">
                                    <h2 class="text-white"><?= $_SESSION['totalLanguage'] ?></h2>
                                </div>
                                <!-- <canvas id="myCharts" style="width:100%;max-width:600px"></canvas> -->
                        </div>
                    </div>


                </div>

                <div class="row ">
                    <div class="col-md-5">
                        <?php

                        if (isset($_POST['submit'])) {

                            $recipe = $_POST['recipe'];
                            $description = $_POST['description'];
                            $type = $_POST['type'];
                            $date = $_POST['date'];
                            $level = $_POST['level'];
                            $cuisine = $_POST['cuisine'];
                            $video = $_POST['video'];
                            // $image = $_POST['image'];

                            if (isset($_FILES['image']['name'])) {

                                $file_name = $_FILES['image']['name'];


                                $file_tmp = $_FILES['image']['tmp_name'];
                                // $filePath =  "./uploads/images/$file_name";

                                move_uploaded_file($file_tmp, "./uploads/images/" . $file_name);

                                $addquerry = "insert into recipe_tbl(title,description,type,date_created,difficulty_level,cuisine,video,image) values ('$recipe','$description','$type','$date','$level ','$cuisine','$video','$file_name')";
                                $iquery = mysqli_query($conn, $addquerry);

                                if ($iquery) { ?>
                                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                                        <strong>Success!</strong> Recipe added successfully.
                                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                    </div>

                                <?php

                                } else { ?>
                                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                        <strong> Add Recipe Failed!</strong>
                                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                    </div>
                        <?php }
                            }
                        }
                        ?>
                    </div>
                </div>
                <div class="container ">

                    <div class="row">

                        <div class="col-md-12">
                            <div class="card p-4">
                                <div class="card-header my-4">
                                    <h3>Student Details</h3>
                                </div>
                                <table id="examples" class="display " style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>Student ID</th>
                                            <th>Email</th>
                                            <th>Username</th>

                                            <th>Edit</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php

                                        $sql = "SELECT * from tblstudent where student_Id= '$_GET[student_Id]'";
                                        $result = $conn->query($sql);

                                        if ($result->num_rows > 0) {
                                            // output data of each row
                                            while ($row = $result->fetch_assoc()) {

                                        ?>
                                                <tr>


                                                    <td><?= $row['student_Id'] ?></td>
                                                    <td><?= $row['email'] ?></td>
                                                    <td><?= $row['username'] ?></td>



                                                    <td class="text-center">
                                                        <div class="d-flex justify-content-start align-items-center flex-row ">
                                                            <a href="editStudent.php?student_Id=<?= $row['student_Id'] ?>" class="mx-2 btn btn-info">Edit</a>
                                                            <a onclick="confirm('are you sure you want to delete this recipe?')" href="./process/deleteRecipe.php?recipe_id=<?= $row['recipe_id'] ?>" class="mx-2   btn btn-danger text-white">Delete</a>

                                                            <a href="allstudent.php?student_Id=<?= $row['student_Id'] ?>" class="mx-2 btn btn-primary">View</a>
                                                        </div>
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
                                            <th>Student ID</th>
                                            <th>Email</th>
                                            <th>Username</th>

                                            <th>Edit</th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>

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
            $('#examples').DataTable();
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