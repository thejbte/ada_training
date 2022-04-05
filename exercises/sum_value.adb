-- You work at an accounting office for a trucking company. One
-- day you receive the following six invoices for things that need to
-- be paid. Some of the numbers are integers and some are floats.
-- Create a small report where all of these values will be listed as well
-- as the sum.

-- ------------------------------
-- 440 Oil change
-- 98.40 Washing fluid
-- 23 Air filter
-- 900.40 Fuel
-- 71.49 Company pizza luncheon
-- 90.01 Fuel
-- ------------------------------


with Ada.Text_IO;
with Ada.Float_Text_IO;

procedure sum_value is
    oilChange : Natural := 440;
    washingFluid : Float := 98.40;
    airFilter : Natural := 23;
    companyPizza : Float := 900.40;
    fuel : Float := 90.01;
    total : Float := 0.0;
begin
    Ada.Text_IO.Put_line("----------------------------------");
    Ada.Text_IO.Put_Line( Natural'Image(oilChange) & "   Oil change");
    
    Ada.Float_Text_IO.Put(washingFluid, Exp =>0);
    Ada.Text_IO.Put_Line("   Washing fluid");

    Ada.Text_IO.Put_Line(Natural'Image(airFilter) & "   Air filter");
    
    Ada.Float_Text_IO.Put(fuel, Exp =>0);
    Ada.Text_IO.Put_Line("   Fuel");

    Ada.Float_Text_IO.Put(companyPizza, Exp =>0);
    Ada.Text_IO.Put_Line("   Company pizza luncheon");

    -- Casting
    total := fuel + washingFluid + Float(airFilter) + Float(oilChange)+ companyPizza;

    Ada.Text_IO.Put_Line(Float'Image(total));
    Ada.Float_Text_IO.put(total, Exp =>0); -- notation non-scientific
    Ada.Text_IO.Put_line("----------------------------------");
end sum_value;