`timescale 1ns / 1ps
module aircon_sim();
    reg temp_low,temp_high,auto_temp;
    reg manual_heat,manual_cool, manual_fan;
    wire heater_on,cooler_on,fan_on;     
    aircon UUT(.temp_low(temp_low), .temp_high(temp_high), .auto_temp(auto_temp), .manual_heat(manual_heat),
    .manual_cool(manual_cool), .manual_fan(manual_fan), .heater_on(heater_on), .cooler_on(cooler_on), .fan_on(fan_on));
    initial begin
        temp_low=0;
        temp_high=0;
        auto_temp=0;
        manual_heat=0;
        manual_cool=0;
        manual_fan=0;
        #20 temp_low=1;
        #20 temp_high=1;
        #20 auto_temp=1;
        #20 manual_heat=1;
        #20 manual_cool=1;
        #20 manual_fan=1;
                #20 temp_low=1;
                #20 temp_high=0;
                #20 auto_temp=1;
                #20 manual_heat=1;
                #20 manual_cool=0;
                #20 manual_fan=0;
                                #20 temp_low=0;
                                #20 temp_high=1;
                                #20 auto_temp=0;
                                #20 manual_heat=0;
                                #20 manual_cool=1;
                                #20 manual_fan=1;
        #40;     
    end
    initial begin
            $monitor("temp_low=%d, temp_high=%d, auto_temp=%d, manual_heat=%d, manual_cool=%d, manual_fan=%d, heater_on=%d,cooler_on=%d,fan_on=%d",
            temp_low,temp_high,auto_temp,manual_heat,manual_cool, manual_fan,heater_on,cooler_on,fan_on);
        end
    
endmodule
