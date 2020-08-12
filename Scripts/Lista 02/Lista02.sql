SELECT * FROM l08_despesa

-- 08)
CREATE INDEX btree_l08_despesa ON public.l08_despesa
	USING btree (dnro ASC) INCLUDE(dnro)

-- 09)
EXPLAIN ANALYSE SELECT * FROM l08_despesa WHERE dnro = 10

-- 10)
SET enable_seqscan = false

-- 11)metadados
SELECT relname, indexrelid, indexrelname, idx_scan, idx_tup_read FROM pg_stat_all_indexes
	WHERE relname = 'l08_despesa'

-- 12)
SELECT * FROM l08_despesa WHERE dnro = 10 

-- 13)
SELECT relname, indexrelid, indexrelname, idx_blks_read, idx_blks_hit FROM pg_statio_all_indexes 
	WHERE relname = 'l08_despesa'

-- 14)
SELECT * FROM l08_despesa WHERE dnro = 10 

-- 17)
SELECT attname, most_common_vals, most_common_freqs, correlation FROM pg_stats 
	WHERE tablename = 'l08_despesa'
	
SELECT * FROM pg_stats

SELECT attname, most_common_vals, most_common_freqs, correlation FROM pg_stats

SELECT tablename FROM pg_stats
