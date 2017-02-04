set batchpath=%~dp0%

:loop

@echo off

set fullpath=%1
set filename="%~nx1%"
set folder=%~dp1%

echo fullpath = %fullpath%
echo filename = %filename%
echo folder = %folder%
echo batchpath = %batchpath%


rename %filename% temporary_filename_500.mp3

REM -c : ignore clipping
REM -r : apply track gain
REM -d 6.0 : makes it 95.0 dB (default to 89.0 dB)

%batchpath%mp3gain -c -r -d 6.0 %folder%temporary_filename_500.mp3

rename %folder%temporary_filename_500.mp3 %filename%

shift
if not "%~1"=="" goto loop

REM pause