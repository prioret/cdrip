#!/bin/bash
LOGFILE="$HOME/rip_cd0.log"
echo "Rip CD SR0 Script Sarted" >> "$LOGFILE" 2>&1

# Wait for the CD to be fully ready
sleep 20

# Rip the CD and encode to FLAC
abcde -N -c ~/.abcde.conf.sr0 >> "$LOGFILE" 2>&1

# Open Picard for metadata editing (optional)
# Uncomment the next line if you want to open Picard after ripping
#picard $HOME/Music

#eject /dev/sr0
echo "Rip CD SR0 Script Ended" >> "$LOGFILE" 2>&1