@echo off

echo Building for Windows/x86_84
cd src
call vcvars64.bat
call msvcbuild.bat
cd ..
mkdir lib\Windows\x86_84
copy src\lua51.dll lib\Windows\x86_84\lua51.dll
copy src\lua51.lib lib\Windows\x86_84\lua51.lib

echo Building for Windows/i686
cd src
call vcvars32.bat
call msvcbuild.bat
cd ..
mkdir lib\Windows\i686
copy src\lua51.dll lib\Windows\i686\lua51.dll
copy src\lua51.lib lib\Windows\i686\lua51.lib
