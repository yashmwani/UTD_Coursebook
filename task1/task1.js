document.addEventListener('DOMContentLoaded', function () {
    // Get references to DOM elements
    const extractButton = document.getElementById('extractButton');
    const downloadButton = document.getElementById('downloadButton');
    const statusElement = document.getElementById('status');
    const resultContainer = document.getElementById('resultContainer');

    // Global variables to store data
    let sqlContent = '';
    let courses = [];

    // Add event listeners
    extractButton.addEventListener('click', extractAndGenerateSQL);
    downloadButton.addEventListener('click', downloadSQL);

    /**
     * Main function to extract data and generate SQL
     */
    async function extractAndGenerateSQL() {
        try {
            // Update status
            statusElement.textContent = 'Loading coursebook2025.html...';
            resultContainer.innerHTML = '<p>Processing...</p>';

            // Fetch the HTML file
            const response = await fetch('coursebook2025.html');
            if (!response.ok) {
                throw new Error(`Failed to fetch coursebook2025.html (Status: ${response.status})`);
            }

            const html = await response.text();
            statusElement.textContent = 'Parsing HTML content...';

            // Parse HTML content
            const parser = new DOMParser();
            const doc = parser.parseFromString(html, 'text/html');

            // Extract course data from all rows with data-id attribute
            const courseRows = doc.querySelectorAll('tr[data-id]');
            statusElement.textContent = `Found ${courseRows.length} course entries, extracting data...`;

            // Process each course row
            courses = Array.from(courseRows).map((row, index) => {
                // Extract semester (e.g., 25S)
                const semesterCell = row.querySelector('td:first-child');
                const semester = semesterCell ? semesterCell.textContent.trim().split('\n')[0] : 'Unknown';

                // Extract course number and section (e.g., CS 1325.001)
                const courseNumCell = row.querySelector('td:nth-child(2)');
                const courseNumSection = courseNumCell ? courseNumCell.textContent.trim() : 'Unknown';

                // Extract course title and credit hours
                const titleCell = row.querySelector('td:nth-child(4)');
                const fullTitle = titleCell ? titleCell.textContent.trim() : 'Unknown';
                const titleMatch = fullTitle.match(/(.*)\s+\((\d+)\s+Semester Credit Hours\)/);
                const courseTitle = titleMatch ? titleMatch[1].trim() : fullTitle;
                const creditHours = titleMatch ? titleMatch[2] : '';

                // Extract instructor name
                const instructorCell = row.querySelector('td:nth-child(5)');
                const instructorName = instructorCell ? instructorCell.textContent.trim() : 'Unknown';

                // Extract instructor NetID
                let instructorNetID = '';
                const instructorLink = instructorCell ? instructorCell.querySelector('a') : null;
                if (instructorLink) {
                    const href = instructorLink.getAttribute('href');
                    const netIdMatch = href.match(/\/search\/([a-z0-9]+)$/i);
                    instructorNetID = netIdMatch ? netIdMatch[1] : '';
                }

                // Extract date & time
                const scheduleCell = row.querySelector('td:nth-child(6)');
                let dateTime = '';
                if (scheduleCell) {
                    const dayElement = scheduleCell.querySelector('.clstbl__resultrow__day');
                    const timeElement = scheduleCell.querySelector('.clstbl__resultrow__time');

                    if (dayElement && timeElement) {
                        dateTime = `${dayElement.textContent.trim()} ${timeElement.textContent.trim()}`;
                    } else {
                        dateTime = scheduleCell.textContent.trim().replace(/\s+/g, ' ');
                    }
                }

                // Extract classroom location
                const locationElement = scheduleCell ? scheduleCell.querySelector('.clstbl__resultrow__location') : null;
                const location = locationElement ? locationElement.textContent.trim() : '';

                // Generate current timestamp for created/updated fields
                const now = new Date();
                const timestamp = now.toISOString().slice(0, 19).replace('T', ' ');

                // Return course object
                return {
                    id: index + 1,
                    semester: semester,
                    courseNumSection: courseNumSection,
                    title: courseTitle,
                    creditHours: creditHours,
                    instructor: instructorName,
                    instructorNetID: instructorNetID,
                    dateTime: dateTime,
                    location: location,
                    timeCreated: timestamp,
                    timeUpdated: timestamp
                };
            });

            // Generate SQL content
            statusElement.textContent = 'Generating SQL content...';
            generateSQLContent();

            // Display results
            displayResults();

            // Enable download button
            downloadButton.disabled = false;
            statusElement.textContent = `Successfully processed ${courses.length} courses. SQL file is ready for download.`;

        } catch (error) {
            console.error('Error during extraction:', error);
            statusElement.textContent = `Error: ${error.message}`;
            resultContainer.innerHTML = `<p>An error occurred: ${error.message}</p>`;
        }
    }

    /**
     * Generates SQL content for creating table and inserting data
     */
    function generateSQLContent() {
        // Create table statement
        const createTableSQL = `-- UTD CS Course Database Table
-- Generated on ${new Date().toLocaleString()}

CREATE TABLE IF NOT EXISTS course1 (
    id INT PRIMARY KEY,
    semester VARCHAR(10) DEFAULT NULL,
    course_num_section VARCHAR(20) DEFAULT NULL,
    title VARCHAR(255) DEFAULT NULL,
    credit_hours VARCHAR(5) DEFAULT NULL,
    instructor VARCHAR(100) DEFAULT NULL,
    instructor_netid VARCHAR(50) DEFAULT NULL,
    date_time VARCHAR(100) DEFAULT NULL,
    location VARCHAR(100) DEFAULT NULL,
    time_created DATETIME DEFAULT NULL,
    time_updated DATETIME DEFAULT NULL
);`;

        // Generate insert statements
        const insertStatements = courses.map(course => {
            return `
INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    ${course.id},
    '${escapeSQL(course.semester)}',
    '${escapeSQL(course.courseNumSection)}',
    '${escapeSQL(course.title)}',
    '${escapeSQL(course.creditHours)}',
    '${escapeSQL(course.instructor)}',
    '${escapeSQL(course.instructorNetID)}',
    '${escapeSQL(course.dateTime)}',
    '${escapeSQL(course.location)}',
    '${course.timeCreated}',
    '${course.timeUpdated}'
);`;
        });

        // Combine all SQL statements
        sqlContent = `${createTableSQL}\n\n${insertStatements.join('\n')}`;
    }

    /**
     * Displays extraction results
     */
    function displayResults() {
        // Create table to display sample of extracted data
        let tableHTML = `
            <h2>Sample of Extracted Data (${courses.length} courses found)</h2>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Semester</th>
                        <th>Course</th>
                        <th>Title</th>
                        <th>Instructor</th>
                        <th>Date & Time</th>
                        <th>Location</th>
                    </tr>
                </thead>
                <tbody>
        `;

        // Display first 10 courses or all if less than 10
        const displayCourses = courses.slice(0, 10);

        displayCourses.forEach(course => {
            tableHTML += `
                <tr>
                    <td>${course.id}</td>
                    <td>${course.semester}</td>
                    <td>${course.courseNumSection}</td>
                    <td>${course.title}</td>
                    <td>${course.instructor}</td>
                    <td>${course.dateTime}</td>
                    <td>${course.location}</td>
                </tr>
            `;
        });

        tableHTML += `
                </tbody>
            </table>
            <p>SQL file includes ${courses.length} course entries.</p>
            <p>Click the "Download SQL File" button to save task1.sql file.</p>
        `;

        resultContainer.innerHTML = tableHTML;
    }

    /**
     * Downloads the SQL content as task1.sql file
     */
    function downloadSQL() {
        if (!sqlContent) {
            statusElement.textContent = 'No SQL content to download. Please extract data first.';
            return;
        }
    
        // Send SQL content to PHP for saving
        fetch('task1.php', {
            method: 'POST',
            headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
            body: `sqlContent=${encodeURIComponent(sqlContent)}`
        })
        .then(response => response.json())
        .then(data => {
            if (data.status === 'success') {
                statusElement.innerHTML = `SQL file saved successfully. <a href="${data.filePath}" download>Click here to download</a>`;
            } else {
                statusElement.textContent = 'Error saving SQL file.';
            }
        })
        .catch(error => {
            console.error('Error:', error);
            statusElement.textContent = 'Error sending SQL data.';
        });
    }
    


    /**
     * Helper function to escape special characters in SQL strings
     */
    function escapeSQL(str) {
        if (!str) return '';
        return str
            .replace(/'/g, "''")  // Escape single quotes
            .replace(/\\/g, "\\\\");  // Escape backslashes
    }
});