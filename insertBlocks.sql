INSERT INTO Block (blockName, yearlevel_ID) VALUES
-- 1st Year
('BSIT CFP B-38', (SELECT yearlevel_ID FROM YearLevel WHERE yearLevel = '1st Year')),
('BSIT CFP B-39', (SELECT yearlevel_ID FROM YearLevel WHERE yearLevel = '1st Year')),
('BSIT CFP B-47', (SELECT yearlevel_ID FROM YearLevel WHERE yearLevel = '1st Year')),
('BSIT CFP B-48', (SELECT yearlevel_ID FROM YearLevel WHERE yearLevel = '1st Year')),
('BSIT CFP B-50', (SELECT yearlevel_ID FROM YearLevel WHERE yearLevel = '1st Year')),
('BSIT CFP B-51', (SELECT yearlevel_ID FROM YearLevel WHERE yearLevel = '1st Year')),
-- 2nd Year
('BSIT 2A', (SELECT yearlevel_ID FROM YearLevel WHERE yearLevel = '2nd Year')),
('BSIT 2A NON', (SELECT yearlevel_ID FROM YearLevel WHERE yearLevel = '2nd Year')),
('BSIT 2B NON', (SELECT yearlevel_ID FROM YearLevel WHERE yearLevel = '2nd Year')),
('BSIT 2C NON', (SELECT yearlevel_ID FROM YearLevel WHERE yearLevel = '2nd Year')),
-- 3rd Year
('BSIT 3A', (SELECT yearlevel_ID FROM YearLevel WHERE yearLevel = '3rd Year')),
('BSIT 3A NON', (SELECT yearlevel_ID FROM YearLevel WHERE yearLevel = '3rd Year')),
('BSIT 3B NON', (SELECT yearlevel_ID FROM YearLevel WHERE yearLevel = '3rd Year')),
-- 4th Year
('BSIT 4A', (SELECT yearlevel_ID FROM YearLevel WHERE yearLevel = '4th Year')),
('BSIT 4A NON', (SELECT yearlevel_ID FROM YearLevel WHERE yearLevel = '4th Year')),
('BSIT 4B NON', (SELECT yearlevel_ID FROM YearLevel WHERE yearLevel = '4th Year'));
