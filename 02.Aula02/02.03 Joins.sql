
SELECT c.* FROM next.confirmed AS c, next.deaths AS d;

SELECT d.* FROM next.confirmed AS c, next.deaths AS d;

SELECT c.*, d.* FROM next.confirmed AS c, next.deaths AS d;

SELECT c.*, d.* FROM next.confirmed AS c, next.deaths AS d WHERE c.date = d.date;
