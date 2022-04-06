-- gnatmake -gnatwe P_BOOL.adb
-- boolean type
with Ada.Text_IO;

procedure M_BOOL is
    V_IS_ENABLE_bit0 : Boolean := True;
    V_IS_ENABLE_bit1 : Boolean := False;
    V_IS_ENABLE_bit2 : Boolean := True;

begin
    Ada.Text_IO.Put_Line("Bool: " & 
        Boolean'Image(V_IS_ENABLE_bit0) &
        Boolean'Image(V_IS_ENABLE_bit1) &
        Boolean'Image(V_IS_ENABLE_bit2) );

    Ada.Text_IO.Put_Line("bitwise: ");
    Ada.Text_IO.Put_Line("and: " & Boolean'Image(V_IS_ENABLE_bit0 and V_IS_ENABLE_bit1) );
    Ada.Text_IO.Put_Line("or:  " & Boolean'Image(V_IS_ENABLE_bit0 or V_IS_ENABLE_bit1));
    Ada.Text_IO.Put_Line("xor: " & Boolean'Image(V_IS_ENABLE_bit0 xor V_IS_ENABLE_bit1) );
    Ada.Text_IO.Put_Line("not: " & Boolean'Image(not V_IS_ENABLE_bit1) );


end M_BOOL;

-- xor 1 1   0   ^ 0  0   0  de resto 1