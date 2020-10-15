rem Change this to the username and password required
set username=MYUSERNAME
set password=MYPASSWORD

pskill -u %username% -p %password% \\client-1 java.exe
pskill -u %username% -p %password% \\client-2 java.exe
pskill -u %username% -p %password% \\client-4 java.exe
pskill -u %username% -p %password% \\client-3 java.exe
