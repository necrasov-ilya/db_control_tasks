ALTER TABLE marks
ADD CONSTRAINT fk_marks_subject
FOREIGN KEY (subj_id) REFERENCES subjects(id);