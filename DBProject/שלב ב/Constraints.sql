
--עדכון טבלת העובדים- הוספת עמודת יום הולדת של עובד
ALTER TABLE EMPLOYEE ADD COLUMN birth_date DATE;

UPDATE EMPLOYEE SET birth_date = '1990-12-15' WHERE employee_id % 10 = 0;
UPDATE EMPLOYEE SET birth_date = '1995-05-20' WHERE employee_id % 10 != 0;

-- עדכון טבלת משרד- הוספת עמודת מיקום למשרד
ALTER TABLE OFFICE ADD COLUMN office_location VARCHAR(255);

UPDATE OFFICE
SET office_location = 'North Wing - Level 2'
WHERE department_id = (SELECT department_id FROM DEPARTMENT WHERE dept_name = 'Veterinary Services');

-------- אילוצים לוגיים --------

-- אילוץ 1: שכר מינימום של 5,000 ש"ח
ALTER TABLE EMPLOYEE_CONTRACT 
ADD CONSTRAINT chk_min_salary CHECK (salary >= 5000);

-- אילוץ 2: תאריך ברירת מחדל לחוזה חדש
ALTER TABLE EMPLOYEE_CONTRACT 
ALTER COLUMN Start_Date SET DEFAULT CURRENT_DATE;

-- אילוץ 3: מניעת כפל שיבוץ של עובד לאותה משמרת
ALTER TABLE SHIFT_ASSIGNMENT 
ADD CONSTRAINT unique_assignment UNIQUE (employee_id, shift_id, Work_Date);

--כאן גילינו הפרה.
--
--מחיקת הכפילויות (השארת רק שורה אחת מכל כפילות):
DELETE FROM SHIFT_ASSIGNMENT
WHERE assignment_id NOT IN (
    SELECT MIN(assignment_id)
    FROM SHIFT_ASSIGNMENT
    GROUP BY employee_id, shift_id, Work_Date
);


-------- ניסיון הרצה נגד תנאי 2--------

-- ניסיון פריצה: הכנסת שכר נמוך מהמינימום (5000)
INSERT INTO EMPLOYEE_CONTRACT (contract_id, Start_Date, salary)
VALUES (9999, '2026-01-01', 2000);