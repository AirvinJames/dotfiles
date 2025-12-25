#!/bin/sh

class=$(playerctl metadata --format '{{lc(status)}}')
icon=""
iconOff="󰝛"

if [[ $class == "playing" ]]; then
  info=$(playerctl metadata --format '{{artist}} - {{title}}')
  if [[ ${#info} > 40 ]]; then
    info=$(echo $info | cut -c1-40)"..."
  fi
  text=$icon"    "$info
elif [[ $class == "paused" ]]; then
  text=$icon" Paused"
elif [[ $class == "" ]]; then
  text=$iconOff" Nothing playing..."
fi

echo -e "{\"text\":\""$text"\", \"class\":\""$class"\"}"

