
with Ada.Text_IO;

-- [
--	nested procedure
-- ]

procedure  P_PROCEDURE_NESTED is

	procedure P_NESTED is
		V_INDEX_PROCEDURE : Integer := 1; 
	begin
		Ada.Text_IO.Put_Line ("Nested procedure " & Integer'Image(V_INDEX_PROCEDURE));
	end P_NESTED;

	procedure P_NESTED_2 is
		V_INDEX_PROCEDURE_2 : Integer := 2;
	begin
		Ada.Text_IO.Put_Line ("Nested procedure " & Integer'Image(V_INDEX_PROCEDURE_2));
	end P_NESTED_2;
	
begin
	P_NESTED; -- call to nested
	P_NESTED_2;
end P_PROCEDURE_NESTED;
