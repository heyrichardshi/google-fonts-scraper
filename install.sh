#!/bin/bash

#Do we have git?
if test ! $(which git); then
  echo "Must have git installed for this to work!"
  exit 0
fi

#Download the repo and cd to fonts folder
git clone https://github.com/google/fonts gfonts
cd gfonts

#Magical find command to cp all fonts to ~/Desktop/fonts
find . -name "*.ttf" -exec cp {} ~/Desktop/fonts \;

#All done, let's clean up a bit
cd ../..
rm -rf gfonts