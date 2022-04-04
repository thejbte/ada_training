-- gnatclean integers.adb && gnatmake integers.adb 
-- gnatmake -gnatwe integers.adb   // WARINGNS AS ERROR
-- this program for cretae a integer variable

with Ada.Text_IO;   -- import or include

procedure integers is 
    someInt : Integer := 44;
    someNatural :   natural := 0;
    somePostive :   positive := 1;  -- case sensitive  Positive or PoSiTiVe
begin
    someInt := 10;
    Ada.Text_IO.Put_Line("This is a Integer:" & Integer'Image(someInt));

    -- limits
    Ada.Text_IO.Put_Line("Integer  [" & Integer'Image(Integer'First)  & "] to [" & Integer'Image(Integer'lAST) &"]" );
    Ada.Text_IO.Put_Line("Natural  [" & Natural'Image(Natural'First)  & "] to [" & Natural'Image(Natural'lAST) &"]" );
    Ada.Text_IO.Put_Line("Positive [" & Positive'Image(Positive'First)  & "] to [" & Positive'Image(Positive'lAST) &"]" );
end integers;