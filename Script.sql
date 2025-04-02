/*Relação criada a partir da união das tabelas student e takes.*/

SELECT * from student JOIN takes on student.ID = takes.ID ;

/*Contagem da quantidade de cursos realizados pelos alunos do departamento de Civil Eng.
Ordenada de maneira descendente a quantidade de cursos associada aos alunos. */

SELECT s.ID AS student_id, s.name, COUNT(t.course_id) AS total_courses
FROM student s
JOIN takes t ON s.ID = t.ID
WHERE s.dept_name = 'Civil Eng.'
GROUP BY s.ID, s.name
ORDER BY total_courses DESC;

/*Criação de uma view do código acima chamada civil_eng_students*/

CREATE VIEW civil_eng_students AS
SELECT s.ID AS student_id, s.name, COUNT(t.course_id) AS total_courses
FROM student s
JOIN takes t ON s.ID = t.ID
WHERE s.dept_name = 'Civil Eng.'
GROUP BY s.ID, s.name
ORDER BY total_courses DESC;