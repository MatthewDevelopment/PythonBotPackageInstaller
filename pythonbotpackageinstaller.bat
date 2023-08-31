@echo off
title PYTHON BOT PACKAGE INSTALLER

:agreement
echo PYTHON BOT PACKAGE INSTALLER
echo Software Version: 2.0
echo BEFORE USING SOFTWARE, PLEASE READ AND AGREE TO THIS END USER LICENSE AGREEMENT
echo.
echo THIS SOFTWARE IS PART OF THE PUBLIC DOMAIN USING THE CREATIVE COMMONS ZERO V1 LICENSE.
echo YOU MAY REDISTRIBUTE THIS SOFTWARE FOR NON-COMMERCIAL PURPOSES. YOU SHOULD PROBABLY NOT REDISTRIBUTE IT FOR
echo COMMERCIAL PURPOSES AS THIS IS FREE AND OPEN SOURCE SOFTWARE. IF YOU PAYED FOR THIS SOFTWARE, YOU GOT SCAMMED.
echo.
echo THERE IS A CHANCE THAT YOU MAY NEED TO RUN THIS SOFTWARE IN ADMINSTRATOR MODE. PLEASE BE AWARE OF THAT.
echo.
echo THIS SOFTWARE DOES NOT HOLD ANY TRADEMARK OR PATENT USE. THIS SOFTWARE ALSO DOES NOT HOLD ANY WARRENTIES OR LIABILITIES
echo THE CREATORS OF THIS SOFTWARE WILL NOT BE LIABLE FOR ANY CLAIM OR DAMAGES CAUSED FROM USING THIS SOFTWARE INCLUDING BUT
echo NOT LIMITED TO: LOSS OF PROFIT, DEVICE DAMAGE, OTHER COMMERCIAL ISSUES, ETC
echo THIS SOFTWARE IS PROVIDED AS-IS. USAGE OF THIS SOFTWARE IS AT THE RISK OF THE USER.
echo.
echo Press any key to accept the End User License Agreement.
echo If you do NOT accept the End User License Agree, close the program
pause
goto menu

:menu
cls
echo PYTHON BOT PACKAGE INSTALLER
echo Software Version: 2.0
echo Provided by: Matthew's Development.
echo -
echo This batch file software will install the discord.py packages on your computer that you request to the software.
echo If you plan to self host your discord.py or revolt bot, this tool will be helpful to install packages really easily.
echo -
echo READY TO INSTALL PYTHON PACKAGES?
echo 1 = Python Package Installer
echo OR SEE EXTRAS BELOW HERE
echo 2 = Get Python 3.8.6
echo 3 = Get Python 3.8.10
echo 4 = Get Python 3.9.13
echo 5 = Get Python 3.10.11
echo v = See the Version update notes/patches
echo n = See notice on why Discord.py 1.7.x is no longer on here.
echo -
set /p menu=
if %menu%==1 goto packageinstaller
if %menu%==2 start https://www.python.org/downloads/release/python-386/
if %menu%==3 start https://www.python.org/downloads/release/python-3810/
if %menu%==4 start https://www.python.org/downloads/release/python-3913/
if %menu%==5 start https://www.python.org/downloads/release/python-31011/
if %menu%==v goto updatenotes
goto menu



:packageinstaller
cls
echo INSTALL PACKAGES FOR WINDOWS
echo What discord.py package would you like to install?
echo -
echo 0 = Go back to the Menu
echo 1 = Install discord.py packages
echo 2 = Upgrade Discord.py
echo 3 = Install discord.py packages with Voice support
echo 4 = Install discord-py-slash-command package for discord.py
echo 5 = Install ffmpeg package for discord.py
echo 6 = Install PyNaCl package for discord.py
echo 7 = Install requests
echo 8 = Install Voltage
echo 9 = Install revolt.py
echo 10 = Install guilded.py
echo -
set /p menu=
if %menu%==0 goto menu
if %menu%==1 goto discordpy
if %menu%==2 goto discordpyupgrade
if %menu%==3 goto discordpyvoice
if %menu%==4 goto discordslash
if %menu%==5 goto ffmpeg
if %menu%==6 goto pynacl
if %menu%==7 goto requests
if %menu%==8 goto voltage
if %menu%==9 goto revoltpy
if %menu%==10 goto guildedpy

:discordpy
pip install discord.py
pause
goto menu

:discordpyupgrade
pip install --upgrade discord.py
pause
goto menu

:discordpyvoice
py -3 -m pip install -U discord.py[voice]
pause
goto menu

:discordslash
py -3 -m pip install discord-py-slash-command
pause
goto menu

:ffmpeg
pip install ffmpeg
pause
goto menu

:pynacl
pip install PyNaCl
pause
goto menu

:requests
pip install requests
pause
goto menu

:voltage
pip install git+https://github.com/EnokiUN/voltage
pause
goto menu

:revoltpy
pip install revolt.py
pause
goto menu

:guildedpy
pip install guilded.py
pause
goto menu






:notice
pause
goto menu

:updatenotes
cls
echo DISCORD.PY INSTALLERS UPDATE NOTES
echo.
echo VERSION 2.0
echo THIS SOFTWARE HAS BEEN REBRANDED AND REMADE TO BOT PACKAGE INSTALLER....
echo - Added command to install guilded.py, voltage and revolt.py
echo - Removed options in menu to download Python 3.5.3 and 3.7 since discord.py requires Python 3.8 and higher. However, I added options to install Python 3.9.13 and 3.10.11
echo - Install methods are now with pip install.
echo - Mac and Linux may not be able use this program since this is a .bat file so support for that has been removed and using pip.
echo - Updated the EULA Again.
echo - Added notice command on why there is no support for discord.py 1.7.x
echo - Officially licensed under the Creative Commons Zero v1 License
echo.
echo VERSION 1.1
echo - Added a upgrade discord.py command for windows (idk if this works though).
echo - Added 2 seperate commands to install discord.py if you want 2.0 or 1.7.1
echo - Added note in main page that Discord.py 2.0 requires Python 3.8 or newer
echo - Updated the End User License Agreement
echo - Updated EULA Again
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