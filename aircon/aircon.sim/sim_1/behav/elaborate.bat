@echo off
set xv_path=D:\\xilinx\\Vivado\\2016.1\\bin
call %xv_path%/xelab  -wto c4b8bfdb27ae40cbacd82d10f69a188b -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot aircon_sim_behav xil_defaultlib.aircon_sim xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
