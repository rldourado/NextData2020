
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

