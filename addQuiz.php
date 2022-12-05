<?php
session_start();
?>
<?php

if (!isset($_SESSION['admin_id'])) {
    header("Location: index.php");
}
?>
<?php include "./connections/config.php" ?>

<?php
$array1 = array();
$array2 = array();
$language = "select * from tblmodules";
$results = $conn->query($language);

if ($results->num_rows > 0) {

    while ($row = $results->fetch_assoc()) {
        $array2['module_Id'] = $row['modules_Id'];
        $array2['module_name'] = $row['module_name'];
        array_push($array1, $array2);
    }
}

$_SESSION['modules_Id'] = $array1;


?>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Basic E-learning Programming Application</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/xtreme-admin-lite/" />

    <link rel="icon" type="image/png" sizes="16x16" href="./assets/images/favicon.png" />

    <link href="./assets/libs/chartist/dist/chartist.min.css" rel="stylesheet" />

    <link href="./dist/css/style.min.css" rel="stylesheet" />

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
                        <!-- <h4 class="page-title">Add Recipe</h4> -->
                    </div>
                </div>
            </div>




            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-4">
                        <?php

                        if (isset($_POST['submit'])) {

                            // $modules_Id = $_POST['modules_Id'];
                            $module_Id = "$_POST[module_Id]";

                            $date = $_POST['date'];
                            $inserted = false;
                            $addquerry = "insert into tblquiz(modules_Id,date) values ('$module_Id','$date')";
                            $iquery = mysqli_query($conn, $addquerry);

                            if ($iquery) {
                                $selectQuiz = "select * from tblquiz where modules_Id = '$module_Id'";
                                $resselectQuiz = $conn->query($selectQuiz);

                                $addAllStudent = "select * from tblstudent";

                                $resStudent = $conn->query($addAllStudent);

                                if ($resselectQuiz->num_rows > 0) {
                                    while ($rowQuiz = $resselectQuiz->fetch_assoc()) {

                                        if ($resStudent->num_rows > 0) {
                                            while ($rowRes = $resStudent->fetch_assoc()) {
                                                $insertQuiz = "insert into tblquizzes(quiz_Id,student_Id,modules_Id)value('$rowQuiz[quiz_Id]','$rowRes[student_Id]','$rowQuiz[modules_Id]')";
                                                if ($conn->query($insertQuiz) === TRUE) {

                                                    $inserted = true; ?>


                                    <?php }
                                            }
                                        }
                                    }
                                }
                                if ($inserted) { ?>
                                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                                        <strong>Success!</strong> Quiz added successfully.
                                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                    </div>
                                <?php
                                }

                                ?>


                            <?php

                            } else { ?>
                                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                    <strong> Failed to add Quiz</strong>
                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                </div>
                        <?php }
                        }
                        ?>


                    </div>

                </div>
                <div class="row">

                    <div class="col-sm-4">
                        <div class="card ">
                            <h2 class="p-4 text-info text-center">Add Quiz</h2>
                        </div>
                        <div class="card p-4">
                            <form class="form-horizontal form-material" method="POST" enctype="multipart/form-data">
                                <!-- <div class="mb-3">
                                    <label for="recipe" class="form-label">Module ID</label>
                                    <input type="text" class="form-control" required name="modules_Id" placeholder="Chicken curry..">
                                </div> -->



                                <div class="mb-3">

                                    <label for="video" class="form-label">Module ID</label>
                                    <select class="form-select" aria-label="Default select example" required name="module_Id">
                                        <?php foreach ($_SESSION['modules_Id'] as $modules) : ?>

                                            <option value="<?= $modules['module_Id'] ?>"><?= $modules['module_name'] ?></option>
                                        <?php
                                        endforeach;
                                        ?>

                                    </select>
                                </div>
                                <div class="mb-3">
                                    <label for="date" class="form-label">Date</label>
                                    <input type="date" class="form-control" required name="date" placeholder="module name">
                                </div>

                                <div class="mb-3">

                                    <input type="submit" class="btn btn-success text-white" name="submit" value="Submit">
                                </div>


                            </form>
                        </div>

                    </div>
                    <div class="col-md-8">

                        <?php
                        if (isset($_GET['quiz_Id'])) {
                            $sql = "delete from tblquiz where  quiz_Id = '$_GET[quiz_Id]'";
                            if ($conn->query($sql) === TRUE) { ?>
                                <div class="alert alert-success alert-dismissible fade show" role="alert">
                                    Quiz Deleted.
                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                </div>

                            <?php

                            } else { ?>
                                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                    <strong> Failed to delete Quiz</strong>
                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                </div>
                        <?php }
                        }


                        ?>

                        <div class="card">
                            <table class="table table-stripe " style="width:100%">
                                <thead>
                                    <tr>
                                        <th>Quiz ID</th>
                                        <th>Module Name</th>
                                        <th>date</th>

                                        <th>Edit</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php

                                    $sql = "SELECT tblquiz.`quiz_Id`, tblquiz.`date`, tblmodules.`module_name` FROM tblquiz INNER JOIN tblmodules ON tblmodules.`modules_Id` = tblquiz.`modules_Id`";
                                    $result = $conn->query($sql);

                                    if ($result->num_rows > 0) {
                                        // output data of each row
                                        while ($row = $result->fetch_assoc()) {

                                    ?>
                                            <tr>

                                                <td><?= $row['quiz_Id'] ?></td>

                                                <td><?= $row['module_name'] ?></td>
                                                <td><?= $row['date'] ?></td>


                                                <td class="text-center">
                                                    <div class="d-flex justify-content-start align-items-center flex-row ">
                                                        <a href="editRecipes.php?id=<?= $row['recipe_id'] ?>&image=<?= $row['image'] ?>" class="mx-2 btn btn-info">Edit</a>
                                                        <a onclick="confirm('are you sure you want to delete this Quiz?')" href="./addQuiz.php?quiz_Id=<?= $row['quiz_Id'] ?>" class="mx-2   btn btn-danger text-white">Delete</a>

                                                        <a href="questions.php?quiz_Id=<?= $row['quiz_Id'] ?>" class="mx-2 btn btn-primary">View</a>
                                                    </div>
                                                </td>
                                            </tr>
                                    <?php

                                        }
                                    } else {
                                    }
                                    $conn->close(); ?>

                                </tbody>

                            </table>

                        </div>

                    </div>

                </div>

                <div class="row"></div>

                <div class="row"></div>

            </div>

            <footer class="footer text-center">
                Basic E-learning Programming Application<strong> copyright &copy 2022</strong>
            </footer>

        </div>

    </div>
    <script>
        $(document).ready(function() {
            $('#example').DataTable();
        });
    </script>
    <script src="./assets/libs/jquery/dist/jquery.min.js"></script>
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