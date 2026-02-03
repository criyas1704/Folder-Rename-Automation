@echo off
setlocal enabledelayedexpansion

for /d %%F in (*) do (
    set "name=%%F"
    if /i not "!name:~0,1!"=="P" (
        ren "%%F" "P%%F"
    )
)

echo Letter P added at the beginning of every folders!!!!
pause
