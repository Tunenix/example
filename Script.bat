@echo off
::echo Chargement de la couleur du texte...

::ping localhost -n 2 >nul

::color 0a

::echo Chargement du titre...

::ping localhost -n 2 >nul

::title Bienvenu!

::echo Chargement...

::ping localhost -n 2 >nul

:setup
cls


dir Prefer.dat > nul
if %errorlevel% GTR 0 ( echo not found directory & goto filenotexust ) else ( goto fileexist )
echo %errorlevel%

:filenotexust
cls
:: basic username
:: basic color
set "chost=SamIsHome"
set "colo=7"
(
  echo %colo%
  echo %chost%
  echo %galery%
) > Prefer.dat

echo %colo%
echo %chost%

goto actualsetup


:fileexist
< Prefer.dat (
  set /p colo=
  set /p chost=
)
goto actualsetup

:actualsetup
title Sam's Command
if "%colo%" == "blue" ( color 1 & goto cmdbar )
if "%colo%" == "green" ( color 2 & goto cmdbar )
if "%colo%" == "light green" ( color a & goto cmdbar )
if "%colo%" == "cyan" ( color b & goto cmdbar )
if "%colo%" == "aqua" ( color 3 & goto cmdbar )
if "%colo%" == "red" ( color 4 & goto cmdbar )
if "%colo%" == "light red" ( color c & goto cmdbar )
if "%colo%" == "purple" ( color 5 & goto cmdbar )
if "%colo%" == "pink" ( color d & goto cmdbar )
if "%colo%" == "light purple" ( color d & goto cmdbar )
if "%colo%" == "yellow" ( color 6 & goto cmdbar )
if "%colo%" == "white" ( color 7 & goto cmdbar )
if "%colo%" == "whiter" ( color f & goto cmdbar )
if "%colo%" == "more white" ( color f & goto cmdbar )
if "%colo%" == "light white" ( color f & goto cmdbar )
if "%colo%" == "bright white" ( color f & goto cmdbar )
if "%colo%" == "grey" ( color 8 & goto cmdbar )
if "%colo%" == "dark blue" ( color 9 & goto cmdbar )
if "%colo%" == "black" ( color 0 & goto cmdbar )
color %colo%


:cmdbar
cls
echo ****************************************
echo *                 MENU1                *
echo ****************************************
echo Choisir parmi les options suivantes :
echo 1.	Toolkit
echo 2.	Useful
echo 3.	Entertainment
echo 4.	Information
echo 5.	Configuration
echo 6.	Quitter
echo ******************************************
set /p "cmdos=C:}%chost%> Quel est votre choix? (1-7): " 
if ["%cmdos%"] == ["1"] cls & goto Toolkit

if ["%cmdos%"] == ["2"] cls & goto Useful

if ["%cmdos%"] == ["3"] cls & goto Entertainment

if ["%cmdos%"] == ["4"] cls & goto Information

if ["%cmdos%"] == ["5"] cls & goto Configuration

if ["%cmdos%"] == ["6"] cls & goto Quitter

if ["%cmdos%"] == [" "] cls & goto 404

:404
 echo Entrez un choix valable entre (1-6)
  pause
  goto cmdbar


:MENU

  cls
  echo ****************************************
  echo *                 MENU2                *
  echo ****************************************
  echo Choisir parmi les options suivantes :
  echo 1.	Creer le dossier DATA
  echo 2.	Copier les donnees de diagnostic
  echo 3.	Afficher le dossier DOS
  echo 4.	Renommer le dossier DATA
  echo 5.	Supprimer le dossier BACKUP
  echo 6.	Lancer NOTEPAD
  echo 7.	Quitter
  echo ******************************************
  set /p "choix=C:}%chost%> Quel est votre choix? (1-7): " 

  if ["%choix%"] == ["1"] cls & goto choix1

  if ["%choix%"] == ["2"] cls & goto choix2

  if ["%choix%"] == ["3"] cls & goto choix3

  if ["%choix%"] == ["4"] cls & goto choix4

  if ["%choix%"] == ["5"] cls & goto choix5

  if ["%choix%"] == ["6"] cls & goto choix6

  if ["%choix%"] == ["7"] cls & goto choix7
  
  if ["%choix%"] == [" "] goto :ERROR

  :ERROR
  echo Entrez un choix valable entre (1-7)
  pause
  goto MENU
  :choix1
  echo Creation du repertoire "DATA"
  pause

  :: La command pour executer:
  md C:\DOS\DATA

  echo Le repertoire C:\DOS\DATA a ete cree
  pause
  goto MENU
  :choix2
  echo Appuyez sur une touche pour copier tous les fichiers 
  echo et les dossiers du C:\DOS\DIAGNOSTICS dans le dossier C:\DOS\DATA
  pause > nul 

  :: La command pour executer:
  xcopy C:\DOS\diagnostics C:\DOS\DATA\ /s /e

  echo Les donnees ont ete copiees du dossier C:\DOS\DIAGNOSTICS 
  echo dans le dossier C:\DOS\DATA
  pause
  goto MENU

  :choix3

  :: La command pour executer:

  dir C:\DOS\ /s

  echo Affichage termine
  pause
  goto MENU

  :choix4
  echo Appuyez sur une touche pour renommer le dossier
  pause > nul 

  :: La command pour executer:
  ren C:\DOS\DATA BACKUP

  echo Le dossier a ete renomme
  pause 
  goto MENU

  :choix5
  echo Appuyez sur une touche pour supprimer le dossier BACKUP
  pause > nul

  :: La command pour executer:
  rd C:\DOS\BACKUP /s /q

  echo Le dossier a ete supprime
  pause
  goto MENU

  :choix6
  echo Appuyez sur une touche pour lancer Notepad
  pause > nul 

  :: La command pour executer:
  start notepad.exe

  echo Appuyez sur une touche pour revenir au menu principal
  pause > nul 
  goto MENU
  :choix7

  set /p ""y=C:}%chost%> Voulez-vous vraiment quitter le programme? (O/N):"
  if %y% == o goto eof
  goto MENU



  :eof
  echo Au revoir!
  ping localhost -n 2 >nul
  exit

:Configuration






:custom_save
del Prefer.dat
timeout 1 > nul
(
  echo %colo%
  echo %chost%
  echo %galery%
) > Prefer.dat

if %errorlevel% GTR 0 ( echo There was an issue whilst saving your data... & pause ) else ( echo Sucessfuly Saved! & timeout 1 > nul )

goto cmdbar



:custom_color
  set /p "colo=What color would you whant?: "
  if "%colo%" == "blue" ( color 1 & goto cmdbar )
  if "%colo%" == "green" ( color 2 & goto cmdbar )
  if "%colo%" == "light green" ( color a & goto cmdbar )
  if "%colo%" == "cyan" ( color b & goto cmdbar )
  if "%colo%" == "aqua" ( color 3 & goto cmdbar )
  if "%colo%" == "red" ( color 4 & goto cmdbar )
  if "%colo%" == "light red" ( color c & goto cmdbar )
  if "%colo%" == "purple" ( color 5 & goto cmdbar )
  if "%colo%" == "pink" ( color d & goto cmdbar )
  if "%colo%" == "light purple" ( color d & goto cmdbar )
  if "%colo%" == "yellow" ( color 6 & goto cmdbar )
  if "%colo%" == "white" ( color 7 & goto cmdbar )
  if "%colo%" == "whiter" ( color f & goto cmdbar )
  if "%colo%" == "more white" ( color f & goto cmdbar )
  if "%colo%" == "light white" ( color f & goto cmdbar )
  if "%colo%" == "bright white" ( color f & goto cmdbar )
  if "%colo%" == "grey" ( color 8 & goto cmdbar )
  if "%colo%" == "dark blue" ( color 9 & goto cmdbar )
  if "%colo%" == "black" ( color 0 & goto cmdbar )
  color %colo%
  if %errorlevel% GTR 0 ( pause & goto cmdbar )
  goto cmdbar
