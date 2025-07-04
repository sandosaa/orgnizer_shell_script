#!/bin/bash

echo "Hello, It's $USER"
echo "A shell script helps you to orgnize your files" 
cd ~
mkdir -p downloaded_items
cd $XDG_DOWNLOAD_DIR
mkdir -p photos
mv -t photos *.jpg *.png *jpeg *webp 2> /dev/null
mkdir -p PDFs
mv *.pdf PDFs 2> /dev/null
mkdir -p Text
mv *txt Text 2> /dev/null
mkdir -p study_file
mv -t study_file math1 python 'Scintific Thinking' 'structured programming''computer fundamentals' concepts 'Numerical Analysis' 2> /dev/null
mv -t "$HOME/downloaded_items" photos PDFs Text study_file 2> /dev/null
cd ~
cd downloaded_items
ls
echo "These are the folders that you have!"
