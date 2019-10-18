WITH Ada.Text_IO;

PROCEDURE HelloWorld IS
   package cout renames Ada.Text_IO;
BEGIN
   cout.Put_Line("Hello, World! Feeling lucky punk?");
end HelloWorld;
