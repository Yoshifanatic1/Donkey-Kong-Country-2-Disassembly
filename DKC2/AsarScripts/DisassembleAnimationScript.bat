@echo off
setlocal EnableDelayedExpansion

set PATH="../../Global"

asar.exe DisassembleAnimationScript.asm DKC2.sfc > output1.asm

pause
exit