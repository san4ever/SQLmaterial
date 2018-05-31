---============================================================
/*
  HIRARCHICAL QUERIES
*/
---============================================================
-- SELF JOIN TO OUT MANAGER EMPLOYEE. 
-- iTS NOT HIRRACHY
SELECT EMP.FIRST_NAME , EMP.JOB_ID , MAN.FIRST_NAME , MAN.JOB_ID
                                            FROM EMPLOYEES EMP
                                            LEFT JOIN EMPLOYEES MAN ON EMP.MANAGER_ID = MAN.EMPLOYEE_ID;
                                            


-- GENERATE THE HIRARCHY ON EMPLOYEE TABLE
-- TOP DOWN HIRAR
SELECT LEVEL , LPAD(' ', 2*level) || EMP.FIRST_NAME || ' ' || EMP.LAST_NAME , LPAD(' ', 2*level) || EMP.MANAGER_ID, LPAD(' ', 2*level) || EMP.JOB_ID  
FROM EMPLOYEES EMP
                                  START WITH EMP.MANAGER_ID IS NULL 
                                  CONNECT BY PRIOR EMP.EMPLOYEE_ID = EMP.MANAGER_ID;
                                  
                                  
                                  
-- DOWN TO UP HIRAR                                  
SELECT LEVEL , LPAD(' ', 2*level) || EMP.FIRST_NAME || ' ' || EMP.LAST_NAME , LPAD(' ', 2*level) || EMP.MANAGER_ID, LPAD(' ', 2*level) || EMP.JOB_ID  
            FROM EMPLOYEES EMP
            START WITH EMP.EMPLOYEE_ID = 107
            CONNECT BY PRIOR EMP.MANAGER_ID = EMP.EMPLOYEE_ID;
            
                                  
 --    DISPLAY HIRAR ALONG WITH JOB DETAILS
 SELECT LEVEL , LPAD(' ', 2*level) || EMP.FIRST_NAME || ' ' || EMP.LAST_NAME NAME, LPAD(' ', 2*level) || EMP.MANAGER_ID MID, LPAD(' ', 2*level) || JOBS.JOB_TITLE  JOB_TITLE
                                  FROM EMPLOYEES EMP 
                                  INNER JOIN JOBS JOBS USING (JOB_ID)
                                  START WITH EMP.MANAGER_ID IS NULL 
                                  CONNECT BY PRIOR EMP.EMPLOYEE_ID = EMP.MANAGER_ID;


 SELECT LEVEL , LPAD(' ', 2*level) || EMP.FIRST_NAME || ' ' || EMP.LAST_NAME NAME, LPAD(' ', 2*level) || EMP.MANAGER_ID MID, LPAD(' ', 2*level) || JOBS.JOB_TITLE  JOB_TITLE
                                  FROM EMPLOYEES EMP 
                                  INNER JOIN JOBS JOBS USING (JOB_ID)
                                  START WITH EMP.EMPLOYEE_ID = 101
                                  CONNECT BY  EMP.MANAGER_ID = PRIOR EMP.EMPLOYEE_ID ;
                                  
                                  
                                  
                                  
-- ORDER BY WILL JUST DO THE APLHABETICLA ORDERING.
-- tHIS WILL BE ACROSS THE NODE
  SELECT LEVEL , LPAD(' ', 2*level) || EMP.FIRST_NAME || ' ' || EMP.LAST_NAME NAME, LPAD(' ', 2*level) || EMP.MANAGER_ID MID, JOBS.JOB_TITLE  JOB_TITLE
                                  FROM EMPLOYEES EMP 
                                  INNER JOIN JOBS JOBS USING (JOB_ID)
                                  START WITH EMP.EMPLOYEE_ID = 101
                                  CONNECT BY  EMP.MANAGER_ID = PRIOR EMP.EMPLOYEE_ID ORDER BY 3;                 


