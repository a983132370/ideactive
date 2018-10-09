@echo off
@Rem localhost
set l=0.0.0.0:8888
@Rem remote
set r=http://idea.lanyus.com:80
@Rem download
set d=https://github.com/ilanyu/ReverseProxy/releases/download/v1.4/ReverseProxy_windows_amd64.exe
@Rem filename
set f=ReverseProxy_windows_amd64.exe
@Rem file path
set p=%cd%\
set pf=%p%%f%

echo %pf%
if exist %pf% goto start
if not exist %pf% goto downloadfile
:downloadfile
 echo "ReverseProxy is downloading..."
 certutil.exe -urlcache -split -f %d%
 goto start
goto end
:start
echo "start..."
cd %p%
%f% -l %l% -r %r%
goto end
pause