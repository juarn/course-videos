@echo off
cd /d "C:\Users\jyliu\course-videos"

echo ====================================
echo   Course Video - Deploy to GitHub
echo ====================================
echo.

echo [1/3] Git commit...
git add .
git commit -m "course video player" 2>nul

echo [2/3] Push to GitHub...
gh repo create course-videos --public --source=. --remote=origin --push 2>nul
if errorlevel 1 (
    git push -u origin HEAD 2>nul
)

echo [3/3] Enable GitHub Pages...
gh api repos/juarn/course-videos/pages -X POST -f "source[branch]=main" -f "source[path]=/" 2>nul

echo.
echo ====================================
echo   Done!
echo   Link: https://juarn.github.io/course-videos/
echo   (wait 1-2 min for first deploy)
echo ====================================
pause
