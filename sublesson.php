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
                        <h4 class="page-title">Dashboard</h4>
                    </div>
                </div>
            </div>

            <div class="container-fluid">
                <?php

                if (isset($_POST['submit'])) {

                    $video = $_POST['video'];

                    $heading = $_POST['heading'];
                    $lessonId = $_POST['lessonId'];
                    $paragraph = $_POST['paragraph'];

                    // echo  $video;
                    // echo "<br>";
                    // echo "<br>";
                    // echo  $heading;
                    // echo "<br>";
                    // echo "<br>";
                    // echo  $lessonId;
                    // echo "<br>";
                    // echo "<br>";
                    // echo  $paragraph;





                    if (isset($_FILES['image']['name'])) {

                        $file_name = $_FILES['image']['name'];


                        $file_tmp = $_FILES['image']['tmp_name'];
                        // $filePath =  "./uploads/images/$file_name";

                        move_uploaded_file($file_tmp, "./uploads/images/" . $file_name);

                        $addquerry = "insert into tblsublessons values (0,'$heading','$paragraph','$video','$file_name','$lessonId')";
                        $iquery = mysqli_query($conn, $addquerry);

                        if ($iquery) { ?>
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                <strong>Success!</strong> Content added successfully.
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>


                        <?php

                        } else { ?>
                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                <strong> Failed to add Content</strong>
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                <?php }
                    }
                }
                ?>
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
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                            Add Sub Content
                        </button>
                        <a href="lesson.php?modules_Id=<?= $_GET['modules_Id'] ?>" class="btn btn-outline-success">Back</a>

                    </div>
                </div>
                <div class="container ">
                    <div class="row">
                        <div class="col-md-12">

                            <!-- <?php include  "./process/deleteRecipe.php" ?> -->
                            <?php
                            if (isset($success)) {
                                echo $success;
                            }
                            if (isset($error)) {
                                echo $error;
                            }
                            ?>
                        </div>
                    </div>
                    <div class="row card p-4">

                        <table id="example" class="display " style="width:100%; table-layout:fixed">
                            <thead>
                                <tr>
                                    <th>Content ID</th>
                                    <th>Heading</th>
                                    <th>Paragraph</th>
                                    <th>Video ID</th>
                                    <th>File Name</th>
                                    <th>Lesson ID</th>
                                    <th>Edit</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php



                                if (isset($_GET['lesson_Id'])) {

                                    $sql = "SELECT * from tblsublessons where lesson_Id = '$_GET[lesson_Id]'";
                                } else {

                                    $sql = "SELECT * from tblsublessons ";
                                }
                                $result = $conn->query($sql);

                                if ($result->num_rows > 0) {
                                    // output data of each row
                                    while ($row = $result->fetch_assoc()) {

                                ?> <tr>

                                            <td><?= $row['sublesson_Id'] ?></td>
                                            <td class="col-2 text-truncate"><?= $row['header'] ?></td>
                                            <td class="col-2 text-truncate"><?= $row['paragraph'] ?></td>
                                            <td><?= $row['video'] ?></td>
                                            <td><?= $row['images'] ?></td>

                                            <td><?= $row['lesson_Id'] ?></td>


                                            <td>
                                                <div class="d-flex justify-content-center align-items-md-streatch flex-column  ">
                                                    <a href="editSublesson.php?sublesson_Id=<?= $row['sublesson_Id'] ?>" class="mx-2 btn btn-info ">Edit</a>
                                                    <a onclick="confirm('are you sure you want to delete this sublesson?')" href="./process/deletesublesson.php?sublesson_Id=<?= $row['sublesson_Id'] ?>&lesson_Id=<?= $row['lesson_Id'] ?>" class="mx-2 my-2   btn btn-danger text-white">Delete</a>
                                                    <a href="codesnippets.php?sublesson_Id=<?= $row['sublesson_Id'] ?>&lesson_Id=<?= $row['lesson_Id'] ?>" class="mx-2   btn btn-success text-white">Snippets</a>

                                                </div>
                                            </td>
                                        </tr>
                                <?php

                                    }
                                } else {
                                }
                                ?>

                            </tbody>
                            <tfoot>
                                <tr>
                                    <th>Content ID</th>
                                    <th>Heading</th>
                                    <th>Paragraph</th>
                                    <th>Video ID</th>
                                    <th>File Name</th>
                                    <th>Lesson ID</th>
                                    <th>Edit</th>
                                </tr>
                            </tfoot>
                        </table>
                        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form class="form-horizontal form-material" method="POST" enctype="multipart/form-data">
                                            <!-- <div class="mb-3">
                                    <label for="recipe" class="form-label">Module ID</label>
                                    <input type="text" class="form-control" required name="modules_Id" placeholder="Chicken curry..">
                                </div> -->

                                            <div class="mb-3">
                                                <label for="date" class="form-label">Video ID</label>
                                                <input type="text" class="form-control" name="video" placeholder="vOEN65nm4YU">
                                            </div>
                                            <div class="mb-3">
                                                <label for="date" class="form-label">Image</label>
                                                <input type="file" name="image" accept="image/*" class="form-control">
                                            </div>
                                            <div class="mb-3">
                                                <label for="date" class="form-label">Heading</label>

                                                <textarea id="" rows="5" name="heading" class="form-control" placeholder="heading text"></textarea>
                                            </div>
                                            <div class="mb-3">
                                                <label for="date" class="form-label">Lesson ID</label>
                                                <?php if (!isset($_GET['lesson_Id'])) { ?>
                                                    <input type="text" class="form-control" name="lessonId" placeholder="module name">
                                                <?php } else { ?>

                                                    <input type="text" class="form-control" name="lessonId" value="<?= $_GET['lesson_Id'] ?>" placeholder="module name">
                                                <?php } ?>
                                            </div>
                                            <div class="mb-3">
                                                <label for="date" class="form-label">Paragraph</label>

                                                <textarea id="" rows="5" name="paragraph" class="form-control" placeholder="paragraph text"></textarea>
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
                <!-- <div class="row ">
                    <div class="col-md-5 my-4">
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                            Add Lesson Content
                        </button>

                    </div>
                </div> -->
                <!-- <div class="container ">
                    <div class="row">
                        <div class="col-md-12">

                        </div>
                    </div>
                    <div class="row card p-4">

                        <table id="examples" class="display " style="width:100%">
                            <thead>
                                <tr>
                                    <th>Content ID</th>
                                    <th>Heading</th>
                                    <th>Paragraph</th>
                                    <th>Video ID</th>
                                    <th>File Name</th>
                                    <th>Lesson ID</th>
                                    <th>Edit</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php

                                $sql = "SELECT * from tblsublessons";
                                $result = $conn->query($sql);

                                if ($result->num_rows > 0) {
                                    // output data of each row
                                    while ($row = $result->fetch_assoc()) {

                                ?>
                                        <tr>

                                            <td><?= $row['sublesson_Id'] ?></td>
                                            <td><?= $row['header'] ?></td>
                                            <td><?= $row['paragraph'] ?></td>
                                            <td><?= $row['video'] ?></td>
                                            <td><?= $row['images'] ?></td>

                                            <td><?= $row['lesson_Id'] ?></td>


                                            <td>
                                                <div class="d-flex justify-content-start align-items-center flex-row ">
                                                    <a href="editRecipes.php?id=<?= $row['recipe_id'] ?>&image=<?= $row['image'] ?>" class="mx-2 btn btn-info">Edit</a>
                                                    <a onclick="confirm('are you sure you want to delete this recipe?')" href="./process/deletesublesson.php?sublesson_Id=<?= $row['sublesson_Id'] ?>&lesson_Id=<?= $row['lesson_Id'] ?>&image=<?= $row['images'] ?>" class="mx-2   btn btn-danger text-white">Delete</a>
                                                  
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
                                    <th>Content ID</th>
                                    <th>Heading</th>
                                    <th>Paragraph</th>
                                    <th>Video ID</th>
                                    <th>File Name</th>
                                    <th>Lesson ID</th>
                                    <th>Edit</th>
                                </tr>
                            </tfoot>
                        </table>
                        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form class="form-horizontal form-material" method="POST" enctype="multipart/form-data">
                               

                                            <div class="mb-3">
                                                <label for="date" class="form-label">Video ID</label>
                                                <input type="text" class="form-control" name="video" placeholder="vOEN65nm4YU">
                                            </div>
                                            <div class="mb-3">
                                                <label for="date" class="form-label">Image</label>
                                                <input type="file" name="image" accept="image/*" class="form-control">
                                            </div>
                                            <div class="mb-3">
                                                <label for="date" class="form-label">Heading</label>

                                                <textarea id="" rows="5" name="heading" class="form-control" placeholder="heading text"></textarea>
                                            </div>
                                            <div class="mb-3">
                                                <label for="date" class="form-label">Lesson ID</label>
                                                <?php if (!isset($_GET['lesson_Id'])) { ?>
                                                    <input type="text" class="form-control" name="lessonId" placeholder="module name">
                                                <?php } else { ?>

                                                    <input type="text" class="form-control" name="lessonId" value="<?= $_GET['lesson_Id'] ?>" placeholder="module name">
                                                <?php } ?>
                                            </div>
                                            <div class="mb-3">
                                                <label for="date" class="form-label">Paragraph</label>

                                                <textarea id="" rows="5" name="paragraph" class="form-control" placeholder="paragraph text"></textarea>
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

                </div> -->
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