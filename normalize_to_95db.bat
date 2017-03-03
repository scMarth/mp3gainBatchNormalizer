set batchpath=%~dp0%

:loop

@echo off

set fullpath=%1
set filename="%~nx1%"
set folder=%~dp1%
set fileExtension=%~x1

echo fullpath = %fullpath%
echo filename = %filename%
echo folder = %folder%
echo batchpath = %batchpath%
echo fileExtension = "%fileExtension%"

if not "%fileExtension%" == ".mp3" (
   echo "%fileExtension% not an .mp3 file, skipping"
	goto skip
)

rename %filename% "temporary_filename_500.mp3"
REM -c : ignore clipping
REM -r : apply track gain
REM -d 6.0 : makes it 95.0 dB (default to 89.0 dB)
call "%batchpath%mp3gain" -c -r -d 6.0 "%folder%temporary_filename_500.mp3"

rename "%folder%temporary_filename_500.mp3" %filename%

:skip
shift
if not "%~1"=="" goto loop

rem pause