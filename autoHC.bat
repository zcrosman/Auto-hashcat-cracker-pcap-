set wordlistdir=D:\hashcat-6.0.0\hashcat-6.0.0\wordlist.txt
set hcdir=D:\hashcat-6.0.0\hashcat-6.0.0
set handdir=D:\hashcat-6.0.0\hashcat-6.0.0\handshakes


if not exist %handdir%\cap mkdir %handdir%\cap

for /f %%f in ('dir /b /s %handdir%\*')^ 
 do %hcdir%\hashcat-utils-1.9\bin\cap2hccapx.exe %%f %handdir%\cap\%%~nf.hccapx

PAUSE

for /f %%f in ('dir /b /s D:\EH\hashcat-6.0.0\hashcat-6.0.0\handshakes\cap\*') do %hcdir%\hashcat.exe -m 2500 %%f %wordlist%

PAUSE
