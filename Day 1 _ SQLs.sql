-- INNER JOIN
--  OUTER join
--  Natural join 

-- disply EMp name and Hi sjob
select EMP.FIRST_NAME ,EMP.JOB_ID , JOBS.JOB_TITLE from HR.EMPLOYEES EMP INNER JOIN  HR.JOBS JOBS
                                ON EMP.JOB_ID = JOBS.JOB_ID;
                                
SELECT   EMP.FIRST_NAME , EMP.DEPARTMENT_ID , DEPT.DEPARTMENT_NAME , LOC.CITY
                            from HR.EMPLOYEES EMP 
                                INNER JOIN HR.DEPARTMENTS DEPT ON EMP.DEPARTMENT_ID = DEPT.DEPARTMENT_ID
                                INNER JOIN HR.LOCATIONS LOC ON DEPT.LOCATION_ID = LOC.LOCATION_ID;
                                
                                
                            
-- OUTER JOIN
-- LEFT JOIN AND RIGHT JOIN
SELECT   EMP.FIRST_NAME , EMP.DEPARTMENT_ID , DEPT.DEPARTMENT_NAME ,LOC.CITY FROM HR.EMPLOYEES EMP 
                                                                             LEFT JOIN HR.DEPARTMENTS DEPT ON EMP.DEPARTMENT_ID = DEPT.DEPARTMENT_ID
                                                                             INNER JOIN HR.LOCATIONS LOC ON LOC.LOCATION_ID = DEPT.LOCATION_ID;
                                                                             
                                                                   
                                 
-- RIGHT OUTER                                                                    
SELECT EMP.FIRST_NAME ,EMP.DEPARTMENT_ID , DEPT.DEPARTMENT_NAME FROM HR.EMPLOYEES EMP   
                                                                RIGHT JOIN  HR.DEPARTMENTS DEPT ON EMP.DEPARTMENT_ID = DEPT.DEPARTMENT_ID;    
                                                                
                                                                
-- FULL JOIN
SELECT EMP.FIRST_NAME ,EMP.DEPARTMENT_ID , DEPT.DEPARTMENT_NAME FROM HR.EMPLOYEES EMP   
                                                                FULL JOIN  HR.DEPARTMENTS DEPT ON EMP.DEPARTMENT_ID = DEPT.DEPARTMENT_ID;    

                                                                    
                                                                    

-- NATURAL JOIN
SELECT EMP.FIRST_NAME ,DEPARTMENT_ID , DEPT.DEPARTMENT_NAME , JOBS.JOB_TITLE FROM HR.EMPLOYEES EMP
                                                                NATURAL JOIN HR.DEPARTMENTS DEPT
                                                                INNER JOIN HR.JOBS JOBS ON JOBS.JOB_ID = EMP.JOB_ID;
                                                                
                                                                
                                                                
                                                                
                                                                
-- USING 
select EMP.EMPLOYEE_ID , EMP.FIRST_NAME , JOBS.JOB_TITLE  from HR.EMPLOYEES EMP , HR.JOBS JOBS
WHERE JOBS.JOB_ID = EMP.JOB_ID

inner join  HR.JOBS JOBS using ( JOB_ID)
INNER JOIN HR.DEPARTMENTS DEPT USING (DEPARTMENT_ID) ;

-- Using with Outer Join
select EMP.FIRST_NAME , Dept.DEPARTMENT_NAME from 
HR.DEPARTMENTS Dept left join HR.EMPLOYEES EMP   using (DEPARTMENT_ID);


--    SELF JOIN
SELECT EMP1.FIRST_NAME , EMP1.MANAGER_ID , MAN.FIRST_NAME , MAN.EMPLOYEE_ID FROM HR.EMPLOYEES EMP1
                                                    LEFT JOIN HR.EMPLOYEES MAN ON EMP1.MANAGER_ID = MAN.EMPLOYEE_ID;



                                


                                



