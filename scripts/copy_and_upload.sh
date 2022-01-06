
LS=$(ls -I "*.sln" -I "*.config" -I "*.io")
echo "Files/Folders Copied Over: "
echo "$LS"
cp -r $LS anthony-schmidt.github.io
cd anthony-schmidt.github.io
git add *
echo "Upload Name: "
read commit_name
git commit -m "\"$commit_name\""
git push -u
