@echo off
setlocal EnableDelayedExpansion

set PATH="../../Global"

asar.exe ExtractOAMData.asm DKC2.sfc > output1.asm

pause
asar.exe output1.asm DKC2.sfc > output2.asm

pause
exit