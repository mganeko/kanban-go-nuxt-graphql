#!/bin/sh
# 
# stop kanban service for systemd
#

# --- stop service ---
echo "-- stop kanban-*.service --"
systemctl stop kanban-server
systemctl stop kanban-front

# --- status ---
sleep 1
ps -ef | grep kanban

echo ""
echo "Plase exec start_kanban.sh for start service"

