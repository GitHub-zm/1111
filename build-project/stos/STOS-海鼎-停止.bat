@echo off
:begin
choice /c:YN /m:"ȷ��ֹͣ���񣬰�Y������Nȡ����"
if %errorlevel%==2 goto end
if %errorlevel%==1 goto release

:release
md "./temp-stos"
call ant -Dws=./temp-stos -Denv.name=���� -f build-stos.xml stop

:end
pause