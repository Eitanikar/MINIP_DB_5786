
------ 8 SELECT QUERIES (4 OPTIMIZED) ------

------ Query 1 ------
-- שאילתה 1: עובדים המרוויחים מעל הממוצע המחלקתי
-- המטרה: זיהוי חריגות שכר עבור מנהל משאבי אנוש (במסך "סקירת מחלקות").
-- המורכבות: חיבור 3 טבלאות (JOIN) ושימוש בפונקציות אגרגטיביות (AVG).

-- גרסה 1: Correlated Subquery
-- הסבר ליעילות: פחות יעילה בבסיסי נתונים גדולים כי היא מתבצעת שוב ושוב לכל רשומה (O(n^2)).
SELECT 
    e.first_name || ' ' || e.last_name AS full_name,
    d.dept_name,
    ec.salary
FROM EMPLOYEE e
JOIN DEPARTMENT d ON e.department_id = d.department_id
JOIN EMPLOYEE_CONTRACT ec ON e.contract_id = ec.contract_id
WHERE ec.salary > (
    SELECT AVG(ec2.salary)
    FROM EMPLOYEE e2
    JOIN EMPLOYEE_CONTRACT ec2 ON e2.contract_id = ec2.contract_id
    WHERE e2.department_id = e.department_id
)
ORDER BY ec.salary DESC;

-- גרסה 2: Window Function (AVG OVER)
-- הסבר ליעילות: יעילה מאוד (O(n)) כי הנתונים נסרקים פעם אחת והחישוב מתבצע בזיכרון ה-Buffer.
SELECT full_name, dept_name, salary
FROM (
    SELECT 
        e.first_name || ' ' || e.last_name AS full_name,
        d.dept_name,
        ec.salary,
        AVG(ec.salary) OVER(PARTITION BY e.department_id) as dept_avg
    FROM EMPLOYEE e
    JOIN DEPARTMENT d ON e.department_id = d.department_id
    JOIN EMPLOYEE_CONTRACT ec ON e.contract_id = ec.contract_id
) AS sub_query
WHERE salary > dept_avg
ORDER BY salary DESC;

------ Query 2 ------
-- שאילתה 2: איתור עובדים פנויים לשיבוץ (כפולה)
-- המטרה: עזרה למנהל משמרת למצוא עובד שיכול להחליף מישהו שחלה בתאריך ספציפי.
-- המורכבות: שימוש ב-NOT IN לעומת NOT EXISTS. המרצה מאוד אוהבת את ההשוואה הזו כי יש לה משמעות קריטית ליעילות ב-SQL.

-- השאילתה: "מצא את כל העובדים שלא משובצים לאף משמרת בתאריך 2026-05-01".

-- גרסה 1: NOT IN
-- הסבר ליעילות: פחות יעילה כי אם הרשימה הפנימית גדולה, הבדיקה לוקחת זמן. 
-- בנוסף, אם יש NULL ברשימה הפנימית, כל השאילתה עלולה להחזיר 0 תוצאות.
SELECT e.employee_id, e.first_name || ' ' || e.last_name AS full_name, d.dept_name
FROM EMPLOYEE e
JOIN DEPARTMENT d ON e.department_id = d.department_id
WHERE e.employee_id NOT IN (
    SELECT sa.employee_id
    FROM SHIFT_ASSIGNMENT sa
    WHERE sa.Work_Date = '2024-12-17'
);

-- גרסה 2: NOT EXISTS
-- הסבר ליעילות: בדרך כלל מהירה יותר כי היא עובדת על "אימות קיום" (Boolean) 
-- ולא בונה רשימות ערכים בזיכרון. בטוחה יותר לשימוש עם ערכי NULL.
SELECT e.employee_id, e.first_name || ' ' || e.last_name AS full_name, d.dept_name
FROM EMPLOYEE e
JOIN DEPARTMENT d ON e.department_id = d.department_id
WHERE NOT EXISTS (  
    SELECT 1
    FROM SHIFT_ASSIGNMENT sa
    WHERE sa.employee_id = e.employee_id
    AND sa.Work_Date = '2024-12-17'
);

------ Query 3 ------
-- שאילתה 3: איתור "העובדים המנוסים" במחלקות הטיפול
-- המטרה: המנהל רוצה רשימה של עובדים שהם גם ותיקים (התחילו לפני 2024) וגם שייכים למחלקות הטיפול הישיר בחיות (מחלקות 1, 2 ו-3), כדי למנות אותם לחונכים.
-- הקישור למסך: מסך "ניהול עובדים" – סינון מתקדם לצרכי הדרכה.

-- גרסה 1: Standard JOIN with Multiple Conditions
-- הסבר ליעילות: פשוטה ומהירה, ה-Database מבצע סינון (Filter) תוך כדי החיבור.
SELECT e.employee_id, e.first_name, e.last_name, ec.start_date
FROM EMPLOYEE e
JOIN EMPLOYEE_CONTRACT ec ON e.contract_id = ec.contract_id
WHERE e.department_id IN (1, 2, 3) 
  AND ec.start_date < '2024-01-01'
ORDER BY ec.start_date ASC;

-- גרסה 2: INTERSECT (Set Operation)
-- הסבר ליעילות: לעיתים פחות יעילה מ-JOIN כי היא מריצה שתי שליפות נפרדות ומאחדת אותן, 
-- אך היא מאוד קריאה ולוגית כשרוצים להדגיש שמדובר בחיתוך של שתי אוכלוסיות שונות.
SELECT employee_id, first_name, last_name
FROM EMPLOYEE
WHERE department_id IN (1, 2, 3)

INTERSECT

SELECT e.employee_id, e.first_name, e.last_name
FROM EMPLOYEE e
JOIN EMPLOYEE_CONTRACT ec ON e.contract_id = ec.contract_id
WHERE ec.start_date < '2024-01-01'

ORDER BY last_name;

------------ Query 4 -------------
-- שאילתה 4: "עומס מחלקתי" (הכפולה האחרונה)
-- המטרה: זיהוי מחלקות "מורכבות" שיש בהן יותר מ-3 סוגי תפקידים שונים (למשל: גם מטפל, גם וטרינר, גם מנקה וגם מנהל).
-- הקישור למסך: סקירת מחלקות / Dashboard מנהלים.

-- גרסה 1: GROUP BY with HAVING
-- הסבר ליעילות: יעילה מאוד כי הסינון (HAVING) מתבצע ישירות על תוצאות הקיבוץ.
SELECT d.dept_name, COUNT(DISTINCT e.role_id) as unique_roles_count
FROM DEPARTMENT d
JOIN EMPLOYEE e ON d.department_id = e.department_id
GROUP BY d.dept_name
HAVING COUNT(DISTINCT e.role_id) > 1
ORDER BY unique_roles_count DESC;

-- גרסה 2: Subquery in FROM
-- הסבר ליעילות: לעיתים פחות יעילה כי היא יוצרת "טבלה זמנית" בזיכרון ורק אז מסננת אותה, 
-- אבל היא נוחה כשרוצים לבצע חישובים נוספים על התוצאה המקובצת.
SELECT dept_name, unique_roles_count
FROM (
    SELECT d.dept_name, COUNT(DISTINCT e.role_id) as unique_roles_count
    FROM DEPARTMENT d
    JOIN EMPLOYEE e ON d.department_id = e.department_id
    GROUP BY d.dept_name
) as dept_summary
WHERE unique_roles_count > 1
ORDER BY unique_roles_count DESC;

------------ Query 5 ------------
-- שאילתה 5: דוח ימי הולדת חודשי (שימוש ב-EXTRACT)
-- מטרה: להציג רשימת עובדים שחוגגים יום הולדת בחודש מסוים (למשל חודש דצמבר - 12) כדי שהמנהל יוכל להכין מתנות.
-- קישור למסך: Dashboard / לוח אירועים.

-- שאילתה 5: ימי הולדת בחודש דצמבר
-- שימוש בפירוק תאריך (Month)
SELECT 
    first_name || ' ' || last_name AS full_name,
    EXTRACT(DAY FROM birth_date) AS birth_day,
    EXTRACT(YEAR FROM birth_date) AS birth_year,
    d.dept_name
FROM EMPLOYEE e
JOIN DEPARTMENT d ON e.department_id = d.department_id
WHERE EXTRACT(MONTH FROM birth_date) = 12
ORDER BY birth_day ASC;

------------- Query 6 -------------
-- שאילתה 6: סיכום שכר מחלקתי שנתי (פירוק תאריך)
-- המטרה: חישוב תקציב השכר המושקע בכל מחלקה עבור חוזים שנחתמו בשנת 2024.
-- שימוש בפירוק: EXTRACT(YEAR FROM ...) מהעמודה Start_Date.  

-- שאילתה 6: סך תקציב שכר למחלקה בשנת 2024
-- שימוש בפירוק תאריך מהטבלה EMPLOYEE_CONTRACT
SELECT 
    d.dept_name,
    SUM(ec.salary) AS total_annual_budget,
    COUNT(e.employee_id) AS staff_count
FROM DEPARTMENT d
JOIN EMPLOYEE e ON d.department_id = e.department_id
JOIN EMPLOYEE_CONTRACT ec ON e.contract_id = ec.contract_id
WHERE EXTRACT(YEAR FROM ec.Start_Date) = 2024 -- שימוש בשם העמודה מה-DSD
GROUP BY d.dept_name
HAVING SUM(ec.salary) > 0
ORDER BY total_annual_budget DESC;

----------- Query 7 -----------

-- שאילתה 7: 10 העובדים עם הכי הרבה משמרות (מורכבות)
-- המטרה: איתור העובדים הכי פעילים בשנה האחרונה לצורך מתן בונוס.
-- שימוש בפירוק: השתמשנו ב-Work_Date כפי שראינו בגיבוי שלך.

-- שאילתה 7: 10 העובדים הפעילים ביותר בשנת 2024
-- מבוסס על ספירת רשומות בטבלת SHIFT_ASSIGNMENT
SELECT 
    e.first_name || ' ' || e.last_name AS full_name,
    COUNT(sa.Assignment_ID) AS total_shifts_completed
FROM EMPLOYEE e
JOIN SHIFT_ASSIGNMENT sa ON e.employee_id = sa.employee_id
WHERE sa.Work_Date BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY e.employee_id, full_name
HAVING COUNT(sa.Assignment_ID) > 5 -- סינון לעובדים עם מינימום פעילות
ORDER BY total_shifts_completed DESC
LIMIT 10;

----------- Query 8 -----------

-- שאילתה 8: מחלקות שטח (ללא משרד רשום)
-- עוזר למנהל התשתיות לראות למי אין עמדת עבודה קבועה
SELECT 
    d.dept_name,
    d.location AS area_of_operation,
    'No Office Assigned' AS office_status
FROM DEPARTMENT d
LEFT JOIN OFFICE o ON d.department_id = o.department_id
WHERE o.office_id IS NULL -- מחזיר רק את אלו שלא נמצא להם משרד
ORDER BY d.dept_name;


------- 3 UPDATE QUERIES -------

-- 1. עדכון שכר מבוסס ותק (Update עם Subquery)
-- המטרה: העלאת שכר ב-10% לכל העובדים שהתחילו לעבוד לפני שנת 2024 ושייכים למחלקות הטיפול (1, 2, 3).
-- המורכבות: שימוש בתנאי מורכב ובפירוק תאריך.

-- UPDATE 1: העלאת שכר לותיקים במחלקות הטיפול
UPDATE EMPLOYEE_CONTRACT
SET salary = salary * 1.10
WHERE Start_Date < '2024-01-01'
AND contract_id IN (
    SELECT contract_id 
    FROM EMPLOYEE 
    WHERE department_id IN (1, 2, 3)
);

-- 2. קידום תפקיד גורף (Update מבוסס תנאי)
-- המטרה: קידום כל ה"עוזרים" (Assistants) לתפקיד "מטפלים" (Keepers) במחלקה ספציפית שעברה ארגון מחדש.
-- המורכבות: עדכון שמסתמך על קשר בין טבלת התפקידים לטבלת העובדים.

-- UPDATE 2: קידום תפקיד למחלקת היונקים (נניח מזהה מחלקה 5)
UPDATE EMPLOYEE
SET role_id = (SELECT role_id FROM ROLE WHERE role_title = 'Senior Keeper')
WHERE department_id = 5 
AND role_id = (SELECT role_id FROM ROLE WHERE role_title = 'Junior Assistant');

--3. עדכון סטטוס משרד (Update לוגי)
-- המטרה: שינוי המיקום של כל המשרדים המשויכים למחלקה מסוימת שעוברת לבניין חדש.

-- UPDATE 3: עדכון מיקום משרדים למחלקה שעברה בניין
UPDATE OFFICE
SET location = 'North Wing - Level 2'
WHERE department_id = (
    SELECT department_id 
    FROM DEPARTMENT 
    WHERE dept_name = 'Veterinary Services'
);

------- 3 DELETE QUERIES -------

-- DELETE 1: ניקוי שיבוצים ישנים מאוד
DELETE FROM SHIFT_ASSIGNMENT
WHERE Work_Date < '2024-02-01';

-- DELETE 2: הסרת תפקידים ללא עובדים פעילים
DELETE FROM ROLE
WHERE role_id NOT IN (SELECT DISTINCT role_id FROM EMPLOYEE);

-- DELETE 3: הסרת חוזים עתידיים שאינם רלוונטיים
DELETE FROM EMPLOYEE_CONTRACT
WHERE Start_Date > '2026-03-17';