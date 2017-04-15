@echo off

rem nuget push .\src\RequestFiltering\bin\Release\RequestFiltering.1.0.0.nupkg -Source https://nexus.strandberg.rocks:43571/repository/nuget-internal-releases/

REM for /f "usebackq tokens=*" %%n in (`dir /b /s ".\src\RequestFiltering\bin\Release\*.nupkg"`) do nuget push "%%n" -Source https://nexus.strandberg.rocks:43571/repository/nuget-internal/
REM for /f "usebackq tokens=*" %%n in (`dir /b /s ".\src\RequestFiltering.Abstractions\bin\Release\*.nupkg"`) do nuget push "%%n" -Source https://nexus.strandberg.rocks:43571/repository/nuget-internal/
REM for /f "usebackq tokens=*" %%n in (`dir /b /s ".\src\RequestFiltering.FileExtensions\bin\Release\*.nupkg"`) do nuget push "%%n" -Source https://nexus.strandberg.rocks:43571/repository/nuget-internal/
REM for /f "usebackq tokens=*" %%n in (`dir /b /s ".\src\RequestFiltering.Headers\bin\Release\*.nupkg"`) do nuget push "%%n" -Source https://nexus.strandberg.rocks:43571/repository/nuget-internal/
REM for /f "usebackq tokens=*" %%n in (`dir /b /s ".\src\RequestFiltering.HiddenSegments\bin\Release\*.nupkg"`) do nuget push "%%n" -Source https://nexus.strandberg.rocks:43571/repository/nuget-internal/
REM for /f "usebackq tokens=*" %%n in (`dir /b /s ".\src\RequestFiltering.HttpVerbs\bin\Release\*.nupkg"`) do nuget push "%%n" -Source https://nexus.strandberg.rocks:43571/repository/nuget-internal/
REM for /f "usebackq tokens=*" %%n in (`dir /b /s ".\src\RequestFiltering.QueryStrings\bin\Release\*.nupkg"`) do nuget push "%%n" -Source https://nexus.strandberg.rocks:43571/repository/nuget-internal/
REM for /f "usebackq tokens=*" %%n in (`dir /b /s ".\src\RequestFiltering.Urls\bin\Release\*.nupkg"`) do nuget push "%%n" -Source https://nexus.strandberg.rocks:43571/repository/nuget-internal/

for /f "usebackq tokens=*" %%n in (`dir /b /s ".\src\RequestFiltering\bin\Release\*.nupkg"`) do nuget push "%%n" -Source http://192.168.0.5:18080/
for /f "usebackq tokens=*" %%n in (`dir /b /s ".\src\RequestFiltering.Abstractions\bin\Release\*.nupkg"`) do nuget push "%%n" -Source http://192.168.0.5:18080/
for /f "usebackq tokens=*" %%n in (`dir /b /s ".\src\RequestFiltering.FileExtensions\bin\Release\*.nupkg"`) do nuget push "%%n" -Source http://192.168.0.5:18080/
for /f "usebackq tokens=*" %%n in (`dir /b /s ".\src\RequestFiltering.Headers\bin\Release\*.nupkg"`) do nuget push "%%n" -Source http://192.168.0.5:18080/
for /f "usebackq tokens=*" %%n in (`dir /b /s ".\src\RequestFiltering.HiddenSegments\bin\Release\*.nupkg"`) do nuget push "%%n" -Source http://192.168.0.5:18080/
for /f "usebackq tokens=*" %%n in (`dir /b /s ".\src\RequestFiltering.HttpVerbs\bin\Release\*.nupkg"`) do nuget push "%%n" -Source http://192.168.0.5:18080/
for /f "usebackq tokens=*" %%n in (`dir /b /s ".\src\RequestFiltering.QueryStrings\bin\Release\*.nupkg"`) do nuget push "%%n" -Source http://192.168.0.5:18080/
for /f "usebackq tokens=*" %%n in (`dir /b /s ".\src\RequestFiltering.Urls\bin\Release\*.nupkg"`) do nuget push "%%n" -Source http://192.168.0.5:18080/
