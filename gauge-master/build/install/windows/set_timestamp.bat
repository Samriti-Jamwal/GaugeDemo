@ECHO OFF

set GAUGE_PROPERTIES_FILE=%~1\gauge.properties
set TIMESTAMP_FILE=%~1\timestamp.txt

IF EXIST "%TIMESTAMP_FILE%" (
  del "%TIMESTAMP_FILE%"
)

FOR %%f IN ("%GAUGE_PROPERTIES_FILE%") DO SET CURRENT_TIMESTAMP=%%~tf

echo %CURRENT_TIMESTAMP% >"%TIMESTAMP_FILE%"
