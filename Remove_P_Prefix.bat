@echo off
setlocal enabledelayedexpansion

for /d %%F in (*) do (
    set "name=%%F"
    if /i "!name:~0,1!"=="P" (
        ren "%%F" "!name:~1!"
    )
)

echo Letter P removed from the beginning of every folder!!!
pause
