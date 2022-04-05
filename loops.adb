--loops.adb

with Ada.Text_IO ;


procedure loops is
    varloop : boolean := True;
    counter : Integer := 0;
begin

    while varloop loop
        Ada.Text_IO.Put_Line("loop");
        if (counter >= 5) then
            varloop := false;
            exit ;
        end if;
        counter := counter +1;
        delay 0.5;
    end loop;
    
    Ada.Text_IO.Put_Line("--------------- loop with tag --------");
    varloop := true;
    tag_loop:
    while varloop loop
        Ada.Text_IO.Put_Line("loop");
        if (counter >= 10) then
            varloop := false;
            exit tag_loop;  -- only this loop
        end if;
        counter := counter +1;
        delay 0.5;
    end loop tag_loop;

    Ada.Text_IO.Put_Line("--------------- simple loop finite --------");
    loop
        Ada.Text_IO.Put_Line("loop");
        if (counter >= 15) then
            exit ;
        end if;
        counter := counter +1;
        delay 0.5;
    end loop;

    Ada.Text_IO.Put_Line("--------------- simple loop finite other way --------");
    counter := 0;
    loop
        Ada.Text_IO.Put_Line(Natural'Image(counter));
        counter := counter +1;
        exit when counter = 5 ;  -- remove for infinite loop
        delay 0.5;
    end loop;

    Ada.Text_IO.Put_Line("--------------- for loop--------");

    for iter in 0 .. 5 loop  -- [0,5]
        Ada.Text_IO.Put_Line("for iter: [" & Natural'Image(iter) & "]");
    end loop;

    Ada.Text_IO.Put_Line("---------------reverse for loop--------");

    for iter in reverse 0 .. 5 loop  -- [0,5]
        Ada.Text_IO.Put_Line("for iter: [" & Natural'Image(iter) & "]");
    end loop;

end loops;