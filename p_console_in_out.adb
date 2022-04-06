-- {
--	using emacs editor
-- }
  
with Ada.Text_IO;
with Ada.Integer_Text_IO;	--	for get and put integer

-- [
--	This procedure is for get and put integer value
-- ]

-- <
--	data structure descriptions description
--	further description
-- >

procedure P_CONSOLE_IN_OUT is
	N : Integer;
begin
	-- Put a String
	Ada.Text_IO.Put ("Enter an integer value: ");

	-- Read in an integer value
	Ada.Integer_Text_IO.Get (N);
	--Ada.Text_IO.New_Line;
	
	if N > 0 then
		-- put an integer
		--Ada.Text_IO.Put (Integer'Image(N));
		Ada.Integer_Text_IO.Put(N);	-- print Integer
		Ada.Text_IO.Put_Line (" is apositive number");
	end if;

end P_CONSOLE_IN_OUT;