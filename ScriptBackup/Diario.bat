@echo off

REM ******* Variaveis Padrão *******

set DEL=del C:\ScriptBackup\Logs\Diario\*.* /q
set ORIGEM=C:\PastaB\
set DESTINO=C:\PastaA\
set CMD=robocopy %ORIGEM% %DESTINO% /E /ZB /COPYALL /R:0 /W:0 /V /NP /ETA /LOG:%LOG% >null
set RELATORIO=Segue Relatorio de Backup:
set LOG=C:\ScriptBackup\Logs\Diario\backup_bkp.txt

REM ******* Variaveis Opcionais **********

set INICIO=Backup Iniciado
set DATA=date /t
set HORARIO=time /t
set FIM=Backup Finalizado

REM ********* Script ************************

title Loanding... Aguarde
color a
set load=
set/a loadnum=0

:loading
set load=%load%Û
cls
echo Iniciando... Aguarde
echo -----------------------------------------
echo %load%
echo -----------------------------------------

REM ******** Comando de Copia de Dados ***********

%CMD%

set/a loadnum=%loadnum% +1
if %loadnum%==100 goto done

goto loading
:done
echo.
echo Backup Completo...
pause

exit