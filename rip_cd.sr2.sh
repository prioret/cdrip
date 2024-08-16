#!/bin/bash
LOGFILE="$HOME/rip_cd2.log"
echo "Rip CD SR2 Script Sarted" >> "$LOGFILE" 2>&1

# Wait for the CD to be fully ready
sleep 10

# Rip the CD and encode to FLAC
abcde -N -c ~/.abcde.conf.sr2 >> "$LOGFILE" 2>&1

#picard $HOME/Music

#eject /dev/sr2
echo "Rip CD SR2 Script Ended" >> "$LOGFILE" 2>&1