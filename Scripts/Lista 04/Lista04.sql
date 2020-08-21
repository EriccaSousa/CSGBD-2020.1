--Q1)
--a)
EXPLAIN ANALYSE
	SELECT lorota1 FROM tabela_populadaA
		WHERE id_numerico = 345
		
--d)
CREATE INDEX index_TabelaPopuladaA
	ON tabela_populadaa (id_numerico);
	
--Q2)
--a)
EXPLAIN ANALYSE
	SELECT lorota1 FROM tabela_populadaA
		WHERE id_numerico >= 900000 AND id_numerico <= 950000

--Q3)
EXPLAIN ANALYSE
	SELECT lorota1 FROM tabela_populadaA
		WHERE id_numerico >= 100000 AND id_numerico <= 1000000
		
--Q4)
CREATE INDEX indexCluster_tabela_populadaA
	CLUSTER ON tabela_populadaA (id_numerico)
