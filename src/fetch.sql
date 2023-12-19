SELECT *
FROM Homework;


SELECT Lesson.*, Homework.name AS homework_name, Homework.description AS homework_description
FROM Lesson
         LEFT JOIN Homework ON Lesson.homework_id = Homework.id;


SELECT Lesson.*, Homework.name AS homework_name, Homework.description AS homework_description
FROM Lesson
         LEFT JOIN Homework ON Lesson.homework_id = Homework.id
ORDER BY Lesson.updatedAt;


SELECT Schedule.*, Lesson.*
FROM Schedule
         LEFT JOIN Lesson ON Schedule.lesson_id = Lesson.id;


SELECT Schedule.id, Schedule.name, COUNT(Lesson.id) AS lesson_count
FROM Schedule
         LEFT JOIN Lesson ON Schedule.lesson_id = Lesson.id
GROUP BY Schedule.id;
