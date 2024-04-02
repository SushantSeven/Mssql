import pyodbc
import logger

# print(pyodbc.drivers())

# creating connection object
con = pyodbc.connect("Driver={Sql Server};Server=SUSHANTSEVEN;Database=Python_sql;Trusted_connection=yes")
cursor = con.cursor()

log = logger.init_logger()

# function to perform select operation
def view_data():
    cursor.execute('select * from emp')
    for row in cursor:
        print(row)
    log.info('Data retrieved')

# function to perform insert operation
def insert_data():
    try:
        emp_id = int(input("Employeeid : "))
        dept_id = int(input("department id : "))
        salary = int(input("salary : "))
    except ValueError:
        print("Enter valid values\n")
        log.exception('Value error')
    else:
        try:    
            cursor.execute(f'insert into emp values({emp_id}, {dept_id}, {salary});')
        except Exception as e:
            log.exception(e)

        else:
            con.commit()
            log.info('Data inserted')

# funtion to perform update operation
def update_data():
    try:
        emp_id = int(input("Employeeid : "))
    except Exception as e:
        log.exception(e)
    else:
        try:
            cursor.execute(f"update emp set salary=800000 where empid = {emp_id}")
        except Exception as e:
            log.exception(e)
        else:
            con.commit()
            log.info('Data updated')

# function to perform delete operation
def delete_data():
    try:
        emp_id = int(input("Employeeid : "))
    except Exception as e:
        log.exception(e)
    else:
        try:
            cursor.execute(f"delete from emp where empid = {emp_id}")
        except Exception as e:
            log.exception(e)
        else:
            con.commit()
            log.info('Data deleted')
            


if __name__=="__main__":
    update_data()

