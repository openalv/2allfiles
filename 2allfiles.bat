@echo off
echo Enter path of .exe followed by the option (-i for example) : 
set /p PathToExe= 
echo Enter path of the folder containing files to execute : 
set /p folder= 
for /r %folder% %%i in (*) do (
    echo %PathToExe% %%i
    START /WAIT %PathToExe% %%i
)
