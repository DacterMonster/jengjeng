@echo off
echo Sinkronisasi dengan GitHub...
git pull --rebase origin main
echo Menjalankan 100 commit untuk DacterMonster...
git config --local user.email "fcfaisal51@gmail.com"
git config --local user.name "DacterMonster"
for /L %%i in (1,1,100) do (
    echo Manual boost %%i: %date% %time% >> last_commit.txt
    git add last_commit.txt
    git commit -m "Manual boost %%i: %date% %time%"
)
git push origin main
echo SELESAI! 100 Commit sudah dikirim.
pause
