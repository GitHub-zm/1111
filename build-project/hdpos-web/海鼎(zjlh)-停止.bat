@echo off
:begin
choice /c:YN /m:"ȷ��ֹͣ����Y������Nȡ����"
if %errorlevel%==2 goto end
if %errorlevel%==1 goto release

:release
md "./temp-zjlh"
call ant -Dws=./temp-zjlh -Dwr=hd -Dtg=hdposweb -Denv.name=���� -Denv.version=zjlh stop

:end
pause