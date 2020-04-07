@echo off
ECHO "limpieza de carpeta de descargas"
PAUSE
IF NOT exist %UserProfile%\Documents\Descargas (
    cd %UserProfile%\Documents
    md Descargas
    cd Descargas
    ECHO Copiando Archivos
    FORFILES /p "%UserProfile%\Downloads" /d -10 /m *.* -c "cmd /c xcopy @file %UserProfile%\Documents\Descargas /s /e /y"
    START .
) ELSE (
    ECHO Copiando Archivos
    CD %UserProfile%\Documents\Descargas
    FORFILES /s /p "%UserProfile%\Downloads" /d -10 /m * -c "cmd /c xcopy @FILE %UserProfile%\Documents\Descargas /e /y" 
    START .
    PAUSE
)
end