-- mysql 1/31/2023

mysql –h host -u shion -p

--1
SELECT DISTINCT cs.rubric, cs.number, cs.title, cl.classID, cl.facId, cl.year, cl.semester
FROM Course AS cs
inner join Class As cl on cl.courseId = cs.courseId
WHERE cs.rubric = 'CSCI' OR cs.rubric = 'CINF';


--2
SELECT CONCAT (cs.rubric,' ',cs.number) AS Course, cs.title, cl.classID, cl.facId, fl.deptCode AS "instructor dept"
FROM Course AS cs 
INNER JOIN Class AS cl ON cl.courseId = cs.courseId
INNER JOIN Faculty AS fl ON fl.facId =cl.facId
WHERE fl.deptCode = 'CSCI';


--3
SELECT st.stuID, st.fname, st.lname, st.major, st.minor, 
FROM Student AS st
