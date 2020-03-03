:: exercise all vulkaninfo switches

:: Use the SDK executable!!!
set VULKANINFO="vulkaninfoSDK.exe"

%VULKANINFO% > vulkaninfo.txt

%VULKANINFO% -j > vulkaninfo-j.txt

%VULKANINFO% --json > vulkaninfo.json

:: brat GPU 0 = NVIDIA discrete
%VULKANINFO% --json=0 > vulkaninfo0.json

:: brat GPU 1 = Intel integrated
%VULKANINFO% --json=1 > vulkaninfo1.json

:: brat GPU 9 does not exist, see how vulkaninfo reacts.
%VULKANINFO% --json=9 > vulkaninfo9.json

:: on Windows, do not redirect; automatically writes to vulkaninfo.html
%VULKANINFO% --html

