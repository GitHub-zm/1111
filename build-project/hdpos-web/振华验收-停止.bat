@echo off
:begin
choice /c:YN /m:"ȷ��ֹͣ����Y������Nȡ����"
if %errorlevel%==2 goto end
if %errorlevel%==1 goto release

:release
md "./temp-sdzh"
call ant -Dws=./temp-sdzh -Dwr=hd -Dtg=hdposweb -Denv.name=�� -Denv.version=sdzh stop

:end
pause