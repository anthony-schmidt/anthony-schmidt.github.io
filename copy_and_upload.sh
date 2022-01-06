
cp index.html anthony-schmidt.github.io
LS=$(ls -I "*.sln" -I "*.config" -I "*.io")
echo $LS
cp -r $LS anthony-schmidt.github.io
OUTPUT1=$(find . -maxdepth 1 -type f -not -name "*.sln" -not -name "*.config")
OUTPUT2=$(find $OUTPUT2 -maxdepth 1 -type f -not -name "*.config")
