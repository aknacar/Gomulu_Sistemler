`timescale 1ns / 1ps
module aircon(
    input temp_low,temp_high,auto_temp,
    input manual_heat,manual_cool, manual_fan,
    output heater_on,cooler_on,fan_on
    );
    assign heater_on = (temp_low & auto_temp) | manual_heat;
    assign cooler_on = (temp_high & auto_temp) | manual_cool;
    assign fan_on = heater_on | cooler_on | manual_fan; 
endmodule