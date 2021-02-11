package body SpeedBattery is



   function RateBattery(Speed:Integer) return Integer is
      BatteryUsage:Integer;
   begin
      if Speed>0 and Speed<=20 then
         BatteryUsage:=1;
      elsif Speed>20 and Speed<=40 then
         BatteryUsage:=2;
      elsif Speed>40 and Speed<=60 then
         BatteryUsage:=3;
      elsif Speed>60 and Speed<=100 then
         BatteryUsage:=6;
      elsif Speed>100 and Speed<=120 then
         BatteryUsage:=8;
      else
         BatteryUsage:=0;
      end if;
      return BatteryUsage;
   end RateBattery;
end SpeedBattery;
