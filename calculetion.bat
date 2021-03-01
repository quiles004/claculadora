@echo off
:start

cls
echo Bienvenido a la mejor calculadora de todos los tiempos
echo.
echo.
echo ---------------------------
echo s  sumar                   
echo ---------------------------
echo m  multiplicar             
echo ---------------------------
echo r  restar                  
echo ---------------------------
echo d  dividir                 
echo ---------------------------
echo e  potencias               
echo ---------------------------
echo f  raiz cuadrada                    
echo ---------------------------
echo g  raiz cubica                   
echo ---------------------------
echo h  salir                   
echo ---------------------------
echo.          
echo.          
echo.

set /p var= elige una opcion:
if %var%==s goto suma
if %var%==m goto mul
if %var%==r goto resta
if %var%==d goto division
if %var%==e goto potencia
if %var%==f goto raiz
if %var%==g goto raiz2
if %var%==h goto end
if %var%==%var% goto error

:suma
echo.
echo ---------------------------
set /p a=Escribe el primer numero:
echo ---------------------------
set /p b=Escribe el segundo numero:
echo ---------------------------
cls
set /a resultado=a+b
echo.
echo ---------------------------
echo resultado: %resultado%
echo ---------------------------
pause
goto start
cls

:mul
echo.
echo ---------------------------
set /p a=Escribe el primer numero:
echo ---------------------------
set /p b=Escribe el segundo numero:
echo ---------------------------
cls
set /a resultado=a*b
echo.
echo ---------------------------
echo resultado: %resultado%
echo ---------------------------
pause
goto start
cls

:resta
echo ---------------------------
set /p a=Escribe el primer numero:
echo ---------------------------
set /p b=Escribe el segundo numero:
echo ---------------------------
cls
set /a resultado=a-b
echo ---------------------------
echo resultado: %resultado%
echo ---------------------------
pause
goto start
cls

:division
echo ---------------------------
set /p a=Escribe el primer numero:
echo ---------------------------
set /p b=Escribe el segundo numero:
echo ---------------------------
cls
set /a resultado=a/b
echo ---------------------------
echo resultado: %resultado%
echo ---------------------------
pause
goto start
cls

:potencia
set /p base=Base : 
if not defined base (goto:potencia)

:exp
echo ---------------------------
set /p pow=Potencia : 
echo ---------------------------
if not defined pow (goto:exp)
set /a resultado=1
for /l %%_ in (1,1,%pow%) do (set /a resultado*=%base%)
echo ---------------------------
echo Resultado : %resultado%
echo ---------------------------
pause 
goto start
cls

:raiz 
echo ---------------------------
set /p var1=Introduce el numero a sacar la raiz cuadrada:
echo ---------------------------
set var=0
goto sige
:sige
set /a var2=%var%*%var%
if %var2%==%var1% (goto esta) else set /a var=%var%+1
if %var%==10001 (goto error) else goto sige
:esta
echo El resultado es: %var%
echo si el resultado da 1 es incorrecto
pause
goto start 
cls 

:raiz2 
echo ---------------------------
set /p var1=Introduce el numero a sacar la raiz cubica:
echo ---------------------------
set var=0
goto sige
:sige
set /a var2=%var%*%var%*%var%
if %var2%==%var1% (goto esta) else set /a var=%var%+1
if %var%==10001 (goto error) else goto sige
:esta
echo El resultado es: %var%
echo si el resultado da 1 es incorrecto
pause
goto start 
cls 


:error
cls
echo ---------------------------
echo error, elija una opci¢n valida.
echo ---------------------------
pause>nul
goto start
:end
cls
exit
