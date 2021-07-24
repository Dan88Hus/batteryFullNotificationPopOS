#!/usr/bin/env bash
#!/usr/bin/env bash



while true
do
    export DISPLAY=:0.0
    battery_percent=$(acpi -b | grep -P -o '[0-9]+(?=%)')
    if on_ac_power; then
        if [ "$battery_percent" -gt 98 ]; then
            notify-send -i "$PWD/batteryfull.png" "Battery full." "Level: ${battery_percent}% "
            vlc /usr/share/sounds/freedesktop/stereo/ alarm-clock-elapsed.oga
        fi
    fi
    sleep 100 # (5 minutes)
done


# --------------modified--------------------------
# while true
# do
#     export DISPLAY=:0.0
#     battery_percent=$(acpi -b | grep -P -o '[0-9]+(?=%)')
#     if on_ac_power; then
#         if [ "$battery_percent" -gt 92 ]; then
#             notify-send -i "$PWD/batteryfull.png" "Battery full." "Level: ${battery_percent}% "
            #paplay /usr/share/sounds/ubuntu/ringtones/Alarm\ clock.ogg
            # vlc /usr/share/sounds/freedesktop/stereo\ alarm-clock-elapsed.oga
#             vlc /usr/share/sounds/freedesktop/stereo/ alarm-clock-elapsed.oga
#         fi
#     fi
#     sleep 60 # (6 sec)
# done





#------------------original-----------------
#!/bin/bash
# while true
# do
#   battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`
#    if [ $battery_level -ge 95 ]; then
#       notify-send "Battery Full" "Level: ${battery_level}%"
#       paplay /usr/share/sounds/freedesktop/stereo/suspend-error.oga
#     elif [ $battery_level -le 20 ]; then
#       notify-send --urgency=CRITICAL "Battery Low" "Level: ${battery_level}%"
#       paplay /usr/share/sounds/freedesktop/stereo/suspend-error.oga
#   fi
#  sleep 60
# done
