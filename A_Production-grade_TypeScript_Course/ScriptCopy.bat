@echo off
setlocal enabledelayedexpansion

rem Define the sections in an array
set sections[1]=Introduction
set sections[2]=Basic Types in Typescript
set sections[3]=Records
set sections[4]=Arrays and Tuples
set sections[5]=Conditional Types
set sections[6]=Looping Through Types
set sections[7]=Template Literals in Typescript
set sections[8]=Union Types
set sections[9]=Mapped Types
set sections[10]=Advanced Generics
set sections[11]=Advanced Patterns
set sections[12]=Assignability
set sections[13]=Practice Test
set sections[14]=Extra Practices

rem Loop through the sections and create folders and markdown files
for /L %%i in (1,1,14) do (
    rem Ensure folder numbers have two digits
    if %%i LSS 10 (
        set "folderNumber=0%%i"
    ) else (
        set "folderNumber=%%i"
    )

    set "folderName=!folderNumber! !sections[%%i]!"
    mkdir "!folderName!"
    echo # !folderNumber!: !sections[%%i]! > "!folderName!\Readme.md"
)

endlocal
