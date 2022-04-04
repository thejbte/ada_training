

-- float types

with Ada.Text_IO ;

with Ada.Float_Text_IO;  -- for print with non-scientific notation

procedure floats is
    someFloat : Float := 27.27;
    total     : Float :=0.0;
begin
    total := someFloat+ 512.27;
    Ada.Text_IO.Put_Line("Float (128 bits) [" & Float'Image(Float'First)  & "] to [" & Float'Image(Float'lAST) &"]" );
    Ada.Text_IO.Put_Line("Total is: " & Float'Image(total) );  --scientific notation
    Ada.Float_Text_IO.Put(total, Exp =>0 );  -- non-scientific notation

    -- cast integer to float 
    -- someFloatValue := Float( SomeInt)   // como en C
    

end floats;
