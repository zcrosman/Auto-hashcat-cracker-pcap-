set wordlistdir=D:\hashcat-6.0.0\hashcat-6.0.0\Top1pt8Billion-WPA-probable-v2.txt
set hcdir=D:\hashcat-6.0.0\hashcat-6.0.0
set handdir=D:\hashcat-6.0.0\hashcat-6.0.0\handshakes


if not exist %handdir%\cap mkdir %handdir%\cap

:convert
for /f %%f in ('dir /b /s %handdir%\*') ^
do %hcdir%\hashcat-utils-1.9\bin\cap2hccapx.exe %%f %handdir%\cap\%%~nf.hccapx

PAUSE
copy /b %handdir%\cap\*.hccapx %handdir%\cap\combined.hccapx

PAUSE
:crack
%hcdir%\hashcat.exe -m 2500 %handdir%\cap\combined.hccapx D:\EH\hashcat-6.0.0\hashcat-6.0.0\Top1pt8Billion-WPA-probable-v2.txt

PAUSE
