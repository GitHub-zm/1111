@echo off
:begin
choice /c:YN /m:"确认停止服务，按Y继续，N取消！"
if %errorlevel%==2 goto end
if %errorlevel%==1 goto release

:release
call ant -Denv.name=联调 zookeeper-stop

:end
pause