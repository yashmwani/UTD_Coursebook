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

// Add this right after your database connection code
// Modify the savePageAsFile function to be more descriptive with operation types
// Modify the savePageAsFile function to only save test case outputs with specific naming
function savePageAsFile($operation, $identifier)
{
    // Only proceed if this is a test case operation
    if (strpos($identifier, 'TestCase') === 0) {
        // Extract test case number from identifier (e.g., "TestCase1" → "1")
        $testCaseNum = substr($identifier, 8);
        
        // Determine file number based on operation type and test case number
        // Add: 1-5, Update: 6-10, Delete: 11-15
        $fileNumber = 0;
        if ($operation === "add") {
            $fileNumber = $testCaseNum;
        } else if ($operation === "update") {
            $fileNumber = $testCaseNum + 5;
        } else if ($operation === "delete") {
            $fileNumber = $testCaseNum + 10;
        }
        
        // Format filename as test{number}out.html
        $filename = "test" . $fileNumber . "out.html";

        // Get the current database state
        global $conn;
        $coursesResult = $conn->query("SELECT * FROM course1 ORDER BY course_num_section");

        // Start building the HTML content
        $content = '<!DOCTYPE html>
<html>
<head>
    <title>CS6314 - Task 2 Output</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-4">
        <h2>CS6314 Course Management - ' . ucfirst($operation) . ' Operation: ' . $identifier . '</h2>
        <p>Generated on: ' . date('Y-m-d H:i:s') . '</p>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>S.No</th>
                    <th>Semester</th>
                    <th>Course</th>
                    <th>Title</th>
                    <th>Credits</th>
                    <th>Instructor</th>
                    <th>Date & Time</th>
                    <th>Location</th>
                </tr>
            </thead>
            <tbody>';

        $serial_number = 1;
        while ($row = $coursesResult->fetch_assoc()) {
            $content .= '
                <tr>
                    <td>' . $serial_number++ . '</td>
                    <td>' . $row['semester'] . '</td>
                    <td>' . $row['course_num_section'] . '</td>
                    <td>' . $row['title'] . '</td>
                    <td>' . $row['credit_hours'] . '</td>
                    <td>' . $row['instructor'] . ' (' . $row['instructor_netid'] . ')</td>
                    <td>' . $row['date_time'] . '</td>
                    <td>' . $row['location'] . '</td>
                </tr>';
        }

        $content .= '
            </tbody>
        </table>
    </div>
</body>
</html>';

        // Save the content to a file in the same directory
        file_put_contents($filename, $content);
    }
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

// Process form submission for adding or updating a course
// Process form submission for adding or updating a course
if (isset($_POST['save'])) {
    $semester = $_POST['semester'];
    $course_num_section = $_POST['course_num_section'];
    $title = $_POST['title'];
    $credit_hours = $_POST['credit_hours'];
    $instructor = $_POST['instructor'];
    $instructor_netid = $_POST['instructor_netid'];
    $date_time = $_POST['date_time'];
    $location = $_POST['location'];
    $current_time = date('Y-m-d H:i:s');

    // For new record
    if (!isset($_POST['id']) || empty($_POST['id'])) {
        // Get the max ID and increment by 1
        $result = $conn->query("SELECT MAX(id) as max_id FROM course1");
        $row = $result->fetch_assoc();
        $next_id = $row['max_id'] + 1;

        $sql = "INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated) 
                VALUES ($next_id, '$semester', '$course_num_section', '$title', '$credit_hours', '$instructor', '$instructor_netid', '$date_time', '$location', '$current_time', '$current_time')";

        if ($conn->query($sql) === TRUE) {
            echo "<div class='alert alert-success'>Course added successfully</div>";

            // Redirect to clear the form
            header("Location: task2.php");
            exit();
        } else {
            echo "<div class='alert alert-danger'>Error: " . $sql . "<br>" . $conn->error . "</div>";
        }
    } else {
        // For update
        $id = $_POST['id'];
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
            echo "<div class='alert alert-success'>Course updated successfully</div>";

            // Redirect to clear the form
            header("Location: task2.php");
            exit();
        } else {
            echo "<div class='alert alert-danger'>Error: " . $sql . "<br>" . $conn->error . "</div>";
        }
    }
}

// Process test case additions (1-5)
// Process test case additions (1-5)
if (isset($_GET['addTestCase'])) {
    $testCase = $_GET['addTestCase'];
    $current_time = date('Y-m-d H:i:s');

    // Get the max ID and increment by 1
    $result = $conn->query("SELECT MAX(id) as max_id FROM course1");
    $row = $result->fetch_assoc();
    $next_id = $row['max_id'] + 1;

    switch ($testCase) {
        case '1':
            $sql = "INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated) 
                    VALUES ($next_id, '25FOpen', 'CS 6314.001', 'Web Programming Languages', '3', 'John Smith', 'jxs123456', 'Monday & Wednesday 5:30pm - 6:45pm', 'ECSS 2.306', '$current_time', '$current_time')";
            break;
        case '2':
            $sql = "INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated) 
                    VALUES ($next_id, '25FOpen', 'CS 6363.009', 'Design and Analysis of Algorithms', '3', 'Jane Doe', 'jxd987654', 'Tuesday & Thursday 7:00pm - 8:15pm', 'ECSS 3.503', '$current_time', '$current_time')";
            break;
        case '3':
            $sql = "INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated) 
                    VALUES ($next_id, '25SOpen', 'CS 5343.001', 'Data Structures and Algorithms', '3', 'Robert Johnson', 'rxj456789', 'Monday & Wednesday 2:30pm - 3:45pm', 'ECSN 2.110', '$current_time', '$current_time')";
            break;
        case '4':
            $sql = "INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated) 
                    VALUES ($next_id, '25SOpen', 'CS 6320.501', 'Natural Language Processing', '3', 'Sarah Williams', 'sxw789012', 'Online Asynchronous', 'Virtual', '$current_time', '$current_time')";
            break;
        case '5':
            $sql = "INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated) 
                    VALUES ($next_id, '25FOpen', 'CS 6360.002', 'Database Design', '3', 'Michael Brown', 'mxb345678', 'Tuesday & Thursday 4:00pm - 5:15pm', 'ECSS 4.910', '$current_time', '$current_time')";
            break;
    }

    if ($conn->query($sql) === TRUE) {
        echo "<div class='alert alert-success'>Test Case " . $testCase . " added successfully</div>";

        // Save page state to file with operation type "add"
        savePageAsFile("add", "TestCase" . $testCase);
    } else {
        echo "<div class='alert alert-danger'>Error: " . $sql . "<br>" . $conn->error . "</div>";
    }
}

// Process test case updates (1-5)
// Process test case updates (1-5)
if (isset($_GET['updateTestCase'])) {
    $testCase = $_GET['updateTestCase'];
    $current_time = date('Y-m-d H:i:s');

    switch ($testCase) {
        case '1':
            // Find course with course_num_section CS 6314.001
            $result = $conn->query("SELECT * FROM course1 WHERE course_num_section='CS 6314.001'");

            if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
                $id = $row['id'];
                $sql = "UPDATE course1 SET 
                        title='Advanced Web Programming', 
                        instructor='John Smith Jr.', 
                        instructor_netid='jxs999999', 
                        time_updated='$current_time' 
                        WHERE id=$id";
            } else {
                echo "<div class='alert alert-danger'>Error: Test Case 1 (CS 6314.001) not found in database</div>";
                break;
            }
            break;
        case '2':
            // Find course with course_num_section CS 6363.001
            $result = $conn->query("SELECT * FROM course1 WHERE course_num_section='CS 6363.009'");

            if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
                $id = $row['id'];
                $sql = "UPDATE course1 SET 
                        date_time='Monday & Wednesday 4:00pm - 5:15pm', 
                        location='ECSS 4.910', 
                        time_updated='$current_time' 
                        WHERE id=$id";
            } else {
                echo "<div class='alert alert-danger'>Error: Test Case 2 (CS 6363.009) not found in database</div>";
                break;
            }
            break;
        case '3':
            // Find course with course_num_section CS 5343.001
            $result = $conn->query("SELECT * FROM course1 WHERE course_num_section='CS 5343.001'");

            if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
                $id = $row['id'];
                $sql = "UPDATE course1 SET 
                        semester='25FOpen', 
                        credit_hours='4', 
                        time_updated='$current_time' 
                        WHERE id=$id";
            } else {
                echo "<div class='alert alert-danger'>Error: Test Case 3 (CS 5343.001) not found in database</div>";
                break;
            }
            break;
        case '4':
            // Find course with course_num_section CS 6320.501
            $result = $conn->query("SELECT * FROM course1 WHERE course_num_section='CS 6320.501'");

            if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
                $id = $row['id'];
                $sql = "UPDATE course1 SET 
                        date_time='Monday 7:00pm - 9:45pm', 
                        location='ECSS 2.415', 
                        instructor='Sarah Johnson', 
                        instructor_netid='sxj789555', 
                        time_updated='$current_time' 
                        WHERE id=$id";
            } else {
                echo "<div class='alert alert-danger'>Error: Test Case 4 (CS 6320.501) not found in database</div>";
                break;
            }
            break;
        case '5':
            // Find course with course_num_section CS 6360.002
            $result = $conn->query("SELECT * FROM course1 WHERE course_num_section='CS 6360.002'");

            if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
                $id = $row['id'];
                $sql = "UPDATE course1 SET 
                        title='Advanced Database Systems', 
                        course_num_section='CS 6360.001', 
                        time_updated='$current_time' 
                        WHERE id=$id";
            } else {
                echo "<div class='alert alert-danger'>Error: Test Case 5 (CS 6360.002) not found in database</div>";
                break;
            }
            break;
    }

    if (isset($sql) && $conn->query($sql) === TRUE) {
        echo "<div class='alert alert-success'>Test Case " . $testCase . " updated successfully</div>";

        // Save page state to file with operation type "update"
        savePageAsFile("update", "TestCase" . $testCase);
    } else if (isset($sql)) {
        echo "<div class='alert alert-danger'>Error: " . $sql . "<br>" . $conn->error . "</div>";
    }
}

// Process delete request
// Process delete request
if (isset($_GET['delete'])) {
    $id = $_GET['delete'];
    
    // Get course info before deleting for the filename
    $result = $conn->query("SELECT * FROM course1 WHERE id=$id");
    $row = $result->fetch_assoc();
    $course_info = $row['course_num_section'];
    
    $sql = "DELETE FROM course1 WHERE id=$id";

    if ($conn->query($sql) === TRUE) {
        echo "<div class='alert alert-success'>Course deleted successfully</div>";

    } else {
        echo "<div class='alert alert-danger'>Error: " . $sql . "<br>" . $conn->error . "</div>";
    }
}

// Process test case deletions (1-5)
if (isset($_GET['deleteTestCase'])) {
    $testCase = $_GET['deleteTestCase'];

    switch ($testCase) {
        case '1':
            // Find course with course_num_section CS 6314.001
            $result = $conn->query("SELECT * FROM course1 WHERE course_num_section='CS 6314.001'");
            break;
        case '2':
            // Find course with course_num_section CS 6363.009
            $result = $conn->query("SELECT * FROM course1 WHERE course_num_section='CS 6363.009'");
            break;
        case '3':
            // Find course with course_num_section CS 5343.001
            $result = $conn->query("SELECT * FROM course1 WHERE course_num_section='CS 5343.001'");
            break;
        case '4':
            // Find course with course_num_section CS 6320.501 or updated to Sarah Johnson
            $result = $conn->query("SELECT * FROM course1 WHERE course_num_section='CS 6320.501' OR instructor_netid='sxj789555'");
            break;
        case '5':
            // Find course that was Database Design or now Advanced Database Systems
            $result = $conn->query("SELECT * FROM course1 WHERE title='Database Design' OR title='Advanced Database Systems'");
            break;
    }

    if (isset($result) && $result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $id = $row['id'];
        $course_info = $row['course_num_section'] . ' - ' . $row['title'];
        $sql = "DELETE FROM course1 WHERE id=$id";

        if ($conn->query($sql) === TRUE) {
            echo "<div class='alert alert-success'>Test Case " . $testCase . " (" . $course_info . ") deleted successfully</div>";

            // Save page state to file with operation type "delete"
            savePageAsFile("delete", "TestCase" . $testCase);
        } else {
            echo "<div class='alert alert-danger'>Error: " . $sql . "<br>" . $conn->error . "</div>";
        }
    } else {
        echo "<div class='alert alert-danger'>Error: Test Case " . $testCase . " not found in database</div>";
    }
}

// Get course details for edit
if (isset($_GET['edit'])) {
    $id = $_GET['edit'];
    $update = true;
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

// Get all courses - ordered by course_num_section alphabetically
$result = $conn->query("SELECT * FROM course1 ORDER BY course_num_section");
?>

<!DOCTYPE html>
<html>

<head>
    <title>CS6314 - Task 2</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        .container {
            margin-top: 30px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .btn-action {
            margin-right: 5px;
            margin-bottom: 5px;
        }

        .alert {
            margin-bottom: 20px;
        }

        .test-case-buttons {
            margin-bottom: 20px;
        }

        .btn-group-vertical {
            margin-right: 10px;
        }

        .test-cases-container {
            display: flex;
            flex-wrap: wrap;
            margin-bottom: 20px;
        }

        .test-case-column {
            flex: 1;
            min-width: 300px;
            margin-bottom: 15px;
        }

        .test-case-column h5 {
            margin-bottom: 10px;
        }
    </style>
</head>

<body>
    <div class="container">
        <h2>CS6314 Course Management</h2>

        <!-- Test Case Buttons -->
        <div class="test-case-buttons">
            <h4>Test Cases</h4>
            <div class="test-cases-container">
                <div class="test-case-column">
                    <h5>Add Test Cases</h5>
                    <div class="btn-group-vertical">
                        <button type="button" class="btn btn-info btn-action" onclick="addTestCase(1)">Add Test Case 1:
                            CS 6314.001</button>
                        <button type="button" class="btn btn-info btn-action" onclick="addTestCase(2)">Add Test Case 2:
                            CS 6363.009</button>
                        <button type="button" class="btn btn-info btn-action" onclick="addTestCase(3)">Add Test Case 3:
                            CS 5343.001</button>
                        <button type="button" class="btn btn-info btn-action" onclick="addTestCase(4)">Add Test Case 4:
                            CS 6320.501</button>
                        <button type="button" class="btn btn-info btn-action" onclick="addTestCase(5)">Add Test Case 5:
                            CS 6360.002</button>
                    </div>
                </div>

                <div class="test-case-column">
                    <h5>Update Test Cases</h5>
                    <div class="btn-group-vertical">
                        <button type="button" class="btn btn-warning btn-action" onclick="updateTestCase(1)">Update Test
                            Case 1</button>
                        <button type="button" class="btn btn-warning btn-action" onclick="updateTestCase(2)">Update Test
                            Case 2</button>
                        <button type="button" class="btn btn-warning btn-action" onclick="updateTestCase(3)">Update Test
                            Case 3</button>
                        <button type="button" class="btn btn-warning btn-action" onclick="updateTestCase(4)">Update Test
                            Case 4</button>
                        <button type="button" class="btn btn-warning btn-action" onclick="updateTestCase(5)">Update Test
                            Case 5</button>
                    </div>
                </div>

                <div class="test-case-column">
                    <h5>Delete Test Cases</h5>
                    <div class="btn-group-vertical">
                        <button type="button" class="btn btn-danger btn-action" onclick="deleteTestCase(1)">Delete Test
                            Case 1</button>
                        <button type="button" class="btn btn-danger btn-action" onclick="deleteTestCase(2)">Delete Test
                            Case 2</button>
                        <button type="button" class="btn btn-danger btn-action" onclick="deleteTestCase(3)">Delete Test
                            Case 3</button>
                        <button type="button" class="btn btn-danger btn-action" onclick="deleteTestCase(4)">Delete Test
                            Case 4</button>
                        <button type="button" class="btn btn-danger btn-action" onclick="deleteTestCase(5)">Delete Test
                            Case 5</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Input Form -->
        <div class="row">
            <div class="col-md-4">
                <form method="post" action="task2.php" id="courseForm">
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
                        <input type="text" name="title" class="form-control" value="<?php echo $title; ?>" required>
                    </div>

                    <div class="form-group">
                        <label>Credit Hours</label>
                        <input type="text" name="credit_hours" class="form-control" value="<?php echo $credit_hours; ?>"
                            required>
                    </div>

                    <div class="form-group">
                        <label>Instructor</label>
                        <input type="text" name="instructor" class="form-control" value="<?php echo $instructor; ?>"
                            required>
                    </div>

                    <div class="form-group">
                        <label>Instructor NetID</label>
                        <input type="text" name="instructor_netid" class="form-control"
                            value="<?php echo $instructor_netid; ?>" required>
                    </div>

                    <div class="form-group">
                        <label>Date & Time</label>
                        <input type="text" name="date_time" class="form-control" value="<?php echo $date_time; ?>"
                            required>
                    </div>

                    <div class="form-group">
                        <label>Location</label>
                        <input type="text" name="location" class="form-control" value="<?php echo $location; ?>"
                            required>
                    </div>

                    <div class="form-group">
                        <?php if ($update == true): ?>
                            <button type="submit" name="save" class="btn btn-primary">Update</button>
                            <button type="button" class="btn btn-secondary" onclick="clearForm()">Cancel</button>
                        <?php else: ?>
                            <button type="submit" name="save" class="btn btn-success">Save</button>
                            <button type="button" class="btn btn-secondary" onclick="clearForm()">Clear</button>
                        <?php endif ?>
                    </div>
                </form>
            </div>

            <!-- Course Table -->
            <div class="col-md-8">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>S.No</th>
                            <th>Semester</th>
                            <th>Course</th>
                            <th>Title</th>
                            <th>Credits</th>
                            <th>Instructor</th>
                            <th>Date & Time</th>
                            <th>Location</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $serial_number = 1;
                        while ($row = $result->fetch_assoc()):
                            ?>
                            <tr>
                                <td><?php echo $serial_number++; ?></td>
                                <td><?php echo $row['semester']; ?></td>
                                <td><?php echo $row['course_num_section']; ?></td>
                                <td><?php echo $row['title']; ?></td>
                                <td><?php echo $row['credit_hours']; ?></td>
                                <td><?php echo $row['instructor']; ?> (<?php echo $row['instructor_netid']; ?>)</td>
                                <td><?php echo $row['date_time']; ?></td>
                                <td><?php echo $row['location']; ?></td>
                                <td>
                                    <a href="task2.php?edit=<?php echo $row['id']; ?>"
                                        class="btn btn-warning btn-sm btn-action">Edit</a>
                                    <a href="#" onclick="confirmDelete(<?php echo $row['id']; ?>)"
                                        class="btn btn-danger btn-sm btn-action">Delete</a>
                                </td>
                            </tr>
                        <?php endwhile; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script>
        // Function to clear form fields
        function clearForm() {
            document.getElementById('courseForm').reset();
            document.querySelector('input[name="id"]').value = '';
            window.location.href = 'task2.php'; // Redirect to clear the edit state
        }

        // Test case functions for adding courses
        function addTestCase(num) {
            let courseInfo = "";

            switch (num) {
                case 1:
                    courseInfo = "CS 6314.001 - Web Programming Languages";
                    break;
                case 2:
                    courseInfo = "CS 6363.009 - Design and Analysis of Algorithms";
                    break;
                case 3:
                    courseInfo = "CS 5343.001 - Data Structures and Algorithms";
                    break;
                case 4:
                    courseInfo = "CS 6320.501 - Natural Language Processing";
                    break;
                case 5:
                    courseInfo = "CS 6360.002 - Database Design";
                    break;
            }

            if (confirm("Add Test Case " + num + ": " + courseInfo + "?")) {
                window.location.href = "task2.php?addTestCase=" + num;
            }
        }

        // Test case functions for updating courses
        function updateTestCase(num) {
            let updateInfo = "";

            switch (num) {
                case 1:
                    updateInfo = "Modifying CS 6314.001 course title and instructor";
                    break;
                case 2:
                    updateInfo = "Modifying CS 6363.009 course location and time";
                    break;
                case 3:
                    updateInfo = "Modifying CS 5343.001 semester and credit hours";
                    break;
                case 4:
                    updateInfo = "Modifying CS 6320.501 instructor, time and location";
                    break;
                case 5:
                    updateInfo = "Modifying CS 6360.002 title and section number";
                    break;
            }

            if (confirm("Update Test Case " + num + ": " + updateInfo + "?")) {
                window.location.href = "task2.php?updateTestCase=" + num;
            }
        }

        // Test case functions for deleting courses
        function deleteTestCase(num) {
            let courseInfo = "";

            switch (num) {
                case 1:
                    courseInfo = "CS 6314.001";
                    break;
                case 2:
                    courseInfo = "CS 6363.009";
                    break;
                case 3:
                    courseInfo = "CS 5343.001";
                    break;
                case 4:
                    courseInfo = "CS 6320.501";
                    break;
                case 5:
                    courseInfo = "CS 6360.002/001";
                    break;
            }

            if (confirm("Delete Test Case " + num + ": Remove " + courseInfo + " course?\n\nPress OK to continue or Cancel to abort.")) {
                window.location.href = "task2.php?deleteTestCase=" + num;
            }
        }

        // Confirmation for regular delete
        function confirmDelete(id) {
            if (confirm("Are you sure you want to delete this course?\n\nPress OK to continue or Cancel to abort.")) {
                window.location.href = "task2.php?delete=" + id;
            }
        }
    </script>
</body>

</html>