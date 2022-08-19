@echo off
cls
:menu
cls
date /t

echo                                =========================================
echo                                * 1. Desligar a maquina em 30 minutos    +
echo                                * 2. Desligar a maquina em 1 hora        +
echo                                * 3. Desligar a maquina em 2 horas       +
echo                                * 4. Desligar a maquina em 3 horas       +
echo                                * 5. Desligar a maquina em 4 horas       +	
echo                                * 6. Voltar para o menu principal        +
echo                                =========================================

set /p opcao= Escolha uma opcao: 
echo ------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% GEQ 6 goto opcao6

:opcao1
shutdown -s -t 1800
goto menu
echo Desligamento agendado com sucesso.

:opcao2
shutdown -s -t 3600
goto menu
echo Desligamento agendado com sucesso.

:opcao3
shutdown -s -t 7200
goto menu
echo Desligamento agendado com sucesso.

:opcao4
shutdown -s -t 10800
goto menu
echo Desligamento agendado com sucesso.

:opcao5
shutdown -s -t 14400
goto menu
echo Desligamento agendado com sucesso.

:opcao6
start modMenuGui.bat
exit
goto menu
