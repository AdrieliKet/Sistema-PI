final createTable = '''
  CREATE TABLE glicemia(
    id INTEGER NOT NULL PRIMARY KEY
    ,valorGlicemia VARCHAR(200) NOT NULL
    ,refeicao BOOLEAN(2) NOT NULL
  )
''';

final insert1 = '''
INSERT INTO glicemia (valorGlicemia, refeicao)
VALUES ('22','true'')
''';

final insert2 = '''
INSERT INTO glicemia (valorGlicemia, refeicao)
VALUES ('23','true'')
''';
