#IMPORTANT: Must be in current directory

#Get Files
cd ..
LS=$(ls -I "*.sln" -I "*.config" -I "*.io")

#Message
echo "-Files/Folders To Be Copied Over: "
echo "$LS"

#Input Name
echo "-Press 0 to only copy, or type a name to upload: "
read commit_name

#Copy files
cp -r $LS anthony-schmidt.github.io

#Check exit
if [ $commit_name -eq 0 ] 
then
	exit 0
fi

#Add files to git
cd anthony-schmidt.github.io
git add *
echo " "
git status

#Commit and push
git commit -m "$commit_name"
git push
