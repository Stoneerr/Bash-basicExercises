#!/bin/bash

dir='filesDir'

# Create dir if not exists
if [[ -d $dir ]];
then
    echo $dir exists!
else
    echo $dir do not exists!
    echo Creating...
    mkdir $dir
fi

# Create the files inside $dir
echo "Moving into $dir"
cd $dir
for number in {1..40};
do
    file="file_$number.txt"
    echo "Creating $file inside $dir"
    touch $file 
done
echo "Exiting $dir"
cd ../
