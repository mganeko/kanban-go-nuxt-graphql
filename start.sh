#!/bin/sh

# --- sever ---
server/kanbanserver &

# --- front --
cd front
npm start &

