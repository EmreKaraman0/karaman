@echo off
cd /d "%~dp0"
title BEU Ses Kalkani AI - GitHub'a Yukle ve Yayinla
chcp 65001 >nul
echo ====================================================================
echo   BEU SES KALKANI AI - GITHUB VE VERCEL 7/24 YAYINLAMA ARACI
echo ====================================================================
echo.
echo Dosyalar hazirlaniyor ve GitHub'a (cylub3372/karaman) aktariliyor...
echo Ekrana "Sign in with your browser" penceresi gelirse tiklayip onaylayin.
echo.
set GIT_EXE="C:\Program Files\Microsoft Visual Studio\18\Insiders\Common7\IDE\CommonExtensions\Microsoft\TeamFoundation\Team Explorer\Git\cmd\git.exe"
%GIT_EXE% add index.html emre.jpeg mobil_ses_kalkani vercel.json .gitignore
%GIT_EXE% commit -m "BEU Ses Kalkani AI uygulamasi eklendi" 2>nul
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
echo.
echo 1) Vercel Uzerinden Aninda Canli Link (~15 sn icinde aktif):
echo    https://emrekaraman-siber1.vercel.app/mobil_ses_kalkani/
echo.
echo 2) GitHub Pages Linki (Pages aciksa ~1 dk icinde aktif):
echo    https://cylub3372.github.io/karaman/mobil_ses_kalkani/
echo ====================================================================
timeout /t 2 >nul
start https://github.com/cylub3372/karaman/settings/pages
start https://emrekaraman-siber1.vercel.app/mobil_ses_kalkani/
pause
