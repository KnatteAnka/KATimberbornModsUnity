cls
echo Running DeleteZipAndMeta %1 >Log.txt
Echo Deleting older files than %2 days
echo .
set "variable=%1" >>Log.txt
set "variable=%variable:/=\%" >>Log.txt
echo .
cd %variable%
echo .
echo Del /S "%variable%\*.meta"
echo .
RD /S /Q %variable%
rem ForFiles /m *.zip /d -%2 /c "cmd /c del @file"