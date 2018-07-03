git config --global user.email "_alm_octane_auto@microfocus.com"
git config --global user.name "_alm_octane_auto"

echo this is my awesome text file >  commitFlow.bat
git add .

git commit -m "Add MyFIle.txt to branch Master"
git push origin gocd