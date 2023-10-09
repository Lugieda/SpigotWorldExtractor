@echo off

if [%1]==[] goto PATH_NOT_PROVIDED
set baseOutputPath=%~dp0

:LOOP
for %%a in (%1) do set outputDir=%baseOutputPath%%%~nxa_world\
echo Source is "%1\"
echo Destination is "%outputDir%"
echo.


:OVERWORLD
if not exist "%~1\world\\" goto OVERWORLD_NOT_FOUND
echo Copying "overworld" folder recursively 
robocopy "%~1\world\\" "%outputDir%\" /S > nul

:NETHER
if not exist "%~1\world_nether\DIM-1\\" goto NETHER_NOT_FOUND
echo Copying "nether" folder recursively
robocopy "%~1\world_nether\DIM-1\\" "%outputDir%\DIM-1\\" /S > nul

:THE_END
if not exist "%~1\world_the_end\DIM1\\" goto THE_END_NOT_FOUND
echo Copying "the end" folder recursively
robocopy "%~1\world_the_end\DIM1\\" "%outputDir%\DIM1\\" /S > nul
echo.


:END_OF_LOOP
shift
if not [%1]==[] goto LOOP
echo DONE. You can close this window now
goto EOF

:PATH_NOT_PROVIDED
echo No destination path provided. You can simply drag the parent folder of the paper world over this .bat file! 
echo HINT: The parent folder is most commonly the paper server folder
goto EOF

:OVERWORLD_NOT_FOUND
echo Folder "overworld" not found
goto END_OF_LOOP

:NETHER_NOT_FOUND
echo Folder "nether" not found, skipping
goto THE_END

:THE_END_NOT_FOUND
echo Folder "the end" not found, skipping
goto END_OF_LOOP

:EOF
echo.
pause