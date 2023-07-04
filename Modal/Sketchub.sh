#!/bin/bash

# Create the directory

mkdir -p Sketchub/\"Device\"
read -p "Enter your mobile phone brand or model: " device
mkdir -p Sketchub/\"Device\"/"$device"

mkdir -p Sketchub/\"Operational system\"
read -p "Your android version: " os
mkdir -p Sketchub/\"Operational system\"/"$os"

# Sketchware Pro

mkdir -p Sketchub/\"Downloads\"/"SWB"
read -p 'Problem with ".swb" file?: ' Swb
if [ "$Swb" = "yes" ]; then
  read -p "What problem?: " swb_error
  mkdir -p Sketchub/"Downloads"/\"SWB\"/"$swb_error"
else
  mkdir -p Sketchub/"Downloads"/\"SWB\"/'No problem with ".swb" file [✅]'
fi

# Sketchware Project

read -p 'Problem with "Sketchware project" file?: ' Sketch
mkdir -p Sketchub/"Downloads"/\"Sketchware\"
if [ "$Sketch" = "yes" ]; then
  read -p "What problem?: " Sketch_error
  mkdir -p Sketchub/"Downloads"/\"Sketchware\"/"$Sketch_error"
else
  mkdir -p Sketchub/"Downloads"/\"SWB\"/'No problem with "Sketchware project" file [✅]'
fi

# Version Sketchub

read -p "What version of Sketchub?: " version
mkdir -p Sketchub/\"Version\"/"$version"

# List the directory

tree -A Sketchub

# Instruction

echo "Now copy the output format and paste to Discord in Beta-bugs"
sleep 3
echo "By Jetrom =}"
