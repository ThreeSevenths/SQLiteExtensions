@echo on
SETLOCAL
SET VCVARSBAT="C:\Program Files\Microsoft Visual Studio\2022\Professional\VC\Auxiliary\Build\vcvarsall.bat"
SET TOOLCHAIN=x64
SET SUBDIR=spellfix\win\v143\plain\x64
call %VCVARSBAT% %TOOLCHAIN%
@echo on
mkdir .\obj\%SUBDIR%
mkdir .\bin\%SUBDIR%
CL.exe /nologo /c /guard:cf /W1 /WX- /sdl- /O2 /Oi /Oy- /D SQLITE_API=__declspec(dllexport) /D SQLITE_DEFAULT_FOREIGN_KEYS=1 /D SQLITE_ENABLE_COLUMN_METADATA /D SQLITE_ENABLE_FTS3_PARENTHESIS /D SQLITE_ENABLE_FTS4 /D SQLITE_ENABLE_FTS5 /D SQLITE_ENABLE_JSON1 /D SQLITE_ENABLE_RTREE /D SQLITE_ENABLE_SNAPSHOT /D SQLITE_OS_WIN /D SQLITE_WIN32_FILEMAPPING_API=1 /D NDEBUG /D _USRDLL /D _WINDLL /DEBUG:FULL /Gm- /EHsc /MT /GS /Gy /fp:precise /Zc:wchar_t /Zc:inline /Zc:forScope /Fo".\obj\%SUBDIR%\\" /Gd /TC /analyze- /I  ..\cb\sqlite3 ..\sqlite\ext\misc\spellfix.c
link.exe @win_spellfix_v143_plain_x64.linkargs
ENDLOCAL
