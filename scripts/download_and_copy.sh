
#Cd into github directory
cd anthony-schmidt.github.io

#Get user input
echo "Press 0 to just pull, press 1 to pull and copy"
read user_input

#Pull from git
git reset --hard HEAD
git pull

#Check exit
if [ $user_input -eq 0 ] 
then
	exit 0
fi
#Get Files
LS=$(ls -I "*.sln" -I "*.config" -I "*.io")

#Copy Files Over
echo "Files/Folders Copied Over: "
echo "$LS"
cp -r $LS ..
