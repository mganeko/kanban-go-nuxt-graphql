#!/bin/sh
# 
# installl kanban service for systemd
#

# -- edit env --
echo "-- prepare kanban-env --"
if [ -e /etc/default/kanban-env ]; then
  echo "/etc/default/kanban-env already exist, so use it."
else
  cp kanban-env.tmpl /etc/default/kanban-env
  echo "Please edit /etc/defalut/kanban-env"
  sleep 3
  vi /etc/default/kanban-env
fi

# --- install service ---
echo "-- install .service --"
cp kanban-server.service /etc/systemd/system/
cp kanban-front.service /etc/systemd/system/
systemctl enable kanban-server
systemctl enable kanban-front

# -- status --
systemctl list-unit-files --type=service | grep kanban
echo ""
echo "Plase exec start_kanban.sh for start service"
