CREATE OR REPLACE FUNCTION criarTabelaPopulada() RETURNS VOID AS
	$BODY$
		DECLARE
			lorota TEXT;
			i INTEGER;
		BEGIN
			i := 1;
			lorota := 'Caros amigos, o consenso sobre a necessidade de qualificação exige a precisão e a definição de todos os recursos funcionais envolvidos. Evidentemente, a complexidade dos estudos efetuados estimula a padronização dos relacionamentos verticais entre as hierarquias. Desta maneira, a contínua expansão de nossa atividade causa impacto indireto na reavaliação dos métodos utilizados na avaliação de resultados.';
			DROP TABLE IF EXISTS tabela_populada;

			CREATE TABLE tabela_populada (
				id_numerico INTEGER, id_literal VARCHAR(32), lorota1 TEXT, lorota2 TEXT, lorota3 TEXT, lorota4 TEXT, lorota5 TEXT, lorota6 TEXT, lorota7 TEXT, lorota8 TEXT, lorota9 TEXT, lorota10 TEXT
			);

			LOOP	
				INSERT INTO tabela_populada (id_numerico, id_literal, lorota1, lorota2, lorota3, lorota4, lorota5, lorota6, lorota7, lorota8, lorota9, lorota10)
				VALUES (i, MD5(i::TEXT), lorota, lorota, lorota, lorota, lorota, lorota, lorota, lorota, lorota, lorota);
				EXIT WHEN i > 1000000;
				i:=i+1;
			END LOOP;
		END;
	$BODY$
LANGUAGE plpgsql VOLATILE

SELECT * FROM criarTabelaPopulada(); 

SELECT pg_size_pretty(pg_relation_size('tabela_populada'));

SELECT pg_size_pretty(pg_total_relation_size('tabela_populada'));

EXPLAIN ANALYSE 
	SELECT * FROM tabela_populada WHERE id_numerico =1000;

CREATE INDEX indexHash_TabelaPopulada ON tabela_populada USING HASH (id_numerico);

SELECT pg_size_pretty(pg_relation_size('tabela_populada'));

SELECT pg_size_pretty(pg_total_relation_size('tabela_populada'));

SELECT pg_size_pretty(pg_total_relation_size('indexHash_TabelaPopulada'));

SELECT * FROM pg_stat_user_indexes

SET enable_seqscan=false

EXPLAIN ANALYSE SELECT
	SELECT * FROM tabela_populada WHERE id_numerico =1000;

SELECT * FROM tabela_populada WHERE id_numerico =1000

SELECT * FROM pg_stat_user_indexes

