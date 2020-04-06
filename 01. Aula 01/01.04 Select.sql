SELECT * FROM next.confirmed HAVING cases > 0;

SELECT * FROM next.confirmed WHERE DATE( date ) >= '2020-03-01';

SELECT * FROM next.confirmed WHERE MOD( cases, 2 ) = 1;

SELECT * FROM next.confirmed WHERE MOD( cases, 2 ) = 0;

SELECT COUNT( * ) FROM next.confirmed;

SELECT AVG( cases ) FROM next.confirmed;

SELECT AVG( cases ) FROM next.confirmed WHERE cases > 0;

SELECT AVG( cases ) FROM next.confirmed WHERE cases > 0 GROUP BY lat;

SELECT AVG( cases ), lat, lng FROM next.confirmed WHERE cases > 0 GROUP BY lat, lng;

SELECT MAX( cases ) FROM next.confirmed;
