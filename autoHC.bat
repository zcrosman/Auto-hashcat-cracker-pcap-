set wordlistdir=D:\hashcat-6.0.0\hashcat-6.0.0\Top1pt8Billion-WPA-probable-v2.txt
set hcdir=D:\hashcat-6.0.0\hashcat-6.0.0
set handdir=D:\hashcat-6.0.0\hashcat-6.0.0\handshakes


if not exist %handdir%\hccapx mkdir %handdir%\hccapx

:convert
for /f %%f in ('dir /b /s %handdir%\*') ^
do %hcdir%\hashcat-utils-1.9\bin\cap2hccapx.exe %%f %handdir%\hccapx\%%~nf.hccapx

PAUSE

copy /b %handdir%\hccapx\*.hccapx %handdir%\hccapx\combined.hccapx
goto crack


:menu
cls
echo Menu
echo ...............
echo 1 - crack handshakes
echo 2 - list cracked handshakes
echo 

SET /P M=Type 1 or 2 then press ENTER:
IF %M%==1 GOTO crack
IF %M%==2 GOTO list

:choosewl
cls
echo Choose Wordlist
echo ...............
for /f %%w in ('dir /b /s %wirdlistdir%) echo %%w

PAUSE
:crack
d:
cd %hcdir%
hashcat.exe -m 2500 %handdir%\hccapx\combined.hccapx D:\EH\hashcat-6.0.0\hashcat-6.0.0\Top1pt8Billion-WPA-probable-v2.txt
PAUSE
goto menu

:list
d:
cd %hcdir%
hashcat.exe -m 2500 --show %handdir%\hccapx\combined.hccapx
pause 
goto menu
