#!/bin/bash
printf "%s" "push <attach-file>" > /tmp/muttpick
A="`zenity --file-selection`"
B="`basename "$A"`"
C=${B// /_}
cp "$A" "/tmp/$C"
printf "%s" "/tmp/$C"  >> /tmp/muttpick
printf "%s\n" "<enter>" >> /tmp/muttpick
echo "" >> /tmp/muttpick
