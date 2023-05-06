#!/bin/bash

output_device() {
  output="`SwitchAudioSource -c`"

  case "$output" in
    MacBook*)
      output="🔈 MAC"
      ;;
    "Car_pe'Airpods Pro")
      output="🎧 pro"
      ;;
    "Car_pe'AirPods")
      output="🎧 pods"
      ;;
  esac
  echo "$output"
}

volume() {
  volume=$(osascript -e 'output volume of (get volume settings)')
  [[ $volume = "0" ]] && volume="mute"
  echo "volume: ${volume}"
}

info() {
  echo "Car_pe"
}

ip() {
  osascript -e "IPv4 address of (system info)"
}

shurufa() {
  curPath=$(cd `dirname $0`; pwd)
  layout=$(${curPath}/get_current_shurufa)
  if [[ $layout == *"ABC"* ]];then
     echo " "
  else
     echo " "
  fi
}

now_playing() {
    IFS=$'\n' read -r -d$'\1' isPlaying title <<< "$(nowplaying-cli get playbackRate title)"
    if [ "1" = "$isPlaying" ]; then
        echo "📻 [$title]"
    fi
}
