@echo off
cls
:menu
cls
color 0
echo 3
echo 2
echo 1...
echo Iniciado com sucesso !!
echo Version 1.00.0.0  
date /t

echo Máquina: %computername%        Nome do usuario: %username%
                   
echo                                           	        MOD MENU GUI
echo                     =============================================================================
echo                    * 1.  Esvaziar a Lixeira                                                      +
echo                    * 2.  Escanear Disco Local(Executar o Mod Menu Gui como Administrador)        +
echo                    * 3.  Painel de Controle                                                      +
echo                    * 4.  Iniciar o Google Chrome(se tiver instalado na maquina)                  +
echo                    * 5.  Iniciar o Microsoft Edge(se tiver instalado na maquina)                 +
echo                    * 6.  Iniciar o Outlook(se tiver instalado na maquina)                        +
echo                    * 7.  Iniciar o Word(se tiver instalado na maquina)                           +
echo                    * 8.  Agendar um desligamento(Não funciona quando executa como Administrador)+
echo                    * 9.  Iniciar o Brave(se tiver instalado na maquina)                          +
echo                    * 10. Iniciar o Excel(se tiver instalado na maquina)                          +
echo                    * 0.  Sair                                                                    +
echo                     =============================================================================

set /p opcao= Escolha uma opcao: 
echo ------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% equ 6 goto opcao6
if %opcao% equ 7 goto opcao7
if %opcao% equ 8 goto opcao8
if %opcao% equ 9 goto opcao9
if %opcao% equ 10 goto opcao10
if %opcao% GEQ 0 goto opcao0

:opcao1
cls
rd /S /Q c:\$Recycle.bin
echo ===================================
echo *      Lixeira Esvaziada          *
echo ===================================
pause
goto menu

:opcao2
cls
echo ===================================
echo *     Escaneamento de disco       *
echo ===================================
chkdsk c:
pause
goto menu

:opcao3
cls
control.exe
pause
goto menu

:opcao4
start chrome.exe
goto menu

:opcao5
start msedge.exe
goto menu

:opcao6
start OUTLOOK.exe
goto menu

:opcao7
start WINWORD.exe
goto menu

:opcao8
start mensagem.bat
exit

:opcao9
start brave.exe
pause
go to menu

:opcao10
start EXCEL.exe
goto menu

:opcao0
cls
exit
