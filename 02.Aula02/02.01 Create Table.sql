USE next;

CREATE TABLE next.deaths (
  id        INT             NOT NULL AUTO_INCREMENT,
  country   VARCHAR(45)     NOT NULL,
  lat       DECIMAL(7,3)    NULL,
  lng       DECIMAL(7,3)    NULL,
  date      DATETIME        NULL,
  cases     INT             NULL,
  deleted   BOOL            NOT NULL DEFAULT FALSE,
  PRIMARY KEY ( id )
);
