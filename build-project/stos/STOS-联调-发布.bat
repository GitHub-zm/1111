@echo off
:begin
choice /c:YN /m:"ȷ�Ϸ�������Y������Nȡ����"
if %errorlevel%==2 goto end
if %errorlevel%==1 goto release

:release

md "./temp-stos"
call ant -Dws=./temp-stos -Denv.name=���� -f build-stos.xml

:end
pause