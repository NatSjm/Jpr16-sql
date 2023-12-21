SELECT *
FROM Homework;


SELECT Lesson.*, Homework.name AS homework_name, Homework.description AS homework_description
FROM Lesson
         LEFT JOIN Homework ON Lesson.homework_id = Homework.id;


SELECT Lesson.*, Homework.name AS homework_name, Homework.description AS homework_description
FROM Lesson
         LEFT JOIN Homework ON Lesson.homework_id = Homework.id
ORDER BY Lesson.updatedAt;


SELECT
    Schedule.id AS schedule_id,
    Schedule.name AS schedule_name,
    Schedule.updatedAt AS schedule_updatedAt,
    Lesson.id AS lesson_id,
    Lesson.name AS lesson_name,
    Lesson.updatedAt AS lesson_updatedAt
FROM
    Schedule
        JOIN
    Schedule_Lesson ON Schedule.id = Schedule_Lesson.schedule_id
        JOIN
    Lesson ON Schedule_Lesson.lesson_id = Lesson.id;


SELECT
    Schedule.id AS schedule_id,
    Schedule.name AS schedule_name,
    COUNT(Lesson.id) AS lesson_count
FROM
    Schedule
        LEFT JOIN
    Schedule_Lesson ON Schedule.id = Schedule_Lesson.schedule_id
        LEFT JOIN
    Lesson ON Schedule_Lesson.lesson_id = Lesson.id
GROUP BY
    Schedule.id, Schedule.name;