-- חלק 1: הדגמת ROLLBACK (ביטול שינויים)
BEGIN; -- התחלת טרנזקציה

-- עדכון זמני: העלאת שכר מטורפת לכל העובדים
UPDATE EMPLOYEE_CONTRACT SET salary = salary * 10;

-- בדיקה: נראה שהשכר אכן עלה (צילום מסך כאן)
SELECT salary FROM EMPLOYEE_CONTRACT LIMIT 5;

ROLLBACK; -- ביטול הכל!

-- בדיקה: נראה שהשכר חזר לקדמותו (צילום מסך כאן)
SELECT salary FROM EMPLOYEE_CONTRACT LIMIT 5;


-- חלק 2: הדגמת COMMIT (שמירת שינויים)
BEGIN;

-- עדכון סביר: הוספת בונוס קטן
UPDATE EMPLOYEE_CONTRACT SET salary = salary + 100;

COMMIT; -- שמירה סופית בבסיס הנתונים

-- בדיקה: נראה שהשכר המעודכן נשמר (צילום מסך כאן)
SELECT salary FROM EMPLOYEE_CONTRACT LIMIT 5;