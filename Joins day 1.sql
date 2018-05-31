-- Inner join 
-- Join employee and Job table
Select EMP.FIRST_NAME , JOBS.JOB_TITLE from 
HR.EMPLOYEES EMP  inner JOIN HR.JOBS JOBS 
ON  EMP.JOB_ID = JOBS.JOB_ID;

-- Inner keyword is optional and we can remove it
select EMP.FIRST_NAME , JOBS.JOB_TITLE from
HR.EMPLOYEES EMP join HR.JOBS JOBS on EMP.JOB_ID = JOBS.JOB_ID;


-- Lets try to join 3 tables
select  EMP.FIRST_NAME , JOBS.JOB_TITLE , Dept.DEPARTMENT_NAME from
HR.EMPLOYEES EMP 
join HR.JOBS JOBS on EMP.JOB_ID = JOBS.JOB_ID
join HR.DEPARTMENTS Dept on EMP.DEPARTMENT_ID = Dept.DEPARTMENT_ID;



--
-- OUTER JOIN --
-- LEFT Outer Join
select EMP.FIRST_NAME , Dept.DEPARTMENT_NAME from 
HR.EMPLOYEES EMP left join HR.DEPARTMENTS Dept  on EMP.DEPARTMENT_ID = Dept.DEPARTMENT_ID;

select EMP.FIRST_NAME , Dept.DEPARTMENT_NAME from 
HR.DEPARTMENTS Dept left join HR.EMPLOYEES EMP   on EMP.DEPARTMENT_ID = Dept.DEPARTMENT_ID;


--Right Outer join
select EMP.FIRST_NAME , JOBS.JOB_TITLE from HR.EMPLOYEES EMP
Right join HR.JOBS JOBS on EMP.job_ID = JOBS.JOB_ID;

select EMP.FIRST_NAME , JOBS.JOB_TITLE from  HR.JOBS JOBS 
Right join HR.EMPLOYEES EMP on EMP.job_ID = JOBS.JOB_ID;


-- Full Outer join
select EMP.FIRST_NAME , Dept.DEPARTMENT_NAME from 
HR.EMPLOYEES EMP FULL join HR.DEPARTMENTS Dept  on EMP.DEPARTMENT_ID = Dept.DEPARTMENT_ID;



-- Issue when we have same column name in joinig table.
-- Write Inner join query on emp and JObs table
select EMP.FIRST_NAME , JOBS.JOB_TITLE from HR.EMPLOYEES EMP 
inner join HR.JOBS JOBS on EMP.JOB_ID = JOBS.JOB_ID;


-- Natural join
-- Its nothing but an inner join ,where in the join is applied on column having same name.
-- Mostly we used Inner joins only.
select EMPLOYEE_ID , EMP.FIRST_NAME , JOBS.JOB_TITLE from HR.EMPLOYEES EMP 
natural join HR.JOBS JOBS;



-- Uisng keyword to apply join condition.
select EMP.EMPLOYEE_ID , EMP.FIRST_NAME , JOBS.JOB_TITLE from HR.EMPLOYEES EMP 
inner join  HR.JOBS JOBS using ( JOB_ID);


-- Using with Outer Join
select EMP.FIRST_NAME , Dept.DEPARTMENT_NAME from 
HR.DEPARTMENTS Dept left join HR.EMPLOYEES EMP   using (DEPARTMENT_ID);

-- Using keyword for right join
select EMP.FIRST_NAME , Dept.DEPARTMENT_NAME from 
HR.DEPARTMENTS Dept right join HR.EMPLOYEES EMP   using (DEPARTMENT_ID);

-- Using keyword with inner and outer combination
select EMP.FIRST_NAME , Dept.DEPARTMENT_NAME  ,JOBS.JOB_TITLE from HR.EMPLOYEES EMP 
 right join HR.DEPARTMENTS Dept using (DEPARTMENT_ID)
 left join HR.JOBS JOBS using (JOB_ID);
 



-- Full join
select EMP.FIRST_NAME , Dept.DEPARTMENT_NAME  from HR.EMPLOYEES EMP 
 full join HR.DEPARTMENTS Dept using (DEPARTMENT_ID);
 
select EMPLOYEE_ID , EMP.FIRST_NAME , JOBS.JOB_TITLE from HR.EMPLOYEES EMP 
full join HR.JOBS JOBS using (Job_ID);
 


-- SELF Join
-- it just a joining table to itself.
select EMP.FIRST_NAME Ename ,  Man.FIRST_NAME Mname ,EMP.JOB_ID EMPJobId, Man.JOB_ID ManjobId from
HR.EMPLOYEES EMP inner join HR.EMPLOYEES Man on EMP.MANAGER_ID = Man.EMPLOYEE_ID;
                

select EMP.FIRST_NAME Ename ,  Man.FIRST_NAME Mname ,EMP.JOB_ID EMPJobId, Man.JOB_ID ManjobId from 
HR.EMPLOYEES EMP left join HR.EMPLOYEES Man on EMP.MANAGER_ID = EMP.EMPLOYEE_ID; 



select EMP1.FIRST_NAME , EMP1.LAST_NAME , EMP1.DEPARTMENT_ID , EMP2.FIRST_NAME , EMP2.DEPARTMENT_ID from HR.EMPLOYEES EMP1   
inner join HR.EMPLOYEES EMP2 on EMP1.DEPARTMENT_ID = EMP2.DEPARTMENT_ID 
where EMP1.LAST_NAME = 'King' and EMP1.First_name = 'Janette';



-- Display job name of all emp whos salary is > emp id = 102
select EMP1.EMPLOYEE_ID , EMP1.FIRST_NAME ,EMP1.SALARY , EMP2.EMPLOYEE_ID,EMP2.FIRST_NAME , EMP2.SALARY
from HR.EMPLOYEES EMP1   
inner join HR.EMPLOYEES EMP2 on EMP1.salary > EMP2.salary
where EMP1.EMPLOYEE_ID = 102;


-- NON Equi joins
-- They dont check a equal to condition , but check < , > or some other condition.
















