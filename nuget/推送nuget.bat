@echo off
set nowPath=%cd%
cd \
cd %nowPath%
echo.��������Ҫ���͵�Ŀ�꣬���磺github/ms
set /p source=
echo.���������api_key
set /p api_key=
if "%source%" == "github" set source_url="https://nuget.pkg.github.com/OWNER/index.json"
if "%source%" == "ms" set source_url="https://api.nuget.org/v3/index.json"

echo ������%source%

for /f "delims=" %%a in ('dir /b/a-d/oN *nupkg*') do (
    echo ""
    echo %%a: ��ʼ����
    dotnet nuget push "%%a"  --api-key "%api_key%" --source "%source_url%"
    echo %%a: �������
)

echo ���
Pause