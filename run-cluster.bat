@echo off
rem Change this to the username and password required
set username=MYUSERNAME
set password=MYPASSWORD

echo Running %1...
call psexec -f -d -i -u %username% -p %password% \\client-1 -c run-test.bat %1 left
call psexec -f -d -i -u %username% -p %password% \\client-2 -c run-test.bat %1 front
call psexec -f -d -i -u %username% -p %password% \\client-4 -c run-test.bat %1 floor
call psexec -f -d -i -u %username% -p %password% \\client-3 -c run-test.bat %1 right

exit /b 0
