<?php
// Database connection settings
$servername = "localhost";
$username = "root"; // Default XAMPP username
$password = ""; // Default XAMPP password
$dbname = "cs6314"; // Your database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Initialize variables
$id = "";
$semester = "";
$course_num_section = "";
$title = "";
$credit_hours = "";
$instructor = "";
$instructor_netid = "";
$date_time = "";
$location = "";
$update = false;
$page = isset($_GET['page']) ? $_GET['page'] : 'courses';

// Process form submission for adding a course
if (isset($_POST['add_course'])) {
    $semester = $_POST['semester'];
    $course_num_section = $_POST['course_num_section'];
    $title = $_POST['title'];
    $credit_hours = $_POST['credit_hours'];
    $instructor = $_POST['instructor'];
    $instructor_netid = $_POST['instructor_netid'];
    $date_time = $_POST['date_time'];
    $location = $_POST['location'];
    $current_time = date('Y-m-d H:i:s');

    // Get the max ID and increment by 1
    $result = $conn->query("SELECT MAX(id) as max_id FROM course1");
    $row = $result->fetch_assoc();
    $next_id = $row['max_id'] + 1;

    $sql = "INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated) 
            VALUES ($next_id, '$semester', '$course_num_section', '$title', '$credit_hours', '$instructor', '$instructor_netid', '$date_time', '$location', '$current_time', '$current_time')";

    if ($conn->query($sql) === TRUE) {
        $success_message = "Course added successfully";
        // Redirect to courses page after adding
        header("Location: task3.php?page=courses&message=" . urlencode($success_message));
        exit();
    } else {
        $error_message = "Error: " . $sql . "<br>" . $conn->error;
    }
}

// Process form submission for updating a course
if (isset($_POST['update_course'])) {
    $id = $_POST['id'];
    $semester = $_POST['semester'];
    $course_num_section = $_POST['course_num_section'];
    $title = $_POST['title'];
    $credit_hours = $_POST['credit_hours'];
    $instructor = $_POST['instructor'];
    $instructor_netid = $_POST['instructor_netid'];
    $date_time = $_POST['date_time'];
    $location = $_POST['location'];
    $current_time = date('Y-m-d H:i:s');

    $sql = "UPDATE course1 SET 
            semester='$semester', 
            course_num_section='$course_num_section', 
            title='$title', 
            credit_hours='$credit_hours', 
            instructor='$instructor', 
            instructor_netid='$instructor_netid', 
            date_time='$date_time', 
            location='$location', 
            time_updated='$current_time' 
            WHERE id=$id";

    if ($conn->query($sql) === TRUE) {
        $success_message = "Course updated successfully";
        // Redirect to courses page after updating
        header("Location: task3.php?page=courses&message=" . urlencode($success_message));
        exit();
    } else {
        $error_message = "Error: " . $sql . "<br>" . $conn->error;
    }
}

// Process delete request
if (isset($_GET['delete'])) {
    $id = $_GET['delete'];

    $sql = "DELETE FROM course1 WHERE id=$id";

    if ($conn->query($sql) === TRUE) {
        $success_message = "Course deleted successfully";
        // Redirect to courses page after deleting
        header("Location: task3.php?page=courses&message=" . urlencode($success_message));
        exit();
    } else {
        $error_message = "Error: " . $sql . "<br>" . $conn->error;
    }
}

// Get course details for edit
if (isset($_GET['edit'])) {
    $id = $_GET['edit'];
    $page = 'edit'; // Force the page to be edit
    $result = $conn->query("SELECT * FROM course1 WHERE id=$id");

    if ($result->num_rows == 1) {
        $row = $result->fetch_array();
        $id = $row['id'];
        $semester = $row['semester'];
        $course_num_section = $row['course_num_section'];
        $title = $row['title'];
        $credit_hours = $row['credit_hours'];
        $instructor = $row['instructor'];
        $instructor_netid = $row['instructor_netid'];
        $date_time = $row['date_time'];
        $location = $row['location'];
    }
}

// Search functionality
$search_query = "";
if (isset($_GET['search'])) {
    $search_query = $_GET['search'];
    $search_result = $conn->query("SELECT * FROM course1 WHERE 
                                    course_num_section LIKE '%$search_query%' OR 
                                    title LIKE '%$search_query%' OR 
                                    instructor LIKE '%$search_query%' OR 
                                    date_time LIKE '%$search_query%'
                                    ORDER BY course_num_section");

    // For autocomplete JSON response
    if (isset($_GET['autocomplete']) && $_GET['autocomplete'] == 'true') {
        $suggestions = array();
        while ($row = $search_result->fetch_assoc()) {
            $suggestions[] = array(
                'id' => $row['id'],
                'value' => $row['course_num_section'] . ' - ' . $row['title']
            );
        }
        header('Content-Type: application/json');
        echo json_encode($suggestions);
        exit();
    }
} else {
    // Get all courses - ordered by course_num_section alphabetically
    $search_result = $conn->query("SELECT * FROM course1 ORDER BY course_num_section");
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CS6314 - Course Management System</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <!-- jQuery UI for autocomplete -->
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="task3.css">
</head>

<body>
    <!-- Header -->
    <header>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="utd-header">
                        <svg viewBox="0 0 40 32" class="utd-logo" aria-labelledby="utd-logo-title">
                            <title id="utd-logo-title">UTD Logo</title>
                            <path
                                d="m32.7 4.5-.7.1c-.3-.7-1.1-1.1-1.8-1h-10v27c0 1.1.5 1.5 1.1 1.5l.1.5h-6.4l.1-.5c.6 0 1.2-.4 1.2-1.5v-27h-9.8c-.8-.1-1.5.3-1.9 1l-.6-.1 1-4.1c.5.1 1 .1 1.6.1h23.8c.4 0 .9 0 1.3-.1zm-3.5 24.3c-2.8 0-6.2-.1-7-.2v-.6c.5.1 1-.4 1.1-.9v-19.4c0-.5-.4-1-.9-1.1h-.3v-.6c1.1-.1 4.6-.2 7-.2 5.1 0 7.9 2.7 7.9 10.9-.1 8.3-2.3 12.1-7.8 12.1zm.7-19.8h-2.7v16.4h2.4c2.1 0 3.1-2.5 3.1-8.9 0-5.9-1.2-7.5-2.8-7.5zm-15.2-2.4v-.6h-4.8c-.3.5-.5 1.2-.4 1.8v16.2c0 1-.8 1.9-1.8 1.9h-.2c-1 .1-1.9-.6-2-1.6 0-.1 0-.2 0-.3v-16.2c-.1-.6.3-1.1.9-1.2h.2v-.6h-4.5c-.5.5-.7 1.1-.7 1.8v16.5c0 .6 0 1.3-.2 1.9 1.5 1.9 3.8 3 6.2 2.9 2.4 0 4.8-.2 7.2-.5v-.6c-.5.1-1-.3-1.1-.9v-.1-19.3c0-.5.4-1 .9-1.1z"
                                fill="currentColor">
                            </path>
                        </svg>
                        <h1>The University of Texas at Dallas</h1>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarMain">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarMain">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item <?php echo ($page == 'courses') ? 'active' : ''; ?>">
                        <a class="nav-link" href="task3.php?page=courses">Courses & Search</a>
                    </li>
                    <li class="nav-item <?php echo ($page == 'add') ? 'active' : ''; ?>">
                        <a class="nav-link" href="task3.php?page=add">Add Course</a>
                    </li>
                    <?php if ($page == 'edit'): ?>
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Edit Course</a>
                        </li>
                    <?php endif; ?>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container main-content mt-4">
        <?php if (isset($_GET['message'])): ?>
            <div class="alert alert-success alert-dismissible fade show">
                <?php echo htmlspecialchars($_GET['message']); ?>
                <button type="button" class="close" data-dismiss="alert">&times;</button>
            </div>
        <?php endif; ?>

        <?php if (isset($error_message)): ?>
            <div class="alert alert-danger alert-dismissible fade show">
                <?php echo $error_message; ?>
                <button type="button" class="close" data-dismiss="alert">&times;</button>
            </div>
        <?php endif; ?>

        <?php if ($page == 'courses'): ?>
            <!-- PAGE 1: COURSES AND SEARCH -->
            <div class="row">
                <div class="col-12">
                    <!-- Search Section -->
                    <section id="search" class="mb-4">
                        <div class="card">
                            <div class="card-header bg-primary text-white">
                                <h4><i class="fas fa-search"></i> Search Courses</h4>
                            </div>
                            <div class="card-body">
                                <form method="get" action="task3.php" class="form-inline mb-3">
                                    <input type="hidden" name="page" value="courses">
                                    <div class="input-group w-100">
                                        <input type="text" id="searchBox" name="search" class="form-control"
                                            placeholder="Search by course number, title, instructor, or time"
                                            value="<?php echo $search_query; ?>">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="submit"><i class="fas fa-search"></i>
                                                Search</button>
                                        </div>
                                    </div>
                                </form>
                                <div id="searchHelp" class="text-muted small">
                                    Type to search. The system will suggest matching courses as you type.
                                </div>
                            </div>
                        </div>
                    </section>

                    <!-- Course List Section -->
                    <section id="courses">
                        <div class="card">
                            <div class="card-header bg-primary text-white">
                                <h4><i class="fas fa-graduation-cap"></i> Course Listings</h4>
                            </div>
                            <div class="card-body">
                                <?php if ($search_result->num_rows > 0): ?>
                                    <div class="row course-list">
                                        <?php while ($row = $search_result->fetch_assoc()): ?>
                                            <div class="col-md-6 mb-3">
                                                <div class="course-card" data-course-id="<?php echo $row['id']; ?>">
                                                    <div class="course-header">
                                                        <?php echo $row['course_num_section']; ?>: <?php echo $row['title']; ?>
                                                    </div>
                                                    <div class="course-details">
                                                        <div><strong>Semester:</strong> <?php echo $row['semester']; ?></div>
                                                        <div><strong>Credits:</strong> <?php echo $row['credit_hours']; ?></div>
                                                        <div><strong>Instructor:</strong> <?php echo $row['instructor']; ?>
                                                            (<?php echo $row['instructor_netid']; ?>)</div>
                                                        <div><strong>Schedule:</strong> <?php echo $row['date_time']; ?></div>
                                                        <div><strong>Location:</strong> <?php echo $row['location']; ?></div>
                                                        <div class="course-actions mt-2">
                                                            <a href="task3.php?page=edit&edit=<?php echo $row['id']; ?>"
                                                                class="btn btn-warning btn-sm">
                                                                <i class="fas fa-edit"></i> Edit
                                                            </a>
                                                            <a href="#" onclick="confirmDelete(<?php echo $row['id']; ?>)"
                                                                class="btn btn-danger btn-sm">
                                                                <i class="fas fa-trash"></i> Delete
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        <?php endwhile; ?>
                                    </div>
                                <?php else: ?>
                                    <div class="alert alert-info">No courses found. Please add a new course or modify your
                                        search.</div>
                                <?php endif; ?>
                            </div>
                        </div>
                    </section>
                </div>
            </div>

        <?php elseif ($page == 'add'): ?>
            <!-- PAGE 2: ADD COURSE -->
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header bg-primary text-white">
                            <h4><i class="fas fa-plus"></i> Add New Course</h4>
                        </div>
                        <div class="card-body">
                            <form method="post" action="task3.php?page=add" id="addCourseForm">
                                <div class="form-group">
                                    <label>Semester</label>
                                    <input type="text" name="semester" class="form-control" required>
                                </div>

                                <div class="form-group">
                                    <label>Course Number & Section</label>
                                    <input type="text" name="course_num_section" class="form-control" required>
                                </div>

                                <div class="form-group">
                                    <label>Title</label>
                                    <input type="text" name="title" class="form-control" required>
                                </div>

                                <div class="form-group">
                                    <label>Credit Hours</label>
                                    <input type="text" name="credit_hours" class="form-control" required>
                                </div>

                                <div class="form-group">
                                    <label>Instructor</label>
                                    <input type="text" name="instructor" class="form-control" required>
                                </div>

                                <div class="form-group">
                                    <label>Instructor NetID</label>
                                    <input type="text" name="instructor_netid" class="form-control" required>
                                </div>

                                <div class="form-group">
                                    <label>Date & Time</label>
                                    <input type="text" name="date_time" class="form-control" required>
                                </div>

                                <div class="form-group">
                                    <label>Location</label>
                                    <input type="text" name="location" class="form-control" required>
                                </div>

                                <div class="form-group">
                                    <button type="submit" name="add_course" class="btn btn-success btn-block">
                                        <i class="fas fa-plus-circle"></i> Add Course
                                    </button>
                                    <button type="button" class="btn btn-secondary btn-block"
                                        onclick="clearForm('addCourseForm')">
                                        <i class="fas fa-eraser"></i> Clear Form
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        <?php elseif ($page == 'edit'): ?>
            <!-- PAGE 3: EDIT COURSE -->
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header bg-primary text-white">
                            <h4><i class="fas fa-edit"></i> Edit Course</h4>
                        </div>
                        <div class="card-body">
                            <form method="post" action="task3.php?page=edit" id="editCourseForm">
                                <input type="hidden" name="id" value="<?php echo $id; ?>">

                                <div class="form-group">
                                    <label>Semester</label>
                                    <input type="text" name="semester" class="form-control" value="<?php echo $semester; ?>"
                                        required>
                                </div>

                                <div class="form-group">
                                    <label>Course Number & Section</label>
                                    <input type="text" name="course_num_section" class="form-control"
                                        value="<?php echo $course_num_section; ?>" required>
                                </div>

                                <div class="form-group">
                                    <label>Title</label>
                                    <input type="text" name="title" class="form-control" value="<?php echo $title; ?>"
                                        required>
                                </div>

                                <div class="form-group">
                                    <label>Credit Hours</label>
                                    <input type="text" name="credit_hours" class="form-control"
                                        value="<?php echo $credit_hours; ?>" required>
                                </div>

                                <div class="form-group">
                                    <label>Instructor</label>
                                    <input type="text" name="instructor" class="form-control"
                                        value="<?php echo $instructor; ?>" required>
                                </div>

                                <div class="form-group">
                                    <label>Instructor NetID</label>
                                    <input type="text" name="instructor_netid" class="form-control"
                                        value="<?php echo $instructor_netid; ?>" required>
                                </div>

                                <div class="form-group">
                                    <label>Date & Time</label>
                                    <input type="text" name="date_time" class="form-control"
                                        value="<?php echo $date_time; ?>" required>
                                </div>

                                <div class="form-group">
                                    <label>Location</label>
                                    <input type="text" name="location" class="form-control" value="<?php echo $location; ?>"
                                        required>
                                </div>

                                <div class="form-group">
                                    <button type="submit" name="update_course" class="btn btn-primary btn-block">
                                        <i class="fas fa-save"></i> Update Course
                                    </button>
                                    <a href="task3.php?page=courses" class="btn btn-secondary btn-block">
                                        <i class="fas fa-times"></i> Cancel
                                    </a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        <?php endif; ?>
    </div>

    <!-- Footer -->
    <footer class="mt-5">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h5>CS6314 Project</h5>
                    Name: Yash Mahendrakumar Wani<br>Net ID: yxw230008</p>
                </div>
                <div class="col-md-4">
                    <h5>Quick Links</h5>
                    <ul class="list-unstyled">
                        <li><a href="task3.php?page=courses">Course Listings</a></li>
                        <li><a href="task3.php?page=add">Add Course</a></li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <h5>Contact</h5>
                    <address>
                        <strong>The University of Texas at Dallas</strong><br>
                        800 W. Campbell Road<br>
                        Richardson, TX 75080<br>&#128222  (972) 883-2111
                    </address>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 text-center">
                    <p>&copy; <?php echo date('Y'); ?> University of Texas at Dallas. All rights reserved.</p>
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery, Popper.js, and Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>

    <script>
        $(document).ready(function () {
            // Initialize course cards to show only header initially
            $('.course-details').hide();

            // Toggle course details on click
            $('.course-header').click(function () {
                $(this).siblings('.course-details').slideToggle();
            });

            // Autocomplete for search box
            $("#searchBox").autocomplete({
                source: function (request, response) {
                    $.getJSON("task3.php?search=" + request.term + "&autocomplete=true", function (data) {
                        response($.map(data, function (item) {
                            return {
                                label: item.value,
                                value: item.value,
                                id: item.id
                            };
                        }));
                    });
                },
                minLength: 2,
                select: function (event, ui) {
                    // Scroll to the selected course
                    if (ui.item) {
                        var courseId = ui.item.id;
                        var courseElement = $(".course-card[data-course-id='" + courseId + "']");
                        if (courseElement.length > 0) {
                            // Expand the details
                            courseElement.find('.course-details').show();

                            // Scroll to it
                            $('html, body').animate({
                                scrollTop: courseElement.offset().top - 100
                            }, 500);

                            // Highlight it
                            courseElement.addClass('highlight');
                            setTimeout(function () {
                                courseElement.removeClass('highlight');
                            }, 2000);
                        }
                    }
                }
            });
        });

        // Function to clear form fields
        function clearForm(formId) {
            document.getElementById(formId).reset();
        }

        // Confirmation for delete
        function confirmDelete(id) {
            if (confirm("Are you sure you want to delete this course?\n\nPress OK to continue or Cancel to abort.")) {
                window.location.href = "task3.php?delete=" + id;
            }
        }

        // Auto-dismiss alerts after 5 seconds
        window.setTimeout(function () {
            $(".alert-dismissible").fadeTo(500, 0).slideUp(500, function () {
                $(this).remove();
            });
        }, 5000);
    </script>
</body>

</html>