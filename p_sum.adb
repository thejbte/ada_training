-- [
--  Procedure to add of two numbers
-- ]

-- <
--	@param V_A  	input value for add
--	@param V_B		input value for add	
--	@param V_RES	variable for store result of add
-- >

procedure P_SUM ( V_A 	: in Integer;
								  V_B 	: in Integer;
									V_RES	: in out Integer) is									
begin
	V_RES := V_A + V_B;
end P_SUM;