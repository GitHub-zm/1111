@echo off
:begin
choice /c:YN /m:"ȷ�Ϸ�������Y������Nȡ����"
if %errorlevel%==2 goto end
if %errorlevel%==1 goto release

:release
call ant -f docker-deploy.xml -Denv_name=���� deploy

:end
pause