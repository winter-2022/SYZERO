@echo off
set nowPath=%cd%
cd \
cd %nowPath%
echo ��ʼ����

echo ��ʼ����SyZero
cd SyZero.Core\SyZero
del /f /s /q %USERPROFILE%\.nuget\packages\SyZero
del /f /s /q bin\Debug\*.nupkg
dotnet pack
copy /y bin\Debug\*.nupkg ..\..\..\nuget\*.nupkg
cd %nowPath%


echo ��ʼ����SyZero.ApiGateway
cd SyZero.Core\SyZero.ApiGateway
del /f /s /q %USERPROFILE%\.nuget\packages\SyZero.ApiGateway
del /f /s /q bin\Debug\*.nupkg
dotnet pack
copy /y bin\Debug\*.nupkg ..\..\..\nuget\*.nupkg
cd %nowPath%

echo ��ʼ����SyZero.AspNetCore
cd SyZero.Core\SyZero.AspNetCore
del /f /s /q %USERPROFILE%\.nuget\packages\SyZero.AspNetCore
del /f /s /q bin\Debug\*.nupkg
dotnet pack
copy /y bin\Debug\*.nupkg ..\..\..\nuget\*.nupkg
cd %nowPath%

echo ��ʼ����SyZero.AutoMapper
cd SyZero.Core\SyZero.AutoMapper
del /f /s /q %USERPROFILE%\.nuget\packages\SyZero.AutoMapper
del /f /s /q bin\Debug\*.nupkg
dotnet pack
copy /y bin\Debug\*.nupkg ..\..\..\nuget\*.nupkg
cd %nowPath%

echo ��ʼ����SyZero.Consul
cd SyZero.Core\SyZero.Consul
del /f /s /q %USERPROFILE%\.nuget\packages\SyZero.Consul
del /f /s /q bin\Debug\*.nupkg
dotnet pack
copy /y bin\Debug\*.nupkg ..\..\..\nuget\*.nupkg
cd %nowPath%

echo ��ʼ����SyZero.EntityFrameworkCore
cd SyZero.Core\SyZero.EntityFrameworkCore
del /f /s /q %USERPROFILE%\.nuget\packages\SyZero.EntityFrameworkCore
del /f /s /q bin\Debug\*.nupkg
dotnet pack
copy /y bin\Debug\*.nupkg ..\..\..\nuget\*.nupkg
cd %nowPath%

echo ��ʼ����SyZero.Log4Net
cd SyZero.Core\SyZero.Log4Net
del /f /s /q %USERPROFILE%\.nuget\packages\SyZero.Log4Net
del /f /s /q bin\Debug\*.nupkg
dotnet pack
copy /y bin\Debug\*.nupkg ..\..\..\nuget\*.nupkg
cd %nowPath%

echo ��ʼ����SyZero.MongoDB
cd SyZero.Core\SyZero.MongoDB
del /f /s /q %USERPROFILE%\.nuget\packages\SyZero.MongoDB
del /f /s /q bin\Debug\*.nupkg
dotnet pack
copy /y bin\Debug\*.nupkg ..\..\..\nuget\*.nupkg
cd %nowPath%

echo ��ʼ����SyZero.Nacos
cd SyZero.Core\SyZero.Nacos
del /f /s /q %USERPROFILE%\.nuget\packages\SyZero.Nacos
del /f /s /q bin\Debug\*.nupkg
dotnet pack
copy /y bin\Debug\*.nupkg ..\..\..\nuget\*.nupkg
cd %nowPath%

echo ��ʼ����SyZero.Redis
cd SyZero.Core\SyZero.Redis
del /f /s /q %USERPROFILE%\.nuget\packages\SyZero.Redis
del /f /s /q bin\Debug\*.nupkg
dotnet pack
copy /y bin\Debug\*.nupkg ..\..\..\nuget\*.nupkg
cd %nowPath%

echo ��ʼ����SyZero.Web.Common
cd SyZero.Core\SyZero.Web.Common
del /f /s /q %USERPROFILE%\.nuget\packages\SyZero.Web.Common
del /f /s /q bin\Debug\*.nupkg
dotnet pack
copy /y bin\Debug\*.nupkg ..\..\..\nuget\*.nupkg
cd %nowPath%

echo ���
Pause