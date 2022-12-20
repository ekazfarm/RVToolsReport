rem =========
rem Send mail
rem =========
cd \Users\eka\Documents
C:\Users\eka\AppData\Local\Programs\Python\Python311\python.exe C:\Users\eka\Documents\sending6.py

echo off
color E
SET A=%date:~-7,2%"-"%date:~-10,2%"-"%date:~-4,4%
echo %A%
mkdir %A%

timeout /t 10

move RVTools.xlsx C:\Users\user\Documents\%A%