@echo off
cd /d "%~dp0"
title BEU Ses Kalkani AI - GitHub'a Yukle ve Yayinla
chcp 65001 >nul
echo ====================================================================
echo   BEU SES KALKANI AI - GITHUB VE VERCEL 7/24 YAYINLAMA ARACI
echo ====================================================================
echo.
set GIT_EXE="C:\Program Files\Microsoft Visual Studio\18\Insiders\Common7\IDE\CommonExtensions\Microsoft\TeamFoundation\Team Explorer\Git\cmd\git.exe"
%GIT_EXE% pull origin main --allow-unrelated-histories --no-edit 2>nul
%GIT_EXE% add index.html emre.jpeg ses-kalkani.html mobil_ses_kalkani vercel.json .gitignore
%GIT_EXE% commit -m "BEU Ses Kalkani AI tek dosya olarak eklendi" 2>nul
%GIT_EXE% push -u origin main
if %errorlevel% neq 0 (
    echo.
    echo [HATA] GitHub girisi onaylanmadi veya baglanti kurulamadi.
    pause
    exit /b 1
)
echo.
echo ====================================================================
echo [TAMAMLANDI] Ses Kalkani basariyla GitHub'a yuklendi!
echo Canli Link: https://emrekaraman-siber1.vercel.app/ses-kalkani.html
echo ====================================================================
timeout /t 2 >nul
start https://emrekaraman-siber1.vercel.app/ses-kalkani.html
pause
