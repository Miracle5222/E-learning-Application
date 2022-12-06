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

    <style>
        .without_ampm::-webkit-datetime-edit-ampm-field {
            display: none;
        }

        input[type=time]::-webkit-clear-button {
            -webkit-appearance: none;
            -moz-appearance: none;
            -o-appearance: none;
            -ms-appearance: none;
            appearance: none;
            margin: -10px;
        }
    </style>
</head>

<body>

    <!-- <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div> -->
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

            <!-- <div class="page-breadcrumb">
                <div class="row align-items-center">
                    <div class="col-5">
                        <h4 class="page-title">Questions</h4>
                    </div>
                </div>
            </div> -->

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

                <div class="row">
                    <?php
                    if (isset($_POST['subLesson'])) {
                        $sub_id = $_POST['sub_id'];
                        $video_id = $_POST['video_id'];

                        $paragraph = $_POST['paragraph'];
                        $lesson_id = $_POST['lesson_id'];
                        $heading = $_POST['heading'];




                        if (isset($_FILES['image']['name'])) {

                            $file_name = $_FILES['image']['name'];


                            $file_tmp = $_FILES['image']['tmp_name'];
                            move_uploaded_file($file_tmp, "./uploads/images/" . $file_name);
                            $addquerry = "update tblsublessons set sublesson_Id ='$sub_id' ,header = '$heading' ,paragraph ='$paragraph',video = '$video_id', images = '$file_name' ,lesson_Id = '$lesson_id' where sublesson_Id = '$_GET[sublesson_Id]'";
                            $iquery = mysqli_query($conn, $addquerry);

                            if ($iquery) { ?>
                                <div class="alert alert-success alert-dismissible fade show" role="alert">
                                    <strong>Success!</strong> Lesson Content updated successfully.
                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                </div>

                            <?php

                            } else { ?>
                                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                    <strong> Failed to update Lesson Content </strong>
                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                </div>
                    <?php }
                        }
                    }






                    ?>
                </div>

                <div class="container ">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="card">
                                <h2 class="text-info text-center py-4">Edit Content</h2>
                                <div class="card-body">
                                    <?php
                                    $id = $_GET['sublesson_Id'];
                                    $sql = "SELECT * FROM tblsublessons where sublesson_Id = $id;";
                                    $result = $conn->query($sql);

                                    if ($result->num_rows > 0) {
                                        while ($row = $result->fetch_assoc()) {


                                    ?>
                                            <form method="post" id="edit" enctype="multipart/form-data">


                                                <div class="form-group">
                                                    <label for="video_id">Content ID</label>
                                                    <input type="number" class="form-control" id="sub_id" name="sub_id" value=<?= $row['sublesson_Id'] ?> placeholder="Video_id...">
                                                </div>
                                                <div class="form-group">
                                                    <label for="video_id">Video ID</label>
                                                    <input type="text" class="form-control" id="video_id" name="video_id" value="<?= $row['video'] ?>" placeholder="Video_id...">
                                                </div>
                                                <div class="form-group">
                                                    <label for="image">Image</label>
                                                    <input type="file" class="form-control" id="image" name="image" value=<?= $row['images'] ?> placeholder="Image...">
                                                </div>

                                                <div class="form-group">
                                                    <label for="heading">heading</label>
                                                    <textarea name="heading" class="form-control" id="" cols="30" rows="2" placeholder="heading..."><?php echo $row['header'] ?> </textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label for="paragraph">Paragraph</label>
                                                    <textarea name="paragraph" class="form-control" id="" cols="30" rows="4" placeholder="paragraph..."><?php echo $row['paragraph'] ?> </textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lesson_id">lesson ID</label>
                                                    <input type="text" class="form-control" id="lesson_id" name="lesson_id" value=<?= $row['lesson_Id'] ?> placeholder="Lesson_id...">
                                                </div>


                                                <div class="text-center">
                                                    <button type="submit" name="subLesson" class="btn btn-primary my-2">Update</button>
                                                </div>

                                            </form>
                                    <?php

                                        }
                                    } else {
                                        echo "no records found";
                                    }


                                    ?>
                                </div>
                            </div>

                        </div>


                    </div>
                </div>
                <!-- Button trigger modal -->


                <!-- Modal -->

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