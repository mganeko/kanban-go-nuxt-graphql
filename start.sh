#!/bin/sh

# --- sever ---
server/server &

# --- front --
cd front
npm start &

