@echo off
set n=1
:loop
"C:\Program Files (x86)\SEGGER\JLink_V490\JFlash.exe" -open"C:\Program Files (x86)\SEGGER\JLink_V490\Samples\JFlash\ProjectFiles\ST\STM32F103RC.jflash" -connect -open"C:\Users\44606\Desktop\Pump01_FW\MDK-ARM\Pump01\Pump01.hex" -erasechip -programverify -startapplication -jflashloglog.log -exit
if %errorlevel% equ 0 (
set /a n=%n%+1
set /p a=succeed:%n%
) else (
 set /p a = failed!!
)
if "%a%"=="" goto loop
