# Sketchub

### For Beta testers of https://sketchub.in

<p>Use standard form to submit on Discord in #Beta-bugs channel</p>
<p>How it works?</p>
<li>In your Linux/Unix based terminal</li>

```
wget https://raw.githubusercontent.com/Jetrom17/Sketchub/main/Sketchub.sh
```
<li>Download the "tree"</li>

```apt-get install tree -y```

<li>Then run</li>

```chmod +x Sketchub.sh```

```./Sketchub.sh```

<li>After filling out the form. A folder "Sketchub" has been created. Copy the created tree structure and send it to us.</li>
<br>
<font color="yellow">Note: Every time you are going to create the predefined form, delete the created folder "Sketchub".</font>

```rm -rf Sketchub```

#
### Code:
```py
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
```
#
