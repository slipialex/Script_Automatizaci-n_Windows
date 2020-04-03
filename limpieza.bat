@echo off
ECHO "limpieza de carpeta de descargas"
IF NOT exist %UserProfile%\Documents\Descargas (
    ECHO Se crea carpeta para hacer respaldo de las descargas
    cd %UserProfile%\Documents
    md Descargas
    cd Descargas
    ECHO Se Copian Archivos
    FORFILES /p "%UserProfile%\Downloads" /d -10 /m *.pdf -c "cmd /c copy @file %UserProfile%\Documents\Descargas"
    ECHO se Abre Carpeta
    TIMEOUT /t 5
    START .
) ELSE (
    ECHO Ya existe una carpeta
    FORFILES /p "%UserProfile%\Downloads" /d -10 /m *.pdf -c "cmd /c copy @file %UserProfile%\Documents\Descargas"
    ECHO se Abre Carpeta
    CD %UserProfile%\Documents\Descargas
    TIMEOUT /t 5
    START .
)
end