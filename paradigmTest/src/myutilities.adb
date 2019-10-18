package body MyUtilities is

   procedure swap(a, b: in out Integer) is
      temp : Integer;
   begin
      temp := a;
      a := b;
      b := temp;
   end swap;

end MyUtilities;
