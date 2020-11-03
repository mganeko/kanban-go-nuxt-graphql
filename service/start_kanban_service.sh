#!/bin/sh
# 
# start kanban service for systemd
#

# --- start service ---
echo "-- start kanban-*.service --"
systemctl start kanban-server
systemctl start kanban-front

# --- status ---
sleep 1
ps -ef | grep kanban

echo ""
echo "Plase exec stop_kanban_service.sh for stop service"

