CREATE TABLE test(
  id TEXT
);

CREATE TABLE test2(
  id2 TEXT
);

UPDATE test
SET id = id2
FROM (
  SELECT
    id2
  FROM test2
);

UPDATE test
SET id = newId
FROM (
  SELECT
    id2 AS newId
  FROM test2
);

UPDATE test
SET id = newId
FROM (
  SELECT
    id AS newId
  FROM test
);

UPDATE test
SET id = newId
FROM (
  SELECT
  otherTest.id AS newId
  FROM test2
  INNER JOIN test AS otherTest
  ON otherTest.id = test2.id2
);


