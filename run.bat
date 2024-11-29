@echo off
rem Prompt the user for the C file name (without extension)
set /p filename=Enter the C file name (without extension): 

rem Check if the file exists
if not exist "%filename%.c" (
    echo File %filename%.c not found!
    exit /b 1
)

rem Compile the C file using gcc
gcc "%filename%.c" -o "%filename%.exe"

rem Check if the compilation was successful
if %errorlevel% neq 0 (
    echo Compilation failed!
    exit /b %errorlevel%
)

rem Run the executable
"%filename%.exe"

rem Pause to keep the terminal window open
pause
