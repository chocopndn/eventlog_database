USE eventlog;
INSERT INTO roles (name)
VALUES ('Student'),
    ('Officer'),
    ('Admin'),
    ('Super Admin');
INSERT INTO departments (name, code)
VALUES ('College of Information Technology', 'CIT'),
    ('College of Maritime Education', 'CME'),
    (
        'School of Business Administration and Governance',
        'SBAG'
    ),
    ('College of Criminal Justice Education', 'CCJE'),
    ('College of Engineering', 'COE'),
    ('College of Technology', 'COT'),
    (
        'School of Liberal Arts & Teacher Education',
        'SLATE'
    ),
    ('College of Hospitality Management', 'CHM'),
    ('College of Health', 'COH'),
    ('College of Law', 'COL');
INSERT INTO year_levels (name)
VALUES ('1st Year'),
    ('2nd Year'),
    ('3rd Year'),
    ('4th Year');
INSERT INTO courses (name, department_id)
VALUES ('BSIT', 1),
    ('AB PolSci', 7),
    ('BEEd Pre-School', 7),
    ('BSEd English', 7),
    ('BSEd Filipino', 7),
    ('BSEd SocStud', 7),
    ('BSEd Math', 7),
    ('BPEd', 7),
    ('BSPA', 7),
    ('BSSW', 7),
    ('BSBA FinMan', 3),
    ('BSBA HRM', 3),
    ('BSBA MktgMan', 3),
    ('BSHRM', 8),
    ('BSCrim', 4),
    ('BSCrim ETEEAP', 4),
    ('BSEE', 5),
    ('BSME', 5),
    ('BSCpE', 5),
    ('BSET', 6),
    ('BSElTech', 6),
    ('BSIndTech Auto', 6),
    ('AutoServ NCII', 6),
    ('BSN', 9),
    ('BSM', 9),
    ('DipMid', 9),
    ('BSMarE', 2),
    ('BSMT', 2);
INSERT INTO blocks (name, year_level_id, course_id, department_id)
VALUES ('CFP B-38', 1, 1, 1),
    ('CFP B-39', 1, 1, 1),
    ('CFP B-47', 1, 1, 1),
    ('CFP B-48', 1, 1, 1),
    ('CFP B-50', 1, 1, 1),
    ('CFP B-51', 1, 1, 1),
    ('2A', 2, 1, 1),
    ('2A NON', 2, 1, 1),
    ('2B NON', 2, 1, 1),
    ('2C NON', 2, 1, 1),
    ('3A', 3, 1, 1),
    ('3A NON', 3, 1, 1),
    ('3B NON', 3, 1, 1),
    ('4A', 4, 1, 1),
    ('4A NON', 4, 1, 1),
    ('4B NON', 4, 1, 1);
INSERT INTO admins (
        id_number,
        role_id,
        department_id,
        last_name,
        first_name,
        middle_name,
        suffix
    )
VALUES (100, 3, 1, 'Macquiao', 'Panny', 'Dacman', NULL),
    (200, 4, 1, 'Jeid', 'Rames', 'Ewan', NULL);
INSERT INTO users (
        id_number,
        role_id,
        block_id,
        last_name,
        first_name,
        middle_name,
        suffix
    )
VALUES (
        19015236,
        1,
        12,
        'Mina',
        'Dhanrev',
        'Santos',
        NULL
    ),
    (24819345, 1, 1, 'Garcia', 'Juan', 'Santos', NULL),
    (23829567, 1, 7, 'Reyes', 'Maria', 'Lopez', 'Jr.'),
    (
        22841758,
        2,
        11,
        'Cruz',
        'Pedro',
        'Domingo',
        NULL
    ),
    (
        21862749,
        1,
        14,
        'Delos Santos',
        'Ana',
        'Rivera',
        NULL
    ),
    (
        24813579,
        1,
        2,
        'Torres',
        'Luis',
        'Pascual',
        'Sr.'
    ),
    (
        23828467,
        2,
        8,
        'Mendoza',
        'Isabel',
        'Ramos',
        NULL
    ),
    (
        22845239,
        1,
        12,
        'Santos',
        'Miguel',
        'Fernandez',
        NULL
    ),
    (
        21839475,
        1,
        15,
        'Ponce',
        'Elena',
        'Rosales',
        'III'
    ),
    (
        19837564,
        2,
        3,
        'Dela Cruz',
        'Joshua',
        'Torralba',
        NULL
    ),
    (
        20826431,
        1,
        9,
        'Flores',
        'Catherine',
        'Mercado',
        NULL
    ),
    (
        24869573,
        1,
        13,
        'Ramos',
        'Rafael',
        'Santos',
        NULL
    ),
    (
        23849672,
        2,
        16,
        'Navarro',
        'Josefina',
        'Gomez',
        'IV'
    ),
    (
        22853874,
        1,
        4,
        'Agustin',
        'Henry',
        'Francisco',
        NULL
    ),
    (
        21827596,
        1,
        10,
        'Villanueva',
        'Carmela',
        'Reyes',
        NULL
    ),
    (
        24839417,
        2,
        11,
        'Diaz',
        'Francisco',
        'Santiago',
        NULL
    ),
    (
        23819425,
        1,
        14,
        'Alvarez',
        'Sofia',
        'Montez',
        NULL
    ),
    (
        22839584,
        1,
        5,
        'Martinez',
        'Leon',
        'Vargas',
        NULL
    ),
    (
        21827495,
        2,
        8,
        'Gonzales',
        'Clarissa',
        'Ocampo',
        NULL
    ),
    (
        19849632,
        1,
        12,
        'Perez',
        'Joel',
        'Nolasco',
        'Jr.'
    ),
    (
        20847592,
        1,
        15,
        'Bautista',
        'Laura',
        'Salazar',
        NULL
    ),
    (
        24812735,
        1,
        6,
        'Garcia',
        'Miguel',
        'Torres',
        NULL
    ),
    (
        23894176,
        2,
        7,
        'Reyes',
        'Angela',
        'Martinez',
        NULL
    ),
    (22838592, 1, 13, 'Cruz', 'Samuel', 'Lopez', NULL),
    (
        21846795,
        1,
        2,
        'Delos Santos',
        'Victor',
        'Rivera',
        NULL
    ),
    (24862974, 1, 9, 'Torres', 'Bea', 'Santos', 'Sr.'),
    (23839418, 2, 4, 'Mendoza', 'Lily', 'Gomez', NULL),
    (
        22873925,
        1,
        14,
        'Santos',
        'Oliver',
        'Villanueva',
        NULL
    ),
    (21827594, 1, 1, 'Ponce', 'Sophia', 'Diaz', NULL),
    (
        19839415,
        2,
        3,
        'Dela Cruz',
        'Julian',
        'Alvarez',
        NULL
    ),
    (
        20839573,
        1,
        11,
        'Flores',
        'Camille',
        'Perez',
        NULL
    ),
    (
        24827481,
        1,
        15,
        'Ramos',
        'Christian',
        'Bautista',
        NULL
    ),
    (
        23817495,
        2,
        5,
        'Navarro',
        'Jessica',
        'Ramos',
        NULL
    ),
    (
        22848392,
        1,
        6,
        'Agustin',
        'Henry',
        'Navarro',
        NULL
    ),
    (
        21838594,
        1,
        7,
        'Villanueva',
        'Celia',
        'Torres',
        NULL
    ),
    (
        24837592,
        2,
        8,
        'Diaz',
        'Lester',
        'Mendoza',
        NULL
    ),
    (
        23849674,
        1,
        16,
        'Alvarez',
        'Sophia',
        'Bautista',
        NULL
    ),
    (
        22848673,
        1,
        14,
        'Martinez',
        'Mark',
        'Cruz',
        NULL
    ),
    (
        21849581,
        2,
        11,
        'Gonzales',
        'Nina',
        'Villanueva',
        NULL
    ),
    (
        19848725,
        1,
        10,
        'Perez',
        'Joel',
        'Nolasco',
        NULL
    ),
    (
        20827496,
        1,
        12,
        'Bautista',
        'Laura',
        'Rosales',
        NULL
    ),
    (
        24839572,
        1,
        15,
        'Garcia',
        'Anna',
        'Fernandez',
        NULL
    ),
    (
        23817594,
        2,
        5,
        'Reyes',
        'Victor',
        'Francisco',
        NULL
    ),
    (
        22839574,
        1,
        7,
        'Cruz',
        'Samantha',
        'Santos',
        NULL
    ),
    (
        21849584,
        1,
        13,
        'Delos Santos',
        'George',
        'Lopez',
        NULL
    ),
    (
        24849375,
        1,
        14,
        'Torres',
        'Lucy',
        'Domingo',
        NULL
    ),
    (
        23829475,
        2,
        8,
        'Mendoza',
        'Albert',
        'Reyes',
        NULL
    );
INSERT INTO event_names (name)
VALUES ('UCV 76th Foundation Week'),
    ('IT Day'),
    ('Programming Bootcamp'),
    ('Database Management Workshop'),
    ('AI and Machine Learning Seminar'),
    ('Web Development Week'),
    ('Cybersecurity Awareness Campaign'),
    ('Coding Hackathon'),
    ('Tech Talk: Future of IT'),
    ('Game Development Jam');
INSERT INTO events (
        event_name_id,
        venue,
        description,
        scan_personnel,
        status,
        created_by
    )
VALUES (
        1,
        'UCV Gymnasium',
        'Celebrating the 76th Foundation Week of UCV.',
        'Year Level Representatives, Governor, or Year Level Advisers',
        'Pending',
        '100'
    ),
    (
        2,
        'UCV Gymnasium',
        'A special IT Day event featuring guest speakers.',
        'Year Level Representatives, Governor, or Year Level Advisers',
        'Pending',
        '100'
    ),
    (
        3,
        'UCV Gymnasium',
        'Hands-on Programming Bootcamp for all skill levels.',
        'Year Level Representatives, Governor, or Year Level Advisers',
        'Pending',
        '100'
    ),
    (
        4,
        'UCV Gymnasium',
        'Learn about Database Management best practices.',
        'Year Level Representatives, Governor, or Year Level Advisers',
        'Pending',
        '100'
    ),
    (
        5,
        'UCV Gymnasium',
        'Explore AI and Machine Learning innovations.',
        'Year Level Representatives, Governor, or Year Level Advisers',
        'Pending',
        '100'
    ),
    (
        6,
        'UCV Gymnasium',
        'A full week dedicated to Web Development workshops.',
        'Year Level Representatives, Governor, or Year Level Advisers',
        'Pending',
        '100'
    ),
    (
        7,
        'UCV Gymnasium',
        'Raising awareness about Cybersecurity and online safety.',
        'Year Level Representatives, Governor, or Year Level Advisers',
        'Pending',
        '100'
    ),
    (
        8,
        'UCV Gymnasium',
        'Join a competitive Coding Hackathon with exciting prizes.',
        'Year Level Representatives, Governor, or Year Level Advisers',
        'Pending',
        '100'
    ),
    (
        9,
        'UCV Gymnasium',
        'Tech experts discuss the Future of IT in this Tech Talk.',
        'Year Level Representatives, Governor, or Year Level Advisers',
        'Pending',
        '100'
    ),
    (
        10,
        'UCV Gymnasium',
        'Game Development Jam: Build and showcase your own game.',
        'Year Level Representatives, Governor, or Year Level Advisers',
        'Pending',
        '100'
    );
INSERT INTO event_dates (
        event_id,
        event_date,
        am_in,
        am_out,
        pm_in,
        pm_out,
        duration
    )
VALUES (
        1,
        '2025-02-10',
        '07:00:00',
        '11:00:00',
        '13:00:00',
        '17:00:00',
        '30'
    ),
    (
        1,
        '2025-02-11',
        '07:00:00',
        '11:00:00',
        '13:00:00',
        '17:00:00',
        '30'
    ),
    (
        2,
        '2025-03-15',
        '07:00:00',
        '11:00:00',
        '13:00:00',
        '17:00:00',
        '30'
    ),
    (
        3,
        '2025-04-05',
        '07:00:00',
        '11:00:00',
        '13:00:00',
        '17:00:00',
        '30'
    ),
    (
        4,
        '2025-04-20',
        '07:00:00',
        '11:00:00',
        '13:00:00',
        '17:00:00',
        '30'
    ),
    (
        5,
        '2025-05-10',
        '07:00:00',
        '11:00:00',
        '13:00:00',
        '17:00:00',
        '30'
    ),
    (
        6,
        '2025-06-15',
        '07:00:00',
        '11:00:00',
        '13:00:00',
        '17:00:00',
        '30'
    ),
    (
        6,
        '2025-06-16',
        '07:00:00',
        '11:00:00',
        '13:00:00',
        '17:00:00',
        '30'
    ),
    (
        7,
        '2025-07-10',
        '07:00:00',
        '11:00:00',
        '13:00:00',
        '17:00:00',
        '30'
    ),
    (
        8,
        '2025-08-05',
        '07:00:00',
        '11:00:00',
        '13:00:00',
        '17:00:00',
        '30'
    ),
    (
        9,
        '2025-09-18',
        '07:00:00',
        '11:00:00',
        '13:00:00',
        '17:00:00',
        '30'
    ),
    (
        10,
        '2025-10-22',
        '07:00:00',
        '11:00:00',
        '13:00:00',
        '17:00:00',
        '30'
    ),
    (
        10,
        '2025-10-23',
        '07:00:00',
        '11:00:00',
        '13:00:00',
        '17:00:00',
        '30'
    );
INSERT INTO event_blocks (event_id, block_id)
VALUES (1, 12),
    (2, NULL),
    (3, 2),
    (4, 3),
    (5, 4),
    (6, 5),
    (7, 6),
    (8, 7),
    (9, 8),
    (10, 9),
    (10, 12),
    (7, 12);