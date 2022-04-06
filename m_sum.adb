with Ada.Text_IO;
with P_SUM;	-- procedure func

-- [
--	main procedure
-- ]

procedure m_sum is
	V_RESULT : Integer := 0;-- variable for store result
begin
	P_SUM(2,4,V_RESULT);	-- call procedure as function in c
	Ada.Text_IO.Put_Line(Integer'Image(V_RESULT));


end M_SUM;
