USE next;

CREATE TABLE next.confirmed (
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

/*
   ORM - Object-Relational Mapper

   Mapeamento Objeto-Relacional

   Banco de Dados Relacional  -->  ORM  -->  Linguagem OO
        Tabela                 Transforma    Classe/Objeto

   Ex.  Java - Hibernete
               SQL Alchemy

        Python - Django (framework com ORM embutido)
*/

/*  Usando ORM
  confirmed = new Confirmed()

  confirmed.date = date();
  confirmed.cases = 300;
  confirmed.save()
*/

/* Sem usar ORM
  connection = new Connection( 'host', 'user', 'pass' );
  sql = 'INSERT INTO tabela ( campos...) VALUES ( ' + date() + ', 300 );

  try {
    connection.execute( sql );
  } catch SQlException {
    (tratamento)
  }
*/
