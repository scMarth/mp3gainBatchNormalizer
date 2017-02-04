:loop

@echo off


set filename="%~nx1%"

rename %filename% temporary_filename_500.mp3

REM -c : ignore clipping
REM -r : apply track gain
REM -d 6.0 : makes it 95.0 dB (default to 89.0 dB)

mp3gain -c -r -d 6.0 temporary_filename_500.mp3
rename temporary_filename_500.mp3 %filename%

shift
if not "%~1"=="" goto loop

REM pause