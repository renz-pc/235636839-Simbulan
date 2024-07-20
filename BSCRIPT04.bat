@echo off
setlocal
echo Sorting files
pushd C:\
dir /b /o:d > "%temp%\filelist.txt"
popd
set BSCRIPT04=Z:\BSCRIPT04
echo Archiving files to %BSCRIPT04%...
if not exist "%BSCRIPT04%" mkdir "%BSCRIPT04%"
for /f "tokens=*" %%a in (%temp%\filelist.txt) do (
    move "C:\%%a" "%BSCRIPT04%\"
)
echo Sorting archived 
pushd "%BSCRIPT04%"
dir /b /o:-s > "%temp%\archived_filelist.txt"
popd
set /p deleteFiles="Delete files? (Y/N): "
if /i "%deleteFiles%"=="Y" (
    for /f "tokens=*" %%b in (%temp%\archived_files.txt) do (
        set "fileToDelete=%BSCRIPT04%\%%b"
        echo Deleting file: %%b
        del "%%b"
        echo File deleted
    )
) else (
    echo No files will be deleted
)
del "%temp%\filelist.txt"
del "%temp%\archived_filelist.txt"
echo Complete
pause