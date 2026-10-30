-- Aula DDL ( CREATE, ALTER, DROP )
-- Aula DML ( INSERT, UPDATE, DELETE )


INSERT INTO PROFESSOR (registro_professor, nome, email)
VALUES ( 1030, 'Lucas', 'lucas@gmail.com'),
       ( 1040, 'Vinio', 'vinio@gmail.com'),
	   ( 1050, 'Guilherme', 'guilherme@gmail.com')


-- Exibir dados da tabela
-- select * from professor
-- * = todas as colunas

select * from PROFESSOR

INSERT INTO ESPECIALIDADE_PROFESSOR (registro_professor, especialidade)  -- <-- Não é permitido que se repita uma PK.
VALUES (1040, 'C#')

SELECT * FROM ESPECIALIDADE_PROFESSOR


-- Apagar dados

DELETE FROM PROFESSOR WHERE registro_professor = 1030 -- <- vai dar erro pois não é permitido apagar coluna pai sem antes excluir as filhas.

-- Atualizar dados

UPDATE PROFESSOR SET nome = 'Lucas Aragão' -- <- Está errado, pois irá alterar o nome de todas as colunas. Necessário utilizar WHERE.


SELECT * FROM PROFESSOR

ROLLBACK -- <- Para desfazer codigos inseridos de forma erronea.

COMMIT -- <- Para fechar o banco.


UPDATE PROFESSOR SET nome = 'Guilherme da Silva' WHERE registro_professor = 1050 -- <- Corrigido