@echo off
cd /d "C:\Users\jyliu\course-videos"

echo ====================================
echo   Course Video - Deploy to GitHub
echo ====================================
echo.

echo [1/2] Git commit and push...
git add .
git commit -m "update courses" 2>nul
git push origin master

echo.
echo [2/2] Done!
echo.
echo Link: https://juarn.github.io/course-videos/
echo.
pause
