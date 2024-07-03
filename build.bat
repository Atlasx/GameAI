REM @echo off

set "project_name=GameAI"

REM Create the generated directory if it doesn't exist
if not exist generated mkdir generated

REM Run CMake configuration and build
cmake -B generated -S .
cmake --build generated

REM Setup alias for solution in root
set "sln_file=%CD%\generated\%project_name%.sln"
set "shortcut_file=%CD%\%project_name%.sln.lnk"

if not exist %shortcut_file% (
	mklink "%shortcut_file%" "%sln_file%"
) else (
	echo Failed to create alias.
)