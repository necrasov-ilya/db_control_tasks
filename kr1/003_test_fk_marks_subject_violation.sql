-- Должны получить ошибку об ограничении внешнего ключа
INSERT INTO marks (stud_id, subj_id, mark) VALUES (1, 9999, 5);