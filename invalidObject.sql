declare
	v_vc_user varchar2(128);
	tmp varchar2(128);
begin
	select sys.login_user into v_vc_user from dual;
	for v_cur_sql in (select 'alter view ' || t.OBJECT_NAME || ' compile' ssql
		from user_objects t
		where t.OBJECT_TYPE = 'VIEW'
		and t.status = 'INVALID') loop
	begin
		execute immediate v_cur_sql.ssql;
		exception when others then
		tmp := '1';
	end;
	end loop;
	dbms_utility.compile_schema(v_vc_user,false);
end;
/
