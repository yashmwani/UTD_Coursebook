-- UTD CS Course Database Table
-- Generated on 3/16/2025, 8:55:40 PM

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
);


INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    1,
    '25SOpen',
    'CS 1325.001',
    'Introduction to Programming',
    '3',
    'Miguel Razo Razo',
    'mrazora',
    'Monday & Wednesday 10:00am - 11:15am',
    'ECSS 2.410',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    2,
    '25SOpen',
    'CS 1325.002',
    'Introduction to Programming',
    '3',
    'Nidhiben Solanki',
    'nxs121130',
    'Tuesday & Thursday 11:30am - 12:45pm',
    'ECSS 2.415',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    3,
    '25SOpen',
    'CS 1337.001',
    'Computer Science I',
    '3',
    'Priya Narayanasami',
    'pxn173330',
    'Tuesday & Thursday 4:00pm - 5:15pm',
    'ECSS 2.412',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    4,
    '25SOpen',
    'CS 1337.002',
    'Computer Science I',
    '3',
    'Srimathi Srinivasan',
    'sxs180206',
    'Monday & Wednesday 10:00am - 11:15am',
    'ECSW 1.365',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    5,
    '25SOpen',
    'CS 1337.003',
    'Computer Science I',
    '3',
    'Parisa Darbari',
    'dal776869',
    'Monday & Wednesday 10:00am - 11:15am',
    'ECSW 1.355',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    6,
    '25SFull',
    'CS 1337.004',
    'Computer Science I',
    '3',
    'Shyam Karrah',
    'skarrah',
    'Tuesday & Thursday 4:00pm - 5:15pm',
    'SLC 2.303',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    7,
    '25SFull',
    'CS 1337.005',
    'Computer Science I',
    '3',
    'Srimathi Srinivasan',
    'sxs180206',
    'Monday & Wednesday 11:30am - 12:45pm',
    'ECSW 1.365',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    8,
    '25SOpen',
    'CS 1337.006',
    'Computer Science I',
    '3',
    'Gordon Arnold',
    'gxa120930',
    'Monday & Wednesday 11:30am - 12:45pm',
    'ECSS 2.311',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    9,
    '25SOpen',
    'CS 1337.007',
    'Computer Science I',
    '3',
    'Jason Smith',
    'jws130830',
    'Tuesday & Thursday 1:00pm - 2:15pm',
    'ECSS 2.305',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    10,
    '25SFull',
    'CS 1337.008',
    'Computer Science I',
    '3',
    'Aditya Srivastava',
    'axs142531',
    'Tuesday & Thursday 1:00pm - 2:15pm',
    'ECSS 2.306',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    11,
    '25SOpen',
    'CS 1337.009',
    'Computer Science I',
    '3',
    'Shyam Karrah',
    'skarrah',
    'Tuesday & Thursday 1:00pm - 2:15pm',
    'ECSW 1.355',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    12,
    '25SOpen',
    'CS 1337.010',
    'Computer Science I',
    '3',
    'Jason Smith',
    'jws130830',
    'Tuesday & Thursday 4:00pm - 5:15pm',
    'FN 2.102',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    13,
    '25SFull',
    'CS 1337.0w1',
    'Computer Science I',
    '3',
    'Scott Dollinger',
    'smd013000',
    'Monday & Wednesday 10:00am - 11:15am',
    'No Meeting Room',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    14,
    '25SFull',
    'CS 1337.0w2',
    'Computer Science I',
    '3',
    'Scott Dollinger',
    'smd013000',
    'Monday & Wednesday 11:30am - 12:45pm',
    'No Meeting Room',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    15,
    '25SOpen',
    'CS 1337.701',
    'Computer Science I  (Non-Enroll)',
    '',
    'Simeon Ntafos
, Parisa Darbari
, Shyam Karrah
, Jason Smith
, Scott Dollinger
, Aditya Srivastava
, Srimathi Srinivasan
, Gordon Arnold
, Priya Narayanasami',
    'ntafos',
    'Common Exam',
    '',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    16,
    '25SOpen',
    'CS 1436.001',
    'Programming Fundamentals  (4 Credits)',
    '',
    'Laurie Thompson',
    'lthomp',
    'Monday & Wednesday 11:00am - 1:15pm',
    'ECSS 2.312',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    17,
    '25SOpen',
    'CS 1436.002',
    'Programming Fundamentals  (4 Credits)',
    '',
    'Laurie Thompson',
    'lthomp',
    'Monday & Wednesday 2:30pm - 4:45pm',
    'ECSS 2.312',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    18,
    '25SOpen',
    'CS 1436.003',
    'Programming Fundamentals  (4 Credits)',
    '',
    'James Willson',
    'jkw053000',
    'Tuesday & Thursday 1:00pm - 3:15pm',
    'ECSS 2.312',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    19,
    '25SOpen',
    'CS 2305.001',
    'Discrete Mathematics for Computing I',
    '3',
    'Jessica Ouyang',
    'jjo190001',
    'Tuesday & Thursday 8:30am - 9:45am',
    'ECSW 1.315',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    20,
    '25SOpen',
    'CS 2305.002',
    'Discrete Mathematics for Computing I',
    '3',
    'Jason Jue',
    'jjue',
    'Tuesday & Thursday 8:30am - 9:45am',
    'HH 2.402',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    21,
    '25SOpen',
    'CS 2305.004',
    'Discrete Mathematics for Computing I',
    '3',
    'Sergey Bereg',
    'sxb027100',
    'Monday & Wednesday 2:30pm - 3:45pm',
    'SLC 1.102',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    22,
    '25SFull',
    'CS 2305.005',
    'Discrete Mathematics for Computing I',
    '3',
    'Daniel Gibney',
    'djg230002',
    'Tuesday & Thursday 11:30am - 12:45pm',
    'ECSW 1.315',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    23,
    '25SFull',
    'CS 2336.001',
    'Computer Science II',
    '3',
    'Brian Ricks',
    'bwr031000',
    'Monday & Wednesday 10:00am - 11:15am',
    'ECSS 2.415',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    24,
    '25SFull',
    'CS 2336.003',
    'Computer Science II',
    '3',
    'Brian Ricks',
    'bwr031000',
    'Monday & Wednesday 11:30am - 12:45pm',
    'GR 2.530',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    25,
    '25SOpen',
    'CS 2336.005',
    'Computer Science II',
    '3',
    'Jason Smith',
    'jws130830',
    'Tuesday & Thursday 11:30am - 12:45pm',
    'ECSS 2.201',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    26,
    '25SOpen',
    'CS 2336.007',
    'Computer Science II',
    '3',
    'Jeyakesavan Veerasamy',
    'veerasam',
    'Tuesday & Thursday 2:30pm - 3:45pm',
    'ECSS 2.201',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    27,
    '25SOpen',
    'CS 2336.008',
    'Computer Science II',
    '3',
    'Aditya Srivastava',
    'axs142531',
    'Tuesday & Thursday 2:30pm - 3:45pm',
    'ECSS 2.203',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    28,
    '25SOpen',
    'CS 2336.501',
    'Computer Science II',
    '3',
    'David Sims',
    'dxs190044',
    'Tuesday & Thursday 5:30pm - 6:45pm',
    'ECSS 2.306',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    29,
    '25SOpen',
    'CS 2337.501',
    'Computer Science II',
    '3',
    'Doug DeGroot
, Gordon Arnold',
    'dxd180020',
    'Tuesday & Thursday 5:30pm - 6:45pm',
    'ECSS 2.415',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    30,
    '25SOpen',
    'CS 2340.001',
    'Computer Architecture',
    '3',
    'Alice Wang',
    'axw230018',
    'Monday & Wednesday 10:00am - 11:15am',
    'JO 4.614',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    31,
    '25SOpen',
    'CS 2340.003',
    'Computer Architecture',
    '3',
    'Alice Wang',
    'axw230018',
    'Monday & Wednesday 1:00pm - 2:15pm',
    'ECSS 2.311',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    32,
    '25SOpen',
    'CS 2340.004',
    'Computer Architecture',
    '3',
    'Yvo Desmedt',
    'ygd120030',
    'Monday & Wednesday 1:00pm - 2:15pm',
    'ECSW 1.365',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    33,
    '25SFull',
    'CS 2340.005',
    'Computer Architecture',
    '3',
    'Wafa Jaffal',
    'wxj210000',
    'Monday & Wednesday 8:30am - 9:45am',
    'ECSS 2.311',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    34,
    '25SOpen',
    'CS 2340.006',
    'Computer Architecture',
    '3',
    'Alice Wang',
    'axw230018',
    'Tuesday & Thursday 2:30pm - 3:45pm',
    'ECSS 2.305',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    35,
    '25SOpen',
    'CS 2340.007',
    'Computer Architecture',
    '3',
    'Wafa Jaffal',
    'wxj210000',
    'Monday & Wednesday 10:00am - 11:15am',
    'ECSS 2.311',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    36,
    '25SOpen',
    'CS 2340.008',
    'Computer Architecture',
    '3',
    'Nhut Nguyen',
    'nhutnn',
    'Tuesday & Thursday 4:00pm - 5:15pm',
    'ECSS 2.305',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    37,
    '25SOpen',
    'CS 2340.hn1',
    'Computer Architecture  - CV Honors',
    '3',
    'Nhut Nguyen',
    'nhutnn',
    'Tuesday & Thursday 10:00am - 11:15am',
    'AD 3.216',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    38,
    '25SFull',
    'CS 3162.051',
    'Professional Responsibility in Computer Science and Software Engineering  (1 Semester Credit Hour)',
    '',
    'John Cole',
    'jxc064000',
    'Tuesday & Thursday 9:00am - 9:50am',
    'FN 2.102',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    39,
    '25SOpen',
    'CS 3162.052',
    'Professional Responsibility in Computer Science and Software Engineering  (1 Semester Credit Hour)',
    '',
    'John Cole',
    'jxc064000',
    'Tuesday & Thursday 8:00am - 8:50am',
    'FN 2.102',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    40,
    '25SOpen',
    'CS 3162.091',
    'Professional Responsibility in Computer Science and Software Engineering  (1 Semester Credit Hour)',
    '',
    'John Cole',
    'jxc064000',
    'Tuesday & Thursday 9:00am - 9:50am',
    'FN 2.102',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    41,
    '25SOpen',
    'CS 3162.092',
    'Professional Responsibility in Computer Science and Software Engineering  (1 Semester Credit Hour)',
    '',
    'John Cole',
    'jxc064000',
    'Tuesday & Thursday 8:00am - 8:50am',
    'FN 2.102',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    42,
    '25SOpen',
    'CS 3341.001',
    'Probability and Statistics in Computer Science and Software Engineering',
    '3',
    'Octavious Smiley',
    'oxs230011',
    'Monday & Wednesday 11:30am - 12:45pm',
    'ECSS 2.410',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    43,
    '25SOpen',
    'CS 3341.002',
    'Probability and Statistics in Computer Science and Software Engineering',
    '3',
    'Huizhen Guo',
    'hxg190020',
    'Tuesday & Thursday 2:30pm - 3:45pm',
    'ECSS 2.415',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    44,
    '25SOpen',
    'CS 3341.003',
    'Probability and Statistics in Computer Science and Software Engineering',
    '3',
    'Huizhen Guo',
    'hxg190020',
    'Tuesday & Thursday 1:00pm - 2:15pm',
    'ECSS 2.412',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    45,
    '25SOpen',
    'CS 3341.004',
    'Probability and Statistics in Computer Science and Software Engineering',
    '3',
    'Huizhen Guo',
    'hxg190020',
    'Monday & Wednesday 2:30pm - 3:45pm',
    'ECSS 2.415',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    46,
    '25SOpen',
    'CS 3341.005',
    'Probability and Statistics in Computer Science and Software Engineering',
    '3',
    'Shengjie Jiang',
    'sxj220069',
    'Monday & Wednesday 8:30am - 9:45am',
    'ECSS 2.415',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    47,
    '25SOpen',
    'CS 3341.006',
    'Probability and Statistics in Computer Science and Software Engineering',
    '3',
    'Octavious Smiley',
    'oxs230011',
    'Monday & Wednesday 4:00pm - 5:15pm',
    'HH 2.402',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    48,
    '25SOpen',
    'CS 3341.501',
    'Probability and Statistics in Computer Science and Software Engineering',
    '3',
    'Octavious Smiley',
    'oxs230011',
    'Monday & Wednesday 5:30pm - 6:45pm',
    'ECSW 1.315',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    49,
    '25SOpen',
    'CS 3345.001',
    'Data Structures and Introduction to Algorithmic Analysis',
    '3',
    'Yvo Desmedt',
    'ygd120030',
    'Monday & Wednesday 10:00am - 11:15am',
    'ECSS 2.412',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    50,
    '25SOpen',
    'CS 3345.002',
    'Data Structures and Introduction to Algorithmic Analysis',
    '3',
    'Meghana Satpute',
    'mns086000',
    'Tuesday & Thursday 1:00pm - 2:15pm',
    'ECSS 2.311',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    51,
    '25SFull',
    'CS 3345.003',
    'Data Structures and Introduction to Algorithmic Analysis',
    '3',
    'Sridhar Alagar',
    'sxa173731',
    'Monday & Wednesday 10:00am - 11:15am',
    'ECSS 2.306',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    52,
    '25SFull',
    'CS 3345.005',
    'Data Structures and Introduction to Algorithmic Analysis',
    '3',
    'Omar Hamdy',
    'oxh210004',
    'Monday & Wednesday 8:30am - 9:45am',
    'ECSS 2.305',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    53,
    '25SOpen',
    'CS 3345.006',
    'Data Structures and Introduction to Algorithmic Analysis',
    '3',
    'Sruthi Chappidi',
    'sxc105920',
    'Monday & Wednesday 8:30am - 9:45am',
    'ECSS 2.306',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    54,
    '25SFull',
    'CS 3345.007',
    'Data Structures and Introduction to Algorithmic Analysis',
    '3',
    'Meghana Satpute',
    'mns086000',
    'Monday & Wednesday 10:00am - 11:15am',
    'JO 3.601',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    55,
    '25SOpen',
    'CS 3345.008',
    'Data Structures and Introduction to Algorithmic Analysis',
    '3',
    'Parisa Darbari',
    'dal776869',
    'Monday & Wednesday 8:30am - 9:45am',
    'ECSS 2.412',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    56,
    '25SOpen',
    'CS 3345.009',
    'Data Structures and Introduction to Algorithmic Analysis',
    '3',
    'Yi Zhao',
    'zhao',
    'Tuesday & Thursday 1:00pm - 2:15pm',
    'ECSW 1.365',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    57,
    '25SFull',
    'CS 3345.501',
    'Data Structures and Introduction to Algorithmic Analysis',
    '3',
    'Omar Hamdy',
    'oxh210004',
    'Tuesday & Thursday 5:30pm - 6:45pm',
    'ECSS 2.305',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    58,
    '25SFull',
    'CS 3345.502',
    'Data Structures and Introduction to Algorithmic Analysis',
    '3',
    'Ziaullah Khan',
    'kkhan',
    'Tuesday & Thursday 5:30pm - 6:45pm',
    'ECSS 2.410',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    59,
    '25SFull',
    'CS 3345.504',
    'Data Structures and Introduction to Algorithmic Analysis',
    '3',
    'Ziaullah Khan',
    'kkhan',
    'Monday & Wednesday 5:30pm - 6:45pm',
    'ECSS 2.415',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    60,
    '25SFull',
    'CS 3354.001',
    'Software Engineering',
    '3',
    'Tien Nguyen',
    'tnn160630',
    'Monday & Wednesday 1:00pm - 2:15pm',
    'ECSS 2.306',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    61,
    '25SFull',
    'CS 3354.002',
    'Software Engineering',
    '3',
    'Srimathi Srinivasan',
    'sxs180206',
    'Monday & Wednesday 2:30pm - 3:45pm',
    'SCI 1.210',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    62,
    '25SFull',
    'CS 3354.003',
    'Software Engineering',
    '3',
    'Ranran Feng',
    'rxf090020',
    'Monday & Wednesday 1:00pm - 2:15pm',
    'ECSW 1.355',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    63,
    '25SFull',
    'CS 3354.004',
    'Software Engineering',
    '3',
    'Ranran Feng',
    'rxf090020',
    'Monday & Wednesday 11:30am - 12:45pm',
    'ECSS 2.203',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    64,
    '25SOpen',
    'CS 3354.005',
    'Software Engineering',
    '3',
    'Priya Narayanasami',
    'pxn173330',
    'Tuesday & Thursday 10:00am - 11:15am',
    'ECSW 1.365',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    65,
    '25SOpen',
    'CS 3354.006',
    'Software Engineering',
    '3',
    'Mehra Nouroz Borazjany',
    'mxn143230',
    'Monday & Wednesday 2:30pm - 3:45pm',
    'ECSW 1.355',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    66,
    '25SOpen',
    'CS 3354.007',
    'Software Engineering',
    '3',
    'Priya Narayanasami',
    'pxn173330',
    'Tuesday & Thursday 2:30pm - 3:45pm',
    'ECSW 1.365',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    67,
    '25SOpen',
    'CS 3354.008',
    'Software Engineering',
    '3',
    'Sruthi Chappidi',
    'sxc105920',
    'Tuesday & Thursday 10:00am - 11:15am',
    'ECSW 1.355',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    68,
    '25SOpen',
    'CS 3354.010',
    'Software Engineering',
    '3',
    'Sruthi Chappidi',
    'sxc105920',
    'Tuesday & Thursday 11:30am - 12:45pm',
    'ECSS 2.203',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    69,
    '25SOpen',
    'CS 3354.hon',
    'Software Engineering  - Honors',
    '3',
    'Tien Nguyen',
    'tnn160630',
    'Tuesday & Thursday 2:30pm - 3:45pm',
    'AD 2.216',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    70,
    '25SFull',
    'CS 3377.001',
    'Systems Programming in UNIX and Other Environments',
    '3',
    'Mohamed Amine Belkoura',
    'mxb135330',
    'Monday & Wednesday 4:00pm - 5:15pm',
    'JO 4.614',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    71,
    '25SOpen',
    'CS 3377.002',
    'Systems Programming in UNIX and Other Environments',
    '3',
    'Richard Min',
    'rkm010300',
    'Tuesday & Thursday 11:30am - 12:45pm',
    'ECSW 1.365',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    72,
    '25SOpen',
    'CS 3377.003',
    'Systems Programming in UNIX and Other Environments',
    '3',
    'Sridhar Alagar',
    'sxa173731',
    'Monday & Wednesday 4:00pm - 5:15pm',
    'ECSS 2.415',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    73,
    '25SOpen',
    'CS 3377.004',
    'Systems Programming in UNIX and Other Environments',
    '3',
    'Richard Min',
    'rkm010300',
    'Tuesday & Thursday 8:30am - 9:45am',
    'ECSS 2.412',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    74,
    '25SFull',
    'CS 3377.005',
    'Systems Programming in UNIX and Other Environments',
    '3',
    'Jeyakesavan Veerasamy',
    'veerasam',
    'Tuesday & Thursday 8:30am - 9:45am',
    'ECSS 2.415',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    75,
    '25SFull',
    'CS 3377.006',
    'Systems Programming in UNIX and Other Environments',
    '3',
    'Jeyakesavan Veerasamy',
    'veerasam',
    'Tuesday & Thursday 11:30am - 12:45pm',
    'GR 2.302',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    76,
    '25SFull',
    'CS 3377.502',
    'Systems Programming in UNIX and Other Environments',
    '3',
    'Mohamed Amine Belkoura',
    'mxb135330',
    'Monday & Wednesday 5:30pm - 6:45pm',
    'JO 4.614',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    77,
    '25SFull',
    'CS 3377.5w1',
    'Systems Programming in UNIX and Other Environments',
    '3',
    'Scott Dollinger',
    'smd013000',
    'Monday & Wednesday 5:30pm - 6:45pm',
    'No Meeting Room',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    78,
    '25SFull',
    'CS 4141.101',
    'Digital Systems Laboratory  (1 Semester Credit Hour)',
    '',
    'Eric Becker',
    'ewb160130',
    '2025-02-10 Monday 1:00pm - 3:45pm',
    'ECSN 3.112',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    79,
    '25SOpen',
    'CS 4141.102',
    'Digital Systems Laboratory  (1 Semester Credit Hour)',
    '',
    'Eric Becker',
    'ewb160130',
    '2025-02-11 Tuesday 4:00pm - 6:45pm',
    'ECSN 3.112',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    80,
    '25SFull',
    'CS 4141.103',
    'Digital Systems Laboratory  (1 Semester Credit Hour)',
    '',
    'Eric Becker',
    'ewb160130',
    '2025-02-12 Wednesday 4:00pm - 6:45pm',
    'ECSN 3.112',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    81,
    '25SFull',
    'CS 4141.104',
    'Digital Systems Laboratory  (1 Semester Credit Hour)',
    '',
    'Eric Becker',
    'ewb160130',
    '2025-02-13 Thursday 4:00pm - 6:45pm',
    'ECSN 3.112',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    82,
    '25SFull',
    'CS 4141.105',
    'Digital Systems Laboratory  (1 Semester Credit Hour)',
    '',
    'Eric Becker',
    'ewb160130',
    '2025-02-14 Friday 1:00pm - 3:45pm',
    'ECSN 3.112',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    83,
    '25SFull',
    'CS 4141.106',
    'Digital Systems Laboratory  (1 Semester Credit Hour)',
    '',
    'Eric Becker',
    'ewb160130',
    '2025-02-17 Monday 1:00pm - 3:45pm',
    'ECSN 3.112',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    84,
    '25SFull',
    'CS 4141.107',
    'Digital Systems Laboratory  (1 Semester Credit Hour)',
    '',
    'Eric Becker',
    'ewb160130',
    '2025-02-18 Tuesday 4:00pm - 6:45pm',
    'ECSN 3.112',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    85,
    '25SFull',
    'CS 4141.108',
    'Digital Systems Laboratory  (1 Semester Credit Hour)',
    '',
    'Eric Becker',
    'ewb160130',
    '2025-02-19 Wednesday 4:00pm - 6:45pm',
    'ECSN 3.112',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    86,
    '25SFull',
    'CS 4141.109',
    'Digital Systems Laboratory  (1 Semester Credit Hour)',
    '',
    'Eric Becker',
    'ewb160130',
    '2025-02-20 Thursday 4:00pm - 6:45pm',
    'ECSN 3.112',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    87,
    '25SOpen',
    'CS 4141.110',
    'Digital Systems Laboratory  (1 Semester Credit Hour)',
    '',
    'Eric Becker',
    'ewb160130',
    '2025-02-21 Friday 1:00pm - 3:45pm',
    'ECSN 3.112',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    88,
    '25SFull',
    'CS 4141.111',
    'Digital Systems Laboratory  (1 Semester Credit Hour)',
    '',
    'Eric Becker',
    'ewb160130',
    '2025-02-10 Monday 4:00pm - 6:45pm',
    'ECSN 3.114',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    89,
    '25SFull',
    'CS 4141.112',
    'Digital Systems Laboratory  (1 Semester Credit Hour)',
    '',
    'Eric Becker',
    'ewb160130',
    '2025-02-11 Tuesday 4:00pm - 6:45pm',
    'ECSN 3.114',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    90,
    '25SFull',
    'CS 4141.113',
    'Digital Systems Laboratory  (1 Semester Credit Hour)',
    '',
    'Eric Becker',
    'ewb160130',
    '2025-02-12 Wednesday 4:00pm - 6:45pm',
    'ECSN 3.114',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    91,
    '25SOpen',
    'CS 4141.114',
    'Digital Systems Laboratory  (1 Semester Credit Hour)',
    '',
    'Eric Becker',
    'ewb160130',
    '2025-02-13 Thursday 4:00pm - 6:45pm',
    'ECSN 3.114',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    92,
    '25SOpen',
    'CS 4141.115',
    'Digital Systems Laboratory  (1 Semester Credit Hour)',
    '',
    'Eric Becker',
    'ewb160130',
    '2025-02-14 Friday 1:00pm - 3:45pm',
    'ECSN 3.114',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    93,
    '25SOpen',
    'CS 4141.116',
    'Digital Systems Laboratory  (1 Semester Credit Hour)',
    '',
    'Eric Becker',
    'ewb160130',
    '2025-02-19 Wednesday 4:00pm - 6:45pm',
    'ECSN 3.114',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    94,
    '25SFull',
    'CS 4141.117',
    'Digital Systems Laboratory  (1 Semester Credit Hour)',
    '',
    'Eric Becker',
    'ewb160130',
    '2025-02-20 Thursday 4:00pm - 6:45pm',
    'ECSN 3.114',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    95,
    '25SFull',
    'CS 4141.118',
    'Digital Systems Laboratory  (1 Semester Credit Hour)',
    '',
    'Eric Becker',
    'ewb160130',
    '2025-02-21 Friday 1:00pm - 3:45pm',
    'ECSN 3.114',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    96,
    '25SFull',
    'CS 4141.601',
    'Digital Systems Laboratory  (1 Semester Credit Hour)',
    '',
    'Eric Becker',
    'ewb160130',
    '2025-02-10 Monday 7:00pm - 9:45pm',
    'ECSN 3.112',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    97,
    '25SFull',
    'CS 4141.602',
    'Digital Systems Laboratory  (1 Semester Credit Hour)',
    '',
    'Eric Becker',
    'ewb160130',
    '2025-02-11 Tuesday 7:00pm - 9:45pm',
    'ECSN 3.112',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    98,
    '25SFull',
    'CS 4141.603',
    'Digital Systems Laboratory  (1 Semester Credit Hour)',
    '',
    'Eric Becker',
    'ewb160130',
    '2025-02-12 Wednesday 7:00pm - 9:45pm',
    'ECSN 3.112',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    99,
    '25SOpen',
    'CS 4141.604',
    'Digital Systems Laboratory  (1 Semester Credit Hour)',
    '',
    'Eric Becker',
    'ewb160130',
    '2025-02-13 Thursday 7:00pm - 9:45pm',
    'ECSN 3.112',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    100,
    '25SOpen',
    'CS 4141.605',
    'Digital Systems Laboratory  (1 Semester Credit Hour)',
    '',
    'Eric Becker',
    'ewb160130',
    '2025-02-14 Friday 7:00pm - 9:45pm',
    'ECSN 3.112',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    101,
    '25SFull',
    'CS 4141.606',
    'Digital Systems Laboratory  (1 Semester Credit Hour)',
    '',
    'Eric Becker',
    'ewb160130',
    '2025-02-17 Monday 7:00pm - 9:45pm',
    'ECSN 3.112',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    102,
    '25SFull',
    'CS 4141.607',
    'Digital Systems Laboratory  (1 Semester Credit Hour)',
    '',
    'Eric Becker',
    'ewb160130',
    '2025-02-18 Tuesday 7:00pm - 9:45pm',
    'ECSN 3.112',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    103,
    '25SOpen',
    'CS 4141.608',
    'Digital Systems Laboratory  (1 Semester Credit Hour)',
    '',
    'Eric Becker',
    'ewb160130',
    '2025-02-19 Wednesday 7:00pm - 9:45pm',
    'ECSN 3.112',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    104,
    '25SFull',
    'CS 4141.609',
    'Digital Systems Laboratory  (1 Semester Credit Hour)',
    '',
    'Eric Becker',
    'ewb160130',
    '2025-02-20 Thursday 7:00pm - 9:45pm',
    'ECSN 3.112',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    105,
    '25SOpen',
    'CS 4141.610',
    'Digital Systems Laboratory  (1 Semester Credit Hour)',
    '',
    'Eric Becker',
    'ewb160130',
    '2025-02-21 Friday 7:00pm - 9:45pm',
    'ECSN 3.112',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    106,
    '25SOpen',
    'CS 4141.ho1',
    'Digital Systems Laboratory  - Honors (1 Semester Credit Hour)',
    '',
    'Eric Becker',
    'ewb160130',
    '2025-02-17 Monday 1:00pm - 3:45pm',
    'ECSN 3.114',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    107,
    '25SOpen',
    'CS 4141.hon',
    'Digital Systems Laboratory  - Honors (1 Semester Credit Hour)',
    '',
    'Eric Becker',
    'ewb160130',
    '2025-02-18 Tuesday 4:00pm - 6:45pm',
    'ECSN 3.114',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    108,
    '25SOpen',
    'CS 4301.001',
    'Special Topics in Computer Science  - Combinatorial Optimization',
    '3',
    'Emily Fox',
    'kjf170230',
    'Monday & Wednesday 11:30am - 12:45pm',
    'ECSW 1.355',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    109,
    '25SOpen',
    'CS 4301.002',
    'Special Topics in Computer Science  - Adv Programming Languages',
    '3',
    'Kevin Hamlen',
    'kxh060100',
    'Tuesday & Thursday 1:00pm - 2:15pm',
    'FN 2.202',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    110,
    '25SOpen',
    'CS 4332.001',
    'Introduction to Programming Video Games',
    '3',
    'Rawan Alghofaili',
    'rxa230065',
    'Tuesday & Thursday 10:00am - 11:15am',
    'GR 2.302',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    111,
    '25SOpen',
    'CS 4334.001',
    'Numerical Analysis',
    '3',
    'Saikat Biswas',
    'sxb230137',
    'Monday & Wednesday 11:30am - 12:45pm',
    'AD 2.216',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    112,
    '25SOpen',
    'CS 4337.001',
    'Programming Language Paradigms',
    '3',
    'Yi Zhao',
    'zhao',
    'Monday & Wednesday 11:30am - 12:45pm',
    'ECSS 2.306',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    113,
    '25SFull',
    'CS 4337.002',
    'Programming Language Paradigms',
    '3',
    'Yi Zhao',
    'zhao',
    'Monday & Wednesday 2:30pm - 3:45pm',
    'GR 2.302',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    114,
    '25SOpen',
    'CS 4337.003',
    'Programming Language Paradigms',
    '3',
    'Gity Karami',
    'gxk180009',
    'Monday & Wednesday 2:30pm - 3:45pm',
    'JO 4.614',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    115,
    '25SOpen',
    'CS 4337.004',
    'Programming Language Paradigms',
    '3',
    'Jalal Omer',
    'jso016000',
    'Tuesday & Thursday 8:30am - 9:45am',
    'ECSS 2.410',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    116,
    '25SOpen',
    'CS 4337.005',
    'Programming Language Paradigms',
    '3',
    'Elmer Salazar',
    'ees101020',
    'Tuesday & Thursday 2:30pm - 3:45pm',
    'JO 3.601',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    117,
    '25SFull',
    'CS 4337.006',
    'Programming Language Paradigms',
    '3',
    'Chris Davis',
    'cid021000',
    'Monday & Wednesday 11:30am - 12:45pm',
    'GR 2.302',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    118,
    '25SFull',
    'CS 4337.007',
    'Programming Language Paradigms',
    '3',
    'Gity Karami',
    'gxk180009',
    'Tuesday & Thursday 8:30am - 9:45am',
    'GR 2.302',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    119,
    '25SOpen',
    'CS 4337.hon',
    'Programming Language Paradigms  - Honors',
    '3',
    'Chris Davis',
    'cid021000',
    'Monday & Wednesday 4:00pm - 5:15pm',
    'ECSN 2.112',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    120,
    '25SOpen',
    'CS 4341.001',
    'Digital Logic and Computer Design',
    '3',
    'Doug DeGroot
, Alice Wang',
    'dxd180020',
    'Tuesday & Thursday 1:00pm - 2:15pm',
    'ECSS 2.410',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    121,
    '25SFull',
    'CS 4341.002',
    'Digital Logic and Computer Design',
    '3',
    'Bingzhe Li',
    'bxl230006',
    'Tuesday & Thursday 10:00am - 11:15am',
    'ECSS 2.415',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    122,
    '25SFull',
    'CS 4341.003',
    'Digital Logic and Computer Design',
    '3',
    'Omar Hamdy',
    'oxh210004',
    'Monday & Wednesday 1:00pm - 2:15pm',
    'ECSS 2.412',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    123,
    '25SFull',
    'CS 4341.004',
    'Digital Logic and Computer Design',
    '3',
    'Doug DeGroot
, Gity Karami',
    'dxd180020',
    'Tuesday & Thursday 10:00am - 11:15am',
    'ECSS 2.203',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    124,
    '25SFull',
    'CS 4341.005',
    'Digital Logic and Computer Design',
    '3',
    'Gity Karami',
    'gxk180009',
    'Monday & Wednesday 1:00pm - 2:15pm',
    'ECSS 2.415',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    125,
    '25SOpen',
    'CS 4341.006',
    'Digital Logic and Computer Design',
    '3',
    'Eric Becker',
    'ewb160130',
    'Tuesday & Thursday 1:00pm - 2:15pm',
    'ECSS 2.415',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    126,
    '25SOpen',
    'CS 4341.hon',
    'Digital Logic and Computer Design  - Honors',
    '3',
    'Ebru Cankaya',
    'exc067000',
    'Monday & Wednesday 10:00am - 11:15am',
    'PHY 1.103',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    127,
    '25SFull',
    'CS 4347.001',
    'Database Systems',
    '3',
    'Jalal Omer',
    'jso016000',
    'Monday & Wednesday 4:00pm - 5:15pm',
    'ECSS 2.306',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    128,
    '25SOpen',
    'CS 4347.002',
    'Database Systems',
    '3',
    'Wei Wu',
    'wxw020100',
    'Monday & Wednesday 2:30pm - 3:45pm',
    'ECSS 2.306',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    129,
    '25SFull',
    'CS 4347.003',
    'Database Systems',
    '3',
    'Jalal Omer',
    'jso016000',
    'Tuesday & Thursday 11:30am - 12:45pm',
    'GR 2.530',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    130,
    '25SOpen',
    'CS 4347.004',
    'Database Systems',
    '3',
    'Pushpa Kumar',
    'pkumar',
    'Monday & Wednesday 4:00pm - 5:15pm',
    'ECSS 2.305',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    131,
    '25SFull',
    'CS 4347.005',
    'Database Systems',
    '3',
    'Xinda Wang',
    'xxw230005',
    'Tuesday & Thursday 11:30am - 12:45pm',
    'ECSS 2.305',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    132,
    '25SFull',
    'CS 4347.006',
    'Database Systems',
    '3',
    'Pushpa Kumar',
    'pkumar',
    'Monday & Wednesday 2:30pm - 3:45pm',
    'ECSS 2.305',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    133,
    '25SFull',
    'CS 4347.501',
    'Database Systems',
    '3',
    'Chris Davis',
    'cid021000',
    'Tuesday & Thursday 5:30pm - 6:45pm',
    'GR 2.530',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    134,
    '25SFull',
    'CS 4347.502',
    'Database Systems',
    '3',
    'Ziaullah Khan',
    'kkhan',
    'Tuesday & Thursday 7:00pm - 8:15pm',
    'ECSS 2.412',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    135,
    '25SFull',
    'CS 4348.001',
    'Operating Systems Concepts',
    '3',
    'Erik Peterson',
    'eap190004',
    'Monday & Wednesday 1:00pm - 2:15pm',
    'ECSS 2.305',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    136,
    '25SOpen',
    'CS 4348.002',
    'Operating Systems Concepts',
    '3',
    'I-Ling Yen',
    'ilyen',
    'Tuesday & Thursday 4:00pm - 5:15pm',
    'ECSW 1.365',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    137,
    '25SFull',
    'CS 4348.003',
    'Operating Systems Concepts',
    '3',
    'Elmer Salazar',
    'ees101020',
    'Tuesday & Thursday 4:00pm - 5:15pm',
    'ECSS 2.312',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    138,
    '25SOpen',
    'CS 4348.004',
    'Operating Systems Concepts',
    '3',
    'Neeraj Mittal',
    'nxm020100',
    'Monday & Wednesday 1:00pm - 2:15pm',
    'JO 4.614',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    139,
    '25SOpen',
    'CS 4348.501',
    'Operating Systems Concepts',
    '3',
    'Elmer Salazar',
    'ees101020',
    'Monday & Wednesday 5:30pm - 6:45pm',
    'ECSW 1.365',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    140,
    '25SOpen',
    'CS 4348.503',
    'Operating Systems Concepts',
    '3',
    'Jonathan Perry',
    'jjp160630',
    'Tuesday & Thursday 5:30pm - 6:45pm',
    'ECSW 1.365',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    141,
    '25SOpen',
    'CS 4349.001',
    'Advanced Algorithm Design and Analysis',
    '3',
    'James Willson',
    'jkw053000',
    'Monday & Wednesday 11:30am - 12:45pm',
    'ECSS 2.412',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    142,
    '25SOpen',
    'CS 4349.002',
    'Advanced Algorithm Design and Analysis',
    '3',
    'James Willson',
    'jkw053000',
    'Monday & Wednesday 8:30am - 9:45am',
    'ECSS 2.410',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    143,
    '25SOpen',
    'CS 4349.003',
    'Advanced Algorithm Design and Analysis',
    '3',
    'Ding Du',
    'dxd056000',
    'Tuesday & Thursday 4:00pm - 5:15pm',
    'ECSW 1.355',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    144,
    '25SFull',
    'CS 4349.004',
    'Advanced Algorithm Design and Analysis',
    '3',
    'Bhadrachalam Chitturi',
    'chalam',
    'Tuesday & Thursday 2:30pm - 3:45pm',
    'ECSS 2.412',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    145,
    '25SFull',
    'CS 4349.005',
    'Advanced Algorithm Design and Analysis',
    '3',
    'Serdar Erbatur',
    'sxe190003',
    'Tuesday & Thursday 2:30pm - 3:45pm',
    'ECSS 2.410',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    146,
    '25SOpen',
    'CS 4349.006',
    'Advanced Algorithm Design and Analysis',
    '3',
    'Bhadrachalam Chitturi',
    'chalam',
    'Tuesday & Thursday 11:30am - 12:45pm',
    'ECSS 2.306',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    147,
    '25SOpen',
    'CS 4349.007',
    'Advanced Algorithm Design and Analysis',
    '3',
    'Parisa Darbari',
    'dal776869',
    'Monday & Wednesday 4:00pm - 5:15pm',
    'ECSS 2.203',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    148,
    '25SFull',
    'CS 4352.001',
    'Introduction to Human-Computer Interaction',
    '3',
    'Erika Orrick',
    'edo042000',
    'Monday 4:00pm - 6:45pm',
    'CRA 12.110',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    149,
    '25SFull',
    'CS 4361.001',
    'Computer Graphics',
    '3',
    'Pushpa Kumar',
    'pkumar',
    'Monday & Wednesday 11:30am - 12:45pm',
    'ECSS 2.305',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    150,
    '25SOpen',
    'CS 4365.001',
    'Artificial Intelligence',
    '3',
    'Sanda Harabagiu',
    'sanda',
    'Monday & Wednesday 2:30pm - 3:45pm',
    'ECSS 2.412',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    151,
    '25SOpen',
    'CS 4365.002',
    'Artificial Intelligence',
    '3',
    'Yu Chung Ng',
    'ycn041000',
    'Monday & Wednesday 4:00pm - 5:15pm',
    'ECSW 1.355',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    152,
    '25SOpen',
    'CS 4365.003',
    'Artificial Intelligence',
    '3',
    'Vibhav Gogate',
    'vxg112130',
    'Tuesday & Thursday 8:30am - 9:45am',
    'ECSW 1.355',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    153,
    '25SOpen',
    'CS 4365.004',
    'Artificial Intelligence',
    '3',
    'Vlad Birsan',
    'vib220000',
    'Tuesday & Thursday 4:00pm - 5:15pm',
    'SLC 1.102',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    154,
    '25SOpen',
    'CS 4365.501',
    'Artificial Intelligence',
    '3',
    'Haim Schweitzer',
    'haim',
    'Tuesday & Thursday 5:30pm - 6:45pm',
    'GR 2.302',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    155,
    '25SOpen',
    'CS 4365.hon',
    'Artificial Intelligence  - Honors',
    '3',
    'Yu Chung Ng',
    'ycn041000',
    'Monday & Wednesday 5:30pm - 6:45pm',
    'ECSN 2.112',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    156,
    '25SOpen',
    'CS 4375.001',
    'Introduction to Machine Learning',
    '3',
    'Sriraam Natarajan',
    'sxn177430',
    'Tuesday & Thursday 1:00pm - 2:15pm',
    'JO 3.601',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    157,
    '25SOpen',
    'CS 4375.002',
    'Introduction to Machine Learning',
    '3',
    'Feng Chen',
    'fxc190007',
    'Monday & Wednesday 2:30pm - 3:45pm',
    'HH 2.502',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    158,
    '25SOpen',
    'CS 4375.003',
    'Introduction to Machine Learning',
    '3',
    'Rishabh Iyer',
    'rki190000',
    'Tuesday & Thursday 4:00pm - 5:15pm',
    'MC 2.410',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    159,
    '25SOpen',
    'CS 4375.004',
    'Introduction to Machine Learning',
    '3',
    'Tahrima Rahman',
    'txr110830',
    'Tuesday & Thursday 1:00pm - 2:15pm',
    'JO 4.614',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    160,
    '25SOpen',
    'CS 4375.501',
    'Introduction to Machine Learning',
    '3',
    'Erick Skorupa Parolin',
    'exs172930',
    'Tuesday & Thursday 7:00pm - 8:15pm',
    'ECSS 2.410',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    161,
    '25SOpen',
    'CS 4376.001',
    'Object-Oriented Design',
    '3',
    'Mark Paulk',
    'mcp130030',
    'Tuesday & Thursday 8:30am - 9:45am',
    'MC 2.410',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    162,
    '25SOpen',
    'CS 4376.002',
    'Object-Oriented Design',
    '3',
    'Mark Paulk',
    'mcp130030',
    'Tuesday & Thursday 4:00pm - 5:15pm',
    'ECSS 2.410',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    163,
    '25SOpen',
    'CS 4384.001',
    'Automata Theory',
    '3',
    'Bhadrachalam Chitturi',
    'chalam',
    'Tuesday & Thursday 10:00am - 11:15am',
    'ECSS 2.410',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    164,
    '25SOpen',
    'CS 4384.002',
    'Automata Theory',
    '3',
    'Simeon Ntafos',
    'ntafos',
    'Monday & Wednesday 4:00pm - 5:15pm',
    'GR 3.420',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    165,
    '25SFull',
    'CS 4384.003',
    'Automata Theory',
    '3',
    'Serdar Erbatur',
    'sxe190003',
    'Monday & Wednesday 4:00pm - 5:15pm',
    'ECSW 1.315',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    166,
    '25SFull',
    'CS 4384.004',
    'Automata Theory',
    '3',
    'Serdar Erbatur',
    'sxe190003',
    'Tuesday & Thursday 10:00am - 11:15am',
    'MC 2.410',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    167,
    '25SFull',
    'CS 4384.501',
    'Automata Theory',
    '3',
    'Zachary Stallbohm',
    'zxs110030',
    'Monday & Wednesday 5:30pm - 6:45pm',
    'GR 2.302',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    168,
    '25SOpen',
    'CS 4384.502',
    'Automata Theory',
    '3',
    'Simeon Ntafos',
    'ntafos',
    'Monday & Wednesday 5:30pm - 6:45pm',
    'GR 3.420',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    169,
    '25SOpen',
    'CS 4384.hon',
    'Automata Theory  - Honors',
    '3',
    'Dung Huynh',
    'huynh',
    'Tuesday & Thursday 1:00pm - 2:15pm',
    'AD 3.216',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    170,
    '25SOpen',
    'CS 4386.501',
    'Compiler Design',
    '3',
    'Neeraj Gupta',
    'nkg140130',
    'Tuesday & Thursday 5:30pm - 6:45pm',
    'ECSS 2.201',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    171,
    '25SOpen',
    'CS 4390.001',
    'Computer Networks',
    '3',
    'Nidhiben Solanki',
    'nxs121130',
    'Tuesday & Thursday 2:30pm - 3:45pm',
    'MC 2.410',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    172,
    '25SOpen',
    'CS 4390.002',
    'Computer Networks',
    '3',
    'Zygmunt Haas',
    'zjh130030',
    'Monday & Wednesday 1:00pm - 2:15pm',
    'HH 2.502',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    173,
    '25SFull',
    'CS 4390.003',
    'Computer Networks',
    '3',
    'Nidhiben Solanki',
    'nxs121130',
    'Tuesday & Thursday 10:00am - 11:15am',
    'ECSS 2.201',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    174,
    '25SOpen',
    'CS 4390.004',
    'Computer Networks',
    '3',
    'Yi Ding',
    'yxd230004',
    'Tuesday & Thursday 11:30am - 12:45pm',
    'CR 1.202',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    175,
    '25SOpen',
    'CS 4390.005',
    'Computer Networks',
    '3',
    'Zygmunt Haas',
    'zjh130030',
    'Monday & Wednesday 10:00am - 11:15am',
    'ECSS 2.305',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    176,
    '25SOpen',
    'CS 4391.002',
    'Introduction to Computer Vision',
    '3',
    'Ranran Feng',
    'rxf090020',
    'Monday & Wednesday 10:00am - 11:15am',
    'ECSS 2.203',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    177,
    '25SOpen',
    'CS 4393.001',
    'Computer and Network Security',
    '3',
    'Nhut Nguyen',
    'nhutnn',
    'Tuesday & Thursday 1:00pm - 2:15pm',
    'FO 2.208',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    178,
    '25SOpen',
    'CS 4395.002',
    'Human Language Technologies',
    '3',
    'Xinya Du',
    'xxd220001',
    'Monday & Wednesday 11:30am - 12:45pm',
    'ECSW 1.315',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    179,
    '25SOpen',
    'CS 4396.001',
    'Networking Laboratory',
    '3',
    'Kamil Sarac',
    'kxs028100',
    'Friday 10:00am - 12:45pm',
    'ECSW 1.355',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    180,
    '25SOpen',
    'CS 4459.001',
    'Cyber Attack and Defense Laboratory  (4 Credits)',
    '',
    'Kangkook Jee',
    'kxj190011',
    'Tuesday & Thursday 4:00pm - 6:15pm',
    'ECSS 2.311',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    181,
    '25SOpen',
    'CS 4475.001',
    'Capstone Project  (4 Credits)',
    '',
    'Kemelli Estacio-Hiroms',
    'kxe160930',
    'Friday 8:30am - 11:15am',
    'AD 2.232',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    182,
    '25SOpen',
    'CS 4485.0w1',
    'Computer Science Project  (4 Credits)',
    '',
    'Miguel Razo Razo
, John Cole
, Sridhar Alagar
, Raed Salih
, Eric Becker
, Selim Sarac
, Aditya Srivastava
, Muhammad Ikram',
    'mrazora',
    'Tuesday 1:00pm - 2:15pm',
    'No Meeting Room',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    183,
    '25SOpen',
    'CS 4v98.001',
    'Undergraduate Research in Computer Science  (1-9 Credits)',
    '',
    'Yapeng Tian',
    'yxt220013',
    'Friday 4:00pm - 6:45pm',
    'CB 1.106',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    184,
    '25SOpen',
    'CS 4v98.054',
    'Undergraduate Research in Computer Science  - Design of Robotics Systems (1-9 Credits)',
    '',
    'Yonas Tadesse',
    'ytt110030',
    'Research',
    '',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    185,
    '25SOpen',
    'CS 4v98.094',
    'Undergraduate Research in Computer Science  - Al and Machine Learning Rsrch (1-9 Credits)',
    '',
    'Yu Chung Ng',
    'ycn041000',
    'Research',
    '',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    186,
    '25SOpen',
    'CS 4v98.095',
    'Undergraduate Research in Computer Science  - Rsrch on Software Traceability (1-9 Credits)',
    '',
    '-Staff-',
    '',
    'Research',
    '',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    187,
    '25SOpen',
    'CS 5333.001',
    'Discrete Structures',
    '3',
    'Jorge Cobb',
    'jcobb',
    'Tuesday & Thursday 2:30pm - 3:45pm',
    'AD 3.216',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    188,
    '25SOpen',
    'CS 5343.001',
    'Algorithm Analysis and Data Structures',
    '3',
    'Neeraj Gupta',
    'nkg140130',
    'Tuesday & Thursday 4:00pm - 5:15pm',
    'JO 3.601',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    189,
    '25SOpen',
    'CS 5348.004',
    'Operating Systems Concepts',
    '3',
    'Neeraj Mittal',
    'nxm020100',
    'Monday & Wednesday 1:00pm - 2:15pm',
    'JO 4.614',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    190,
    '25SOpen',
    'CS 5349.003',
    'Automata Theory',
    '3',
    'Serdar Erbatur',
    'sxe190003',
    'Monday & Wednesday 4:00pm - 5:15pm',
    'ECSW 1.315',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    191,
    '25SOpen',
    'CS 5390.003',
    'Computer Networks',
    '3',
    'Nidhiben Solanki',
    'nxs121130',
    'Tuesday & Thursday 10:00am - 11:15am',
    'ECSS 2.201',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    192,
    '25SFull',
    'CS 5v81.001',
    'Special Topics in Computer Science  - Sfs Seminar (1 Semester Credit Hour)',
    '',
    'Kamil Sarac',
    'kxs028100',
    'Saturday 10:00am - 12:45pm',
    'ECSN 2.112',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    193,
    '25SOpen',
    'CS 6301.001',
    'Special Topics in Computer Science  - Quantum Computing',
    '3',
    'Andrew Nemec',
    'dal957114',
    'Monday & Wednesday 4:00pm - 5:15pm',
    'HH 2.502',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    194,
    '25SOpen',
    'CS 6304.001',
    'Computer Architecture',
    '3',
    'Hossein Pedram',
    'hxp220048',
    'Monday & Wednesday 11:30am - 12:45pm',
    'GR 3.606',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    195,
    '25SOpen',
    'CS 6305.501',
    'Data Security and Privacy for Practitioners',
    '3',
    'Ebru Cankaya',
    'exc067000',
    'Monday 5:30pm - 8:15pm',
    'ECSS 2.201',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    196,
    '25SOpen',
    'CS 6307.501',
    'Introduction to Big Data Management and Analytics for non CS-Majors',
    '3',
    'Anurag Nagar',
    'axn112530',
    'Monday & Wednesday 5:30pm - 6:45pm',
    'AD 3.216',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    197,
    '25SOpen',
    'CS 6308.501',
    'Cyber Physical Systems and Critical Infrastructure Security for Practitioners',
    '3',
    'Brian Ricks',
    'bwr031000',
    'Monday & Wednesday 5:30pm - 6:45pm',
    'CR 1.202',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    198,
    '25SOpen',
    'CS 6313.001',
    'Statistical Methods for Data Science',
    '3',
    'Xiwei Tang',
    'dal295425',
    'Tuesday & Thursday 10:00am - 11:15am',
    'ECSS 2.305',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    199,
    '25SOpen',
    'CS 6314.501',
    'Web Programming Languages',
    '3',
    'Richard Min',
    'rkm010300',
    'Tuesday & Thursday 5:30pm - 6:45pm',
    'ECSS 2.412',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    200,
    '25SOpen',
    'CS 6319.001',
    'Computational Geometry',
    '3',
    'Benjamin Raichel',
    'bar150630',
    'Tuesday & Thursday 11:30am - 12:45pm',
    'ECSN 2.112',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    201,
    '25SOpen',
    'CS 6320.001',
    'Natural Language Processing',
    '3',
    'Tatiana Erekhinskaya',
    'txe110230',
    'Tuesday & Thursday 2:30pm - 3:45pm',
    'ECSW 1.315',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    202,
    '25SFull',
    'CS 6320.002',
    'Natural Language Processing',
    '3',
    'Zhiyu Chen',
    'zxc230011',
    'Monday & Wednesday 2:30pm - 3:45pm',
    'AD 3.216',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    203,
    '25SOpen',
    'CS 6322.001',
    'Information Retrieval',
    '3',
    'Sanda Harabagiu',
    'sanda',
    'Monday & Wednesday 4:00pm - 5:15pm',
    'ECSS 2.311',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    204,
    '25SFull',
    'CS 6324.001',
    'Information Security',
    '3',
    'Chung Hwan Kim',
    'cxk200010',
    'Monday & Wednesday 4:00pm - 5:15pm',
    'GR 2.530',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    205,
    '25SOpen',
    'CS 6334.001',
    'Virtual Reality',
    '3',
    'Jin Ryong Kim',
    'jrk200002',
    'Monday & Wednesday 11:30am - 12:45pm',
    'JO 3.601',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    206,
    '25SFull',
    'CS 6347.001',
    'Statistical Methods in AI and Machine Learning',
    '3',
    'Nicholas Ruozzi',
    'nrr150130',
    'Tuesday & Thursday 10:00am - 11:15am',
    'GR 2.530',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    207,
    '25SOpen',
    'CS 6348.001',
    'Data and Applications Security',
    '3',
    'Ebru Cankaya',
    'exc067000',
    'Monday & Wednesday 2:30pm - 3:45pm',
    'ECSS 2.410',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    208,
    '25SFull',
    'CS 6349.501',
    'Network Security',
    '3',
    'Shuang Hao',
    'sxh178730',
    'Monday & Friday 5:30pm - 6:45pm',
    'SCI 1.210',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    209,
    '25SOpen',
    'CS 6350.001',
    'Big Data Management and Analytics',
    '3',
    'Anurag Nagar',
    'axn112530',
    'Monday & Wednesday 11:30am - 12:45pm',
    'ECSS 2.415',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    210,
    '25SOpen',
    'CS 6350.002',
    'Big Data Management and Analytics',
    '3',
    'Anurag Nagar',
    'axn112530',
    'Tuesday & Thursday 4:00pm - 5:15pm',
    'ECSS 2.415',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    211,
    '25SOpen',
    'CS 6352.001',
    'Performance of Computer Systems and Networks',
    '3',
    'Jason Jue',
    'jjue',
    'Tuesday & Thursday 10:00am - 11:15am',
    'ECSS 3.910',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    212,
    '25SOpen',
    'CS 6353.001',
    'Compiler Construction',
    '3',
    'Shiyi Wei',
    'sxw174630',
    'Monday & Wednesday 10:00am - 11:15am',
    'FN 2.214',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    213,
    '25SOpen',
    'CS 6356.001',
    'Software Maintenance  Evolution  and Re-Engineering',
    '3',
    'Shiyi Wei',
    'sxw174630',
    'Monday & Wednesday 8:30am - 9:45am',
    'ECSS 2.203',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    214,
    '25SOpen',
    'CS 6359.001',
    'Object-Oriented Analysis and Design',
    '3',
    'Rym Zalila-Wenkstern',
    'rmili',
    'Tuesday & Thursday 4:00pm - 5:15pm',
    'ECSS 2.201',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    215,
    '25SFull',
    'CS 6360.002',
    'Database Design',
    '3',
    'Wei Wu',
    'wxw020100',
    'Monday & Wednesday 1:00pm - 2:15pm',
    'JO 3.601',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    216,
    '25SOpen',
    'CS 6361.001',
    'Advanced Requirements Engineering',
    '3',
    'Lawrence Chung',
    'chung',
    'Tuesday & Thursday 11:30am - 12:45pm',
    'ECSS 2.312',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    217,
    '25SFull',
    'CS 6363.001',
    'Design and Analysis of Computer Algorithms',
    '3',
    'Dung Huynh',
    'huynh',
    'Tuesday & Thursday 10:00am - 11:15am',
    'ECSS 2.311',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    218,
    '25SOpen',
    'CS 6363.501',
    'Design and Analysis of Computer Algorithms',
    '3',
    'Sergey Bereg',
    'sxb027100',
    'Monday & Wednesday 5:30pm - 6:45pm',
    'ECSS 2.203',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    219,
    '25SOpen',
    'CS 6363.502',
    'Design and Analysis of Computer Algorithms',
    '3',
    'Ding Du',
    'dxd056000',
    'Tuesday & Thursday 5:30pm - 6:45pm',
    'ECSS 2.203',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    220,
    '25SOpen',
    'CS 6364.001',
    'Artificial Intelligence',
    '3',
    'Haim Schweitzer',
    'haim',
    'Tuesday & Thursday 4:00pm - 5:15pm',
    'GR 3.420',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    221,
    '25SOpen',
    'CS 6366.001',
    'Computer Graphics',
    '3',
    'Xiaohu Guo',
    'xxg061000',
    'Monday & Wednesday 10:00am - 11:15am',
    'CR 1.202',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    222,
    '25SOpen',
    'CS 6367.001',
    'Software Testing  Validation and Verification',
    '3',
    'Mehra Nouroz Borazjany',
    'mxn143230',
    'Tuesday & Thursday 2:30pm - 3:45pm',
    'ECSS 2.306',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    223,
    '25SOpen',
    'CS 6371.002',
    'Advanced Programming Languages  - Adv Programming Languages',
    '3',
    'Kevin Hamlen',
    'kxh060100',
    'Tuesday & Thursday 1:00pm - 2:15pm',
    'FN 2.202',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    224,
    '25SOpen',
    'CS 6375.001',
    'Machine Learning',
    '3',
    'Wei Yang',
    'wxy180002',
    'Monday & Wednesday 2:30pm - 3:45pm',
    'ECSW 1.365',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    225,
    '25SOpen',
    'CS 6375.002',
    'Machine Learning',
    '3',
    'Crystal Maung',
    'ktm016100',
    'Saturday 11:00am - 1:45pm',
    'ECSS 2.410',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    226,
    '25SOpen',
    'CS 6378.001',
    'Advanced Operating Systems',
    '3',
    'Ravi Prakash',
    'ravip',
    'Tuesday & Thursday 8:30am - 9:45am',
    'GR 2.530',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    227,
    '25SOpen',
    'CS 6384.001',
    'Computer Vision',
    '3',
    'Yapeng Tian',
    'yxt220013',
    'Tuesday & Thursday 11:30am - 12:45pm',
    'ECSS 2.410',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    228,
    '25SOpen',
    'CS 6384.003',
    'Computer Vision',
    '3',
    'Yunhui Guo',
    'yxg220013',
    'Tuesday & Thursday 11:30am - 12:45pm',
    'ECSS 3.910',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    229,
    '25SOpen',
    'CS 6396.001',
    'Real-Time Systems',
    '3',
    'Farokh Bastani',
    'bastani',
    'Tuesday & Thursday 10:00am - 11:15am',
    'SLC 1.204',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    230,
    '25SOpen',
    'CS 6v81.082',
    'Independent Study in Computer Science  (1-9 Credits)',
    '',
    'Jin Ryong Kim',
    'jrk200002',
    'Independent Study',
    '',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    231,
    '25SOpen',
    'CS 6v81.099',
    'Independent Study in Computer Science  (1-9 Credits)',
    '',
    'Chung Hwan Kim',
    'cxk200010',
    'Independent Study',
    '',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    232,
    '25SOpen',
    'CS 6v98.099',
    'Thesis  (3-9 Credits)',
    '',
    'Chung Hwan Kim',
    'cxk200010',
    'Master''s Thesis',
    '',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    233,
    '25SOpen',
    'CS 7301.001',
    'Recent Advances in Computing  - Recent Advances in Networking',
    '3',
    'Ravi Prakash',
    'ravip',
    'Tuesday & Thursday 1:00pm - 2:15pm',
    'AD 2.232',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    234,
    '25SOpen',
    'CS 7301.501',
    'Recent Advances in Computing  - Trustworthy Ai and Application',
    '3',
    'Latifur Khan',
    'lkhan',
    'Tuesday & Thursday 5:30pm - 6:45pm',
    'CR 1.202',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);

INSERT INTO course1 (id, semester, course_num_section, title, credit_hours, instructor, instructor_netid, date_time, location, time_created, time_updated)
VALUES (
    235,
    '25SOpen',
    'CS 8v99.059',
    'Dissertation  (1-9 Credits)',
    '',
    'Yu Xiang',
    'yxx210005',
    'Dissertation',
    '',
    '2025-03-17 01:55:40',
    '2025-03-17 01:55:40'
);