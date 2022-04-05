-- switch_case.adb

with Ada.Text_IO;

procedure switch_case is
    value : Integer := 0;
    type dias_t is (lunes,martes,miercoles,jueves,viernes,sabado,domingo);
    hoy : dias_t := lunes;

begin

    case value is
        when 0 =>
            Ada.Text_IO.Put_Line("0");
        when 1 =>
            Ada.Text_IO.Put_Line("1");
        when 2 .. 4 =>
            Ada.Text_IO.Put_Line("desde 2 hasta 4 ");
        when 5 .. 9 | 10 | 11 =>  -- .. son entre 
            Ada.Text_IO.Put_Line("entre 5 y 9 o cualquiera 9,100 o 11");     
        when others =>
            Ada.Text_IO.Put_Line("others");    
    end case; 

    case hoy is
        when lunes =>
            Ada.Text_IO.Put_Line("lunes");
        when martes =>
            Ada.Text_IO.Put_Line("martes");
        when miercoles =>
            Ada.Text_IO.Put_Line("miercoles");
        when jueves .. viernes | sabado | domingo =>  -- .. son entre 
            Ada.Text_IO.Put_Line("jueves & viernes | sabado | domingo");     
        when others =>
            Ada.Text_IO.Put_Line("others");    
    end case; 

-- If statement
    if value = 0 then
        Ada.Text_IO.Put_Line("if true");  
    else 
        Ada.Text_IO.Put_Line("if false");  
    end if;      

    if value = 1 then
        Ada.Text_IO.Put_Line("if true");  
    elsif value >5 then 
        Ada.Text_IO.Put_Line("elsif true");  
    end if;    
end switch_case;