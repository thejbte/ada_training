-- gnatclean integers.adb && gnatmake integers.adb 
-- gnatmake -gnatwe integers.adb   // WARINGNS AS ERROR
-- this program for cretae a integer variable

with Ada.Text_IO;   -- import or include

procedure integers is 
    someInt : Integer := 44;
    someNatural :   natural := 0;
    somePostive :   positive := 1;  -- case sensitive  Positive or PoSiTiVe
    someLongInt :   Long_Integer := 2**32;
begin
    someInt := 10;
    Ada.Text_IO.Put_Line("This is a Integer:" & Integer'Image(someInt));

    -- limits
    Ada.Text_IO.Put_Line("Integer (32 bits)       [" & Integer'Image(Integer'First)  & "] to [" & Integer'Image(Integer'lAST) &"]" );
    Ada.Text_IO.Put_Line("Natural                 [" & Natural'Image(Natural'First)  & "] to [" & Natural'Image(Natural'lAST) &"]" );
    Ada.Text_IO.Put_Line("Positive                [" & Positive'Image(Positive'First)  & "] to [" & Positive'Image(Positive'lAST) &"]" );
    Ada.Text_IO.Put_Line("Long_Integer (64 bits)  [" & Long_Integer'Image(Long_Integer'First)  & "] to [" & Long_Integer'Image(Long_Integer'lAST) &"]" );

    -- cast float to integer 
    SomeInt := 44 + Integer( 27.87);  -- redondea
    Ada.Text_IO.Put_Line(Integer'Image(SomeInt));
end integers;