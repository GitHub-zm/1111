@echo off
:begin
choice /c:YN /m:"ȷ�Ϸ�������Y������Nȡ����"
if %errorlevel%==2 goto end
if %errorlevel%==1 goto release

:release
md "./temp"
call ant -Dws=./temp -Dwr=hd -Dtg=voucher -Denv.name=����

:end
pause