with Ada.Text_IO; use Ada.Text_IO;

package body BatteryLevel is
  

   procedure BatteryResponse (Battery : Integer) is
   
      
begin
   case Battery is
      when 100 =>
         Put_Line("Battery is fully charged");
      when 76 .. 99 =>          
         Put_Line("Battery has sufficient charge");
      when 75 =>
         Put_Line("Battery at 75% charge");
      when 50 =>
         Put_Line("Battery at 50% charge");
      when 26 .. 49 =>
         Put_Line("Battery below 50% charge");
      when 25 =>
         Put_Line("Battery at 25% charge");
      when 11 .. 24 =>
         Put_Line("Battery almost depleted, please recharge soon");
      when 1 .. 10 =>
         Put_Line("Battery almost depleted, please recharge immediately");
      when 0 =>
         Put_Line("Battery depleted. Recharge now.");   
      when others =>
         Put_Line("Issue detected in battery monitoring. Please service vehicle");
         
   end case;
   
end BatteryResponse;
end BatteryLevel;
