#!/bin/sh

# --- sever ---
nohup server/kanbanserver &

# --- front --
cd front
nohup npm start &

