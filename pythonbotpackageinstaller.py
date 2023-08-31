from distutils.core import setup

setup(
   name='PythonBotPackageInstaller',
   version='2.0',
   packages=['discord.py', 'ffmpeg', 'PyNaCl', 'requests'],
   license='CC0',
   long_description=open('README.txt').read(),
)