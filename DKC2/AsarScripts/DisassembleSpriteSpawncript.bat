@echo off
setlocal EnableDelayedExpansion

set PATH="../../Global"

asar.exe DisassembleUnknownScript.asm DKC2.sfc > output1.asm

pause
exit