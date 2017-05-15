# mp3gainBatchNormalizer

These are simple batch scripts that use MP3Gain to normalize mp3 files to a fixed target volume of 95 dB. The purpose of these batch scripts is to easily normalize mp3 files, especially those with Japanese, Chinese, and Korean characters in the filenames, which MP3Gain GUI currently does not support.

About MP3Gain: MP3Gain is an audio normalization software tool that uses statistical analysis to determine how loud an mp3 file sounds to the human ear, and adjusts the perceived loudness of the mp3 file.

For more info, see: http://mp3gain.sourceforge.net/

Tested on: Windows 8.1, Windows 10

# Usage:

Drag and dropping files (**normalize_to_95db.bat**)

1.) Drag and drop the mp3 files that you want to adjust onto "**normalize_to_95db.bat**"

Drag and dropping folders (**normalize_DIR_to_95db.bat**)

1.) Drag and drop a folder onto "**normalize_DIR_to_95db.bat**"

Note:
* non-mp3 files will simply be skipped
* **normalize_DIR_to_95db.bat** will also process .mp3 files in subdirectories
* due to limits in how long command arguments can be in Windows, the limit for amount of files that can be drag and dropped onto **normalize_to_95db.bat** is around 80, depending on how long filenames are. If you want to batch many files, put mp3 files in a folder and use **normalize_DIR_to_95db.bat**
