
CREATE TABLE next.customer (
  id         INT             NOT NULL AUTO_INCREMENT,
  name       VARCHAR(50)     NOT NULL,
  gender     CHAR(1)         NOT NULL,

  city_id    INT             NULL,
  country_id INT             NOT NULL,
  car_id     INT             NULL,
  car_year   INT             NULL,

  _created  DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,
  _updated  DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY ( id )
);

/*
  Dicionário de Dados

  gender   - f  - female
             m  - male

*/

CREATE TABLE next.cities (
  id         INT             NOT NULL AUTO_INCREMENT,
  name       VARCHAR(50)     NOT NULL,
  PRIMARY KEY ( id )
);

INSERT INTO cities ( name ) SELECT DISTINCT city FROM next.MOCK_DATA WHERE city != '' ORDER BY city ASC;

CREATE TABLE next.countries (
  id         INT             NOT NULL AUTO_INCREMENT,
  name       VARCHAR(50)     NOT NULL,
  PRIMARY KEY ( id )
);

INSERT INTO countries ( name ) SELECT DISTINCT country FROM next.MOCK_DATA WHERE country != '' ORDER BY country ASC;

CREATE TABLE next.car_makers (
  id         INT             NOT NULL AUTO_INCREMENT,
  name       VARCHAR(50)     NOT NULL,
  PRIMARY KEY ( id )
);

INSERT INTO car_makers ( name ) SELECT DISTINCT car_make FROM MOCK_DATA WHERE car_make != '' ORDER BY car_make ASC;

CREATE TABLE next.car_models (
  id         INT             NOT NULL AUTO_INCREMENT,
  name       VARCHAR(50)     NOT NULL,
  car_maker_id INT           NOT NULL,
  PRIMARY KEY ( id )
);

SELECT DISTINCT
    md.car_model AS car_model,
    cm.id        AS make_id,
    cm.name      AS make_name
  FROM MOCK_DATA AS md,
       car_makers AS cm
  WHERE md.car_model != ''
    AND md.car_make = cm.name
  ORDER BY md.car_model ASC;

INSERT INTO car_models ( name, car_maker_id )
  SELECT DISTINCT
    md.car_model AS car_model,
    cm.id        AS make_id
  FROM MOCK_DATA AS md,
       car_makers AS cm
  WHERE md.car_model != ''
    AND md.car_make = cm.name
  ORDER BY md.car_model ASC;

SELECT CONCAT( md.first_name, " ", md.last_name ) AS name,
        LEFT( md.gender, 1 ) AS gender1,
        IF( md.gender = "Male", "M", IF( md.gender = "Female", "F", " " ) ) AS gender2
FROM MOCK_DATA AS md;

INSERT INTO next.customer ( name, gender, city_id, country_id, car_id, car_year )
  SELECT CONCAT( md.first_name, " ", md.last_name ) AS name,
         LEFT( md.gender, 1 )                       AS gender,
         ct.id                                      AS city_id,
         cy.id                                      AS country_id,
         cm.model_id                                AS car_id,
         md.car_year                                AS car_year
  FROM MOCK_DATA AS md LEFT OUTER JOIN cities AS ct
         ON md.city = ct.name
       LEFT OUTER JOIN countries AS cy
         ON md.country = cy.name
       LEFT OUTER JOIN ( SELECT model.id AS model_id, model.name AS model_name, maker.name AS maker_name FROM car_models AS model, car_makers maker WHERE model.car_maker_id = maker.id ) AS cm
         ON ( md.car_model = cm.model_name AND md.car_make = cm.maker_name );

SELECT md.city, ct.name FROM MOCK_DATA AS md, cities AS ct WHERE md.city = ct.name;

SELECT ctm.name, ctm.gender, ct.name, cy.name FROM customer AS ctm LEFT OUTER JOIN cities AS ct ON ctm.city_id = ct.id LEFT OUTER JOIN countries AS cy ON ctm.country_id = cy.id WHERE cy.name = 'China';

ALTER TABLE next.customer
  ADD FOREIGN KEY ( city_id ) REFERENCES next.cities( id ),
  ADD FOREIGN KEY ( country_id ) REFERENCES next.countries( id ),
  ADD FOREIGN KEY ( car_id ) REFERENCES next.car_models( id )
;

ALTER TABLE next.car_models
  ADD FOREIGN KEY ( car_maker_id ) REFERENCES car_makers( id )
;

DELETE FROM next.countries WHERE name = 'Brazil';
