--start_ignore
-- @author tungs1
-- @modified 2013-07-17 12:00:00
-- @created 2013-07-17 12:00:00
-- @description SplitDQA lineitem1_SK7_1_1.sql
-- @db_name splitdqa
-- @tags SplitAgg HAWQ
-- @executemode normal
--end_ignore
SELECT * FROM (SELECT COUNT(DISTINCT l_suppkey) AS DQA1_dqacol1 FROM lineitem1 ) as t1, (SELECT SUM(DISTINCT p_size) AS DQA2_dqacol1 FROM part1 ) as t2 WHERE t1.DQA1_dqacol1 = t2.DQA2_dqacol1;
