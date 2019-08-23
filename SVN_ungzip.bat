
set todate=%date:~0,4%%date:~5,2%%date:~8,2%
SET b=.tar.gz 
SET file=%todate%%b% 
"C:\Program Files\7-Zip\7z.exe"  x  %file%
SET b=.tar 
SET file=%todate%%b% 
"C:\Program Files\7-Zip\7z.exe"  x  %file%



svn add *
svn commit -m "%todate% %time%"
cd ..
del %file%
rd /s/q  %todate%
echo  %time%
 pause
