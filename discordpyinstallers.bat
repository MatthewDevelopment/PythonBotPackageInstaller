@echo off
title DISCORD.PY INSTALLERS

:agreement
echo DISCORD.PY INSTALLERS
echo Software Version: 1.0
echo BEFORE USING SOFTWARE, PLEASE READ AND AGREE TO THIS LICENSE AGREEMENT
echo -
echo THIS SOFTWARE IS PART OF THE PUBLIC DOMAIN.
echo YOU MAY REDISTRIBUTE THIS SOFTWARE FOR NON-COMMERCIAL PURPOSES. YOU SHOULD NOT REDISTRIBUTE IT FOR
echo COMMERCIAL PURPOSES.
echo -
echo THERE IS A CHANCE YOU MAY NEED TO RUN THIS SOFTWARE IN ADMINSTRATOR MODE. PLEASE BE AWARE OF THAT.
echo -
echo THE CREATORS OF THIS SOFTWARE WILL NOT BE LIABLE FOR ANY DAMAGES CAUSED FROM USING THIS SOFTWARE
echo INCLUDING BUT NOT LIMITED TO: LOSS OF PROFIT, DEVICE DAMAGE, ETC
echo -
echo Press any key to accept the license agreement.
pause
goto menu

:menu
cls
echo DISCORD.PY INSTALLERS
echo Software Version: 1.0
echo Provided by: Matthew Discord Development.
echo -
echo This batch file software will install the discord.py packages on your computer that you request to the software.
echo If you plan to self host your discord.py bot, this tool will be helpful to install packages really easily.
echo -
echo To get started, select the OS you are using by typing in the number for the choice.
echo 1 = Windows
echo 2 = Mac/Linux
echo OR SEE EXTRAS BELOW HERE
echo 3 = Get Python 3.5.3 (minimum requirement for discord.py bots)
echo 4 = Get Python 3.7.0 (what I recommend)
echo 5 = Get Python 3.8.6 (To install certain packages like discord-py-slash-command)
echo v = See the Version update notes/patches
echo -
set /p menu=
if %menu%==1 goto windows
if %menu%==2 goto maclinux
if %menu%==3 start https://www.python.org/downloads/release/python-353/
if %menu%==4 start https://www.python.org/downloads/release/python-370/
if %menu%==5 start https://www.python.org/downloads/release/python-386/
if %menu%==v goto updatenotes
goto menu



:windows
echo INSTALL PACKAGES FOR WINDOWS
echo What discord.py package would you like to install?
echo -
echo 0 = Go back to the Menu
echo 1 = Install discord.py packages
echo 2 = Install discord.py packages with Voice support
echo 3 = Install discord-py-slash-command package for discord.py
echo 4 = Install ffmpeg package for discord.py
echo 5 = Install PyNaCl package for discord.py
echo -
set /p menu=
if %menu%==0 goto menu
if %menu%==1 goto windowspy
if %menu%==2 goto windowspyvoice
if %menu%==3 goto windowspyslash
if %menu%==4 goto windowsffmpeg
if %menu%==5 goto windowspynacl

:windowspy
py -3 -m pip install -U discord.py[voice]
pause
goto menu

:windowspyvoice
py -3 -m pip install -U discord.py[voice]
pause
goto menu

:windowsslash
py -3 -m pip install discord-py-slash-command
pause
goto menu

:windowsffmpeg
py -3 -m pip install ffmpeg
pause
goto menu

:windowspynacl
py -3 -m pip install PyNaCl
pause
goto menu



:maclinux
echo INSTALL PACKAGES FOR MAC/LINUX
echo What discord.py package would you like to install?
echo -
echo 0 = Go back to the Menu
echo 1 = Install discord.py packages
echo 2 = Install discord.py packages with Voice support
echo 3 = Install discord-py-slash-command package for discord.py
echo 4 = Install ffmpeg package for discord.py
echo 5 = Install PyNaCl package for discord.py
echo -
set /p menu=
if %menu%==0 goto menu
if %menu%==1 goto maclinuxpy
if %menu%==2 goto maclinuxpyvoice
if %menu%==3 goto maxlinuxslash
if %menu%==4 goto maxlinuxffmpeg
if %menu%==5 goto maxlinuxpynacl

:maclinuxpy
python3 -m pip install -U discord.py
pause
goto menu

:maclinuxpyvoice
python3 -m pip install -U "discord.py[voice]
pause
goto menu

:maclinuxslash
python3 -m pip install discord-py-slash-command
pause
goto menu

:maclinuxffmpeg
python3 -m pip install ffmpeg
pause
goto menu

:maclinuxpynacl
python3 -m pip install PyNaCl
pause
goto menu






:updatenotes
cls
echo DISCORD.PY INSTALLERS UPDATE NOTES
echo.
echo VERSION 1.0
echo HERE IS THE INITIAL RELEASE OF THIS SMALL SOFTWARE!
echo - WINDOWS/MAC/LINUX SUPPORT
echo - Install discord.py, ffmpeg, PyNaCl, and discord-py-slash-command
echo - EULA
echo - Show links to install Python 3.5.3, 3.7.0, and 3.8.6
echo.
pause
goto menu