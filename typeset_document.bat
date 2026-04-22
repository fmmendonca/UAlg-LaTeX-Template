@echo off
del .\build\*.*
if errorlevel 1 goto :erro

pdflatex -output-directory=build main.tex
if errorlevel 1 goto :erro

biber --output_directory build main
if errorlevel 1 goto :erro

pdflatex -output-directory=build main.tex
if errorlevel 1 goto :erro

pdflatex -output-directory=build main.tex
if errorlevel 1 goto :erro

echo.
echo PDF successfuly generated.
goto :terminate

:erro
echo.
echo Composing [ERROR].

:terminate
pause
