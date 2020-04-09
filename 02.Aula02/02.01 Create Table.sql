USE next;

CREATE TABLE next.deaths (
  id        INT             NOT NULL AUTO_INCREMENT,
  aluno_id  INT             NOT NULL,
  country   VARCHAR(45)     NOT NULL,
  lat       DECIMAL(7,3)    NULL,
  lng       DECIMAL(7,3)    NULL,
  date      DATETIME        NULL,
  cases     INT             NULL,
  deleted   BOOL            NOT NULL DEFAULT FALSE,
  _created  DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,
  _updated  DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY ( id )
);

/*
   Dicionário de Dados

   Alunos

   0 - Rubens
   1 - Gustavo Lira
   2 - Danilo
   3 - Neto
   4 - Lucas
   5 - Pedro
   6 - Ricardo
   7 - Wagner
*/
