@echo off

:menu
echo seleccione una opcion
echo 1= copiar directorio
echo 2= eliminar directorio
echo 3 = salir

set /p opcion=
if %opcion%==1 goto :copiar
if %opcion%==2 goto :eliminar
if %opcion%==3 goto :salir

:copiar
set /p origen= "coloca la direccion directorio: "
set /p destino= "coloca la direccion del destino: "
set /p name_folder= "coloca la direccion del destino: "
xcopy /E /I "%origen%" "%destino%\%date:~5,2%-%date:~8,2%-%date:~11,4%-%time:~0,2%-%time:~3,2%-%time:~6,2%\%name_folder%"
echo proceso exitoso
goto :menu

:eliminar
set /p ruta="ingrese la ruta del directorio que quieres eliminar: "
rd /S /Q "%ruta%"
echo proceso exitoso
goto :menu

:salir
echo proceso finalizado
exit 