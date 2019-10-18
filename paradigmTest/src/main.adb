with Ada.Text_IO; use Ada.Text_IO;
with myPackage; use myPackage;

procedure Main is
begin

   longstrings;

   -- Factorial
   for i in 0..10 loop
      Put_Line("factorial(" & Integer'Image(i) & ") = " &
                Integer'Image(computeFactorial(i)));
   end loop;



end Main;

