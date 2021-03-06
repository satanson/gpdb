-- @author prabhd
-- @created 2014-04-01 12:00:00
-- @tags dml ORCA
-- @product_version gpdb: [4.3-]
-- @gucs client_min_messages='log'
-- @gpopt 1.524 
-- @optimizer_mode on
-- @description GUC to disable DML in Orca in the presence of check or not null constraints

-- start_ignore
set optimizer_dml_constraints=on;
explain insert into constr_tab values (1,2,3);
-- end_ignore

\!grep Planner %MYD%/output/fallback_dml_constraint_2_orca.out|grep -v grep | uniq
