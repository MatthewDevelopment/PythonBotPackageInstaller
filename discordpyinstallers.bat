@echo off
title DISCORD.PY INSTALLERS

:agreement
echo DISCORD.PY INSTALLERS
echo Software Version: 1.1
echo BEFORE USING SOFTWARE, PLEASE READ AND AGREE TO THIS END USER LICENSE AGREEMENT
echo -
echo THIS SOFTWARE IS PART OF THE PUBLIC DOMAIN.
echo YOU MAY REDISTRIBUTE THIS SOFTWARE FOR NON-COMMERCIAL PURPOSES. YOU SHOULD PROBABLY NOT REDISTRIBUTE IT FOR
echo COMMERCIAL PURPOSES AS THIS IS FREE AND OPEN SOURCE SOFTWARE. IF YOU PAYED FOR THIS SOFTWARE, YOU
echo GOT SCAMMED.
echo -
echo THERE IS A CHANCE THAT YOU MAY NEED TO RUN THIS SOFTWARE IN ADMINSTRATOR MODE. PLEASE BE AWARE OF THAT.
echo -
echo THE CREATORS OF THIS SOFTWARE WILL NOT BE LIABLE FOR ANY DAMAGES CAUSED FROM USING THIS SOFTWARE
echo INCLUDING BUT NOT LIMITED TO: LOSS OF PROFIT, DEVICE DAMAGE, OTHER COMMERCIAL ISSUES, ETC
echo -
echo Press any key to accept the End User License Agreement.
echo If you do NOT accept the End User License Agree, close the program
pause
goto menu

:menu
cls
echo DISCORD.PY INSTALLERS
echo Software Version: 1.1
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
echo 5 = Get Python 3.8.6 (To install certain packages like discord-py-slash-command and to use discord.py 2.0)
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
echo 1 = Install discord.py packages 1.7.1
echo 2 = Install discord.py packages Latest discord.py version
echo 3 = Install discord.py packages with Voice support
echo 4 = Install discord-py-slash-command package for discord.py
echo 5 = Install ffmpeg package for discord.py
echo 6 = Install PyNaCl package for discord.py
echo 7 = Upgrade Discord.py
echo -
set /p menu=
if %menu%==0 goto menu
if %menu%==1 goto windowspy1
if %menu%==2 goto windowspy2
if %menu%==3 goto windowspyvoice
if %menu%==4 goto windowspyslash
if %menu%==5 goto windowsffmpeg
if %menu%==6 goto windowspynacl
if %menu%==7 goto windowspyupgrade

:windowspy1
py -3 -m pip install -U discord.py==1.7.3
pause
goto menu

:windowspy2
py -3 -m pip install -U discord.py
pause
goto menu

:windowspyupgrade
pip install --upgrade discord.py
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
echo 1 = Install discord.py packages 1.7.1
echo 2 = Install discord.py packages Latest Version
echo 3 = Install discord.py packages with Voice support
echo 4 = Install discord-py-slash-command package for discord.py
echo 5 = Install ffmpeg package for discord.py
echo 6 = Install PyNaCl package for discord.py
echo -
set /p menu=
if %menu%==0 goto menu
if %menu%==1 goto maclinuxpy1
if %menu%==2 goto maclinuxpy2
if %menu%==3 goto maclinuxpyvoice
if %menu%==4 goto maxlinuxslash
if %menu%==5 goto maxlinuxffmpeg
if %menu%==6 goto maxlinuxpynacl

:maclinuxpy1
python3 -m pip install -U discord.py==1.7.1
pause
goto menu

:maclinuxpy2
python3 -m pip install -U discord.py
pause
goto menu

:maclinuxpyvoice
python3 -m pip install -U discord.py[voice]
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
echo VERSION 1.1
echo - Added a upgrade discord.py command for windows (idk if this works though).
echo - Added 2 seperate commands to install discord.py if you want 2.0 or 1.7.1
echo - Added note in main page that Discord.py 2.0 requires Python 3.8 or newer
echo - Updated the End User License Agreement
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