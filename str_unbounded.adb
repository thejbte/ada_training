-- str_unbounded.adb
-- string ilimitado

with Ada.Text_IO;
with Ada.Strings.Unbounded;


procedure str_unbounded is
    --This is
    --how assignment to the unbounded string works. Any string in Ada
    --that is "" is a String of fixed length and cannot be simply assigned
    --to an unbounded string variable. This is due to the strict typing of
    --the language.
    
    strVar1 : Ada.Strings.Unbounded.Unbounded_String := Ada.Strings.Unbounded.To_Unbounded_String("Hello, ");
    strVar2 : Ada.Strings.Unbounded.Unbounded_String := Ada.Strings.Unbounded.To_Unbounded_String("World");  -- variable : tipo := inicializacion

begin
    Ada.Text_IO.Put_Line(Ada.Strings.Unbounded.To_String(strVar1)); 
    Ada.Strings.Unbounded.Append(strVar1, strVar2);     -- dest, source  -> destsource
    Ada.Text_IO.Put_Line(Ada.Strings.Unbounded.To_String(strVar1));
    Ada.Text_IO.Put_Line(       --puts
        Natural'Image(          -- to_str(numValue)
            Ada.Strings.Unbounded.Length(strVar1) -- get length
        )
    );

end str_unbounded;