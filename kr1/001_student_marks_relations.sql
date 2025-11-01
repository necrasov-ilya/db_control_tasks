CREATE TABLE marks (
  stud_id INT NOT NULL,
  subj_id INT NOT NULL,
  ddate DATETIME DEFAULT CURRENT_TIMESTAMP,
  mark TINYINT DEFAULT NULL
);

INSERT INTO marks (stud_id, subj_id, mark)
SELECT 
    s.id,
    sub.id,
    FLOOR(1 + RAND() * 5)
FROM students s
CROSS JOIN subjects sub;

ALTER TABLE marks
ADD CONSTRAINT fk_marks_student
FOREIGN KEY (stud_id) REFERENCES students(id);

ALTER TABLE marks
ADD CONSTRAINT fk_marks_subject
FOREIGN KEY (subj_id) REFERENCES subjects(id);