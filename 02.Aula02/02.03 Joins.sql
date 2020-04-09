
SELECT c.* FROM next.confirmed AS c, next.deaths AS d;

SELECT d.* FROM next.confirmed AS c, next.deaths AS d;

SELECT c.*, d.* FROM next.confirmed AS c, next.deaths AS d;

SELECT c.*, d.* FROM next.confirmed AS c, next.deaths AS d WHERE c.date = d.date;

SELECT c.date AS date, c.cases AS cases_confirmed, d.cases AS deaths_confirmed FROM next.confirmed AS c, next.deaths AS d WHERE c.date = d.date;

SELECT d.date FROM next.deaths AS d WHERE d.date NOT IN ( SELECT c.date FROM next.confirmed AS c );

SELECT 'Oi Next Data!' AS mensagem, 1000 AS salario, false AS demitido, '2020-12-25' AS natal, x.date, x.deaths FROM ( SELECT d.date, d.cases AS deaths FROM next.deaths AS d WHERE d.date NOT IN ( SELECT c.date FROM next.confirmed AS c ) ) AS x;
