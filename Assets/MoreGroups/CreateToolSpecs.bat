echo off
cd Specifications
:Init
set Prefix=ToolSpecification.
set Suffix=.json
cls
set /P BaseFile="Basefile to copy? (-.json)"
set /P Faction="Faction to create?"
:start

set /P Question="Prefab name? (n to close,r to restart)"
rem echo on
if /I %Question% == N (
 	exit
 )
if /I %Question% == R (
 	goto Init
 )
rem @echo on
echo Copying: %BaseFile%.json to %Prefix%%Question%.%Faction%%Suffix%
copy "%BaseFile%.json" "%Prefix%%Question%.%Faction%%Suffix%"
rem @echo off
echo -------------------------------------------------------------


goto start:
