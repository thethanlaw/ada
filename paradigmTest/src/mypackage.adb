with Ada.Text_IO; use Ada.Text_IO;
with MyUtilities;
with ImportedCLibs;

package body myPackage is

   procedure conditions is
      procedure f is
      begin
         null;
      end f;

      procedure g is
      begin
         null;
      end g;

      procedure h is
      begin
         null;
      end h;
      
      a, b : Boolean;
      
   begin
      
      a := True;
      b := True;

      if a then
         f;
      elsif b then
         g;
      else
         h;
      end if;

   end conditions;

   
   
   procedure longstrings is
      s : String := "Will this " &
     "compile?\n" & -- this is not a valid line return
     "Oh yes it will";
      n : Integer := s'Length;
      m : Integer := n+10;
   begin
      
      Put("integer = ");
      Put_line(Integer'Image(n));
      Put_Line(s);

      New_Line;
      Put_line(Integer'Image(n) & " " & Integer'Image(M));
      MyUtilities.swap(n,m);
      Put_line(Integer'Image(n) & " " & Integer'Image(M));

   end longstrings;
   
   
   
   function computeFactorial (n : Integer) return Integer
   is 
      function Factorial(n : Integer) return Integer;
      pragma import(C, Factorial, "factorial");
   begin
      return ImportedCLibs.factorial_import(n);
   end computeFactorial;
   
   
   
end myPackage;
