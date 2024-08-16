#!/bin/bash
LOGFILE="$HOME/rip_cd7.log"
echo "Rip CD SR7 Script Sarted" >> "$LOGFILE" 2>&1

# Wait for the CD to be fully ready
sleep 20

# Rip the CD and encode to FLAC
abcde -N -c ~/.abcde.conf.sr7 >> "$LOGFILE" 2>&1

#picard $HOME/Music

#eject /dev/sr7
echo "Rip CD SR7 Script Ended" >> "$LOGFILE" 2>&1