-- gnatmake -gnatwe bool_t.adb
-- boolean type
with Ada.Text_IO;

procedure bool_t is
    bit0 : Boolean := True;
    bit1 : Boolean := False;
    bit2 : Boolean := True;

begin
    Ada.Text_IO.Put_Line("Bool: " & 
        Boolean'Image(bit0) &
        Boolean'Image(bit1) &
        Boolean'Image(bit2) );

    Ada.Text_IO.Put_Line("bitwise: ");
    Ada.Text_IO.Put_Line("and: " & Boolean'Image(bit0 and bit1) );
    Ada.Text_IO.Put_Line("or:  " & Boolean'Image(bit0 or bit1));
    Ada.Text_IO.Put_Line("xor: " & Boolean'Image(bit0 xor bit1) );
    Ada.Text_IO.Put_Line("not: " & Boolean'Image(not bit1) );


end bool_t;

-- xor 1 1   0   ^ 0  0   0  de resto 1