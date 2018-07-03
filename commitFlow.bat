if exist "MyFile.txt" (
	
	git push origin gocd
	
	git rm MyFile.txt
	git commit -m "remove MyFile.txt"
	git push origin gocd

	echo Exist and delete it
	
) else (
	echo this is my awesome text file > MyFile.txt
	git add .
	git commit -m "Add MyFile.txt to branch GoCD"

	echo create and commit the file
)
