@echo off
:begin
choice /c:YN /m:"ȷ��ֹͣ���񣬰�Y������Nȡ����"
if %errorlevel%==2 goto end
if %errorlevel%==1 goto release

:release
md "./temp"
call ant -Dws=./temp -Denv.name=���� -f build-stos.xml stop

:end
pause