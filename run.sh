#!/bin/bash


echo "wget -nc http://cs231n.stanford.edu/tiny-imagenet-200.zip"
wget -nc http://cs231n.stanford.edu/tiny-imagenet-200.zip

echo "unzip tiny-imagenet-200.zip"
unzip tiny-imagenet-200.zip

echo "rm -r ./tiny-imagenet-200/test"
rm -r ./tiny-imagenet-200/test

echo "python3 val_format.py"
python3 val_format.py

echo "find . -name "*.txt" -delete"
find . -name "*.txt" -delete

echo "mkdir models"
mkdir models

echo "cp -r tiny-imagenet-200 tiny-224"
cp -r tiny-imagenet-200 tiny-224

echo "python3 resize.py"
python3 resize.py