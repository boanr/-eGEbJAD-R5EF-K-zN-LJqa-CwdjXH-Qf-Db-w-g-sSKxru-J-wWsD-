@echo off


cscript "C:\Users\USER\Desktop\ExcelMacroRunner.vbs"
taskkill /IM EXCEL.EXE /F >nul 2>&1

@pause
