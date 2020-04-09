
USE next;

ALTER TABLE next.confirmed ADD COLUMN aluno_id INT NOT NULL;

ALTER TABLE next.confirmed ADD COLUMN teste VARCHAR(20) NOT NULL;
ALTER TABLE next.confirmed ADD COLUMN teste2 VARCHAR(20);
ALTER TABLE next.confirmed DROP COLUMN teste2;
ALTER TABLE next.confirmed DROP COLUMN teste;
