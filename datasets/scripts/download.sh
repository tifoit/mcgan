FILE=$1
URL=../$FILE.zip
ZIP_FILE=./datasets/$FILE.zip
echo "Downloading the dataset ($FILE)..."
wget -N $URL -O $ZIP_FILE
echo "Unzipping..."
unzip $ZIP_FILE -d ./datasets/
echo "Delete zip file..."
rm -rf $ZIP_FILE
