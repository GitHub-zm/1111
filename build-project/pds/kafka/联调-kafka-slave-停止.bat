@echo off
:begin
choice /c:YN /m:"ȷ��ֹͣ���񣬰�Y������Nȡ����"
if %errorlevel%==2 goto end
if %errorlevel%==1 goto release

:release
call ant -Denv.name=���� kafka-slave-stop

:end
pause