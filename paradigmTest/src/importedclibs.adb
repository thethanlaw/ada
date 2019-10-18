package body ImportedCLibs is

   function factorial_import(n : Integer) return Integer
   is
      function factorial(n : Integer) return Integer;
      pragma import(C, factorial);
   begin
      return factorial(n);
   end factorial_import;

end ImportedCLibs;
