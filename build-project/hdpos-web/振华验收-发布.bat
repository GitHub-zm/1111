@echo off
:begin
choice /c:YN /m:"确认发布，按Y继续，N取消！"
if %errorlevel%==2 goto end
if %errorlevel%==1 goto release

:release
md "./temp-sdzh"
call ant -Dws=./temp-sdzh -Dwr=hd -Dtg=hdposweb -Denv.name=海鼎 -Denv.version=振华验收

:end
pause