--=======================================================
-- gROUP bY CLAUSE
--=======================================================

-- GET SUM FO AMT SPEND ON EACH DEPT
SELECT EMP.DEPARTMENT_ID ,SUM(SALARY) FROM EMPLOYEES EMP GROUP BY EMP.DEPARTMENT_ID;

-- SUM OF SALARY FOR EACH JOB TITLE
SELECT EMP.JOB_ID , SUM(EMP.SALARY) FROM EMPLOYEES EMP GROUP BY JOB_ID;


SELECT JOBS.JOB_TITLE , SUM(EMP.SALARY) TOTALSAL FROM EMPLOYEES EMP INNER JOIN (SELECT * FROM JOBS) JOBS USING (JOB_ID) 
                                          GROUP BY JOBS.JOB_TITLE;
                                          


-- SHOW GROUPING BY DEP AND JOBS
SELECT DEPT.DEPARTMENT_NAME , JOBS.JOB_TITLE ,SUM(EMP.SALARY) TOTALSAL FROM EMPLOYEES EMP INNER JOIN (SELECT * FROM JOBS) JOBS USING (JOB_ID) 
                                                                    INNER JOIN (SELECT * FROM DEPARTMENTS) DEPT USING (DEPARTMENT_ID)
                                                                    GROUP BY  DEPT.DEPARTMENT_NAME , JOBS.JOB_TITLE
                                                                    
                                        union 
                                        
select   DEPT.DEPARTMENT_NAME ,'-' ,   SUM(EMP.SALARY) TOTALSAL        FROM EMPLOYEES EMP
                                                                    INNER JOIN (SELECT * FROM DEPARTMENTS) DEPT USING (DEPARTMENT_ID) group by   DEPT.DEPARTMENT_NAME      
                                                                    
                                                               order by 1,2     
                                                                    
-- USE OF HAVING CLAUSE TO LIMIT THE ROWS IN OUTPUT.
SELECT EMP.DEPARTMENT_ID ,SUM(SALARY) FROM EMPLOYEES EMP GROUP BY EMP.DEPARTMENT_ID HAVING SUM(SALARY) > 25000;



                                                                    
-- ROLL UP
--N IN GRP BY ROLLUP , N+1 SUPER AGG.
-- DEP , JOB COMB
-- dEP AGREE
-- GRAND TOTAL
SELECT DEPT.DEPARTMENT_NAME , JOBS.JOB_TITLE ,SUM(EMP.SALARY) TOTALSAL FROM EMPLOYEES EMP INNER JOIN (SELECT * FROM JOBS) JOBS USING (JOB_ID) 
                                                                    INNER JOIN (SELECT * FROM DEPARTMENTS) DEPT USING (DEPARTMENT_ID)
                                                                    GROUP BY  ROLLUP( DEPT.DEPARTMENT_NAME , JOBS.JOB_TITLE);











