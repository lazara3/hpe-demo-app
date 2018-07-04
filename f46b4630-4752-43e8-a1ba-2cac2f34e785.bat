cd ..

if exist "temp.txt" (
        echo "running commit flow"
	rm temp.txt
	
	cd test_pipeline

	git config --global user.email "_alm_octane_auto@microfocus.com"
	git config --global user.name "_alm_octane_auto"

	echo this is my awesome text file > MyFile.txt
	git add .
	git commit -m "Add MyFile.txt to branch GoCD"	
	git push origin gocd
	
	git rm MyFile.txt
	git commit -m "remove MyFile.txt"
	git push origin gocd

	
) else (
       echo "no commit is needed
	echo this temp file help to commit flow > temp.txt
)