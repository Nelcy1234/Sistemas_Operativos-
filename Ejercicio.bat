@echo off
set /p r="ruta del directorio a buscar: "
set /p d="dias para eliminar archivos: "
forfiles /p "%r%" /d -%d% /c "cmd /c echo @path"           
forfiles /p "%r%" /d -%d% /c "cmd /c del @path"

