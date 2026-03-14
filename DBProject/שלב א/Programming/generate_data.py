import random
from datetime import datetime, timedelta

def generate_sql_file():
    file_path = "insert_from_programming.sql"
    
    with open(file_path, "w", encoding="utf-8") as f:
        f.write("-- Data generated via Python script\n\n")
        
        # יצירת 20,000 חוזים
        f.write("-- 20,000 Employee Contracts\n")
        for i in range(1, 20001):
            start_date = (datetime(2020, 1, 1) + timedelta(days=random.randint(0, 1800))).strftime('%Y-%m-%d')
            salary = random.uniform(6500, 18000)
            f.write(f"INSERT INTO EMPLOYEE_CONTRACT (Contract_ID, Start_Date, Salary) VALUES ({i}, '{start_date}', {salary:.2f});\n")
        
        # יצירת 20,000 שיבוצי משמרות
        f.write("\n-- 20,000 Shift Assignments\n")
        for i in range(1, 20001):
            emp_id = random.randint(1, 500) # מניח שיש לנו 500 עובדים
            shift_id = random.randint(1, 3)
            work_date = (datetime(2024, 1, 1) + timedelta(days=random.randint(0, 365))).strftime('%Y-%m-%d')
            f.write(f"INSERT INTO SHIFT_ASSIGNMENT (Assignment_ID, Employee_ID, Shift_ID, Work_Date) VALUES ({i}, {emp_id}, {shift_id}, '{work_date}');\n")

    print(f"Successfully generated {file_path}")

if __name__ == "__main__":
    generate_sql_file()