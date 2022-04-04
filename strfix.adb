-- string fixed length

with Ada.Text_IO;
with Ada.Strings;
with Ada.Strings.Fixed;


procedure strFix is
    strVar1             : String := "Hola julian";
    strVar2             : String := "Hola 123456";
    strLongRangeVar     :   String(1 .. 250);
    strTextVar          : String := "Si asigno debe igual al tamaño de este str";
    -- unAssigned : String;  -- esto cusa error
begin
    Ada.Strings.Fixed.Move(strVar1, strLongRangeVar);  -- source, destination
    Ada.Text_IO.Put_Line(strVar1);
    Ada.Text_IO.Put_Line(strLongRangeVar);
    Ada.Text_IO.Put_Line(Natural'Image(strTextVar'Length));
    
    -- raised ADA.STRINGS.LENGTH_ERROR, fuenta > destino   usar exception ...
    --Ada.Strings.Fixed.Move("aaaaaaaaaaaaaaaaaaaaaaaaa", strVar1); 
    --Ada.Text_IO.Put_Line(strVar1);
    --Ada.Text_IO.Put_Line(strLongRangeVar);

    strVar1 :=  "Hola 12345678";  -- Si es > o <  warning / error runtime
    strVar1 := strVar2;  -- asignación igual len
    strLongRangeVar := "no se puede, debe ser con Ada.Strings.Fixed.Move o de igual len";
    Ada.Text_IO.Put_Line(strLongRangeVar);


end strFix;
