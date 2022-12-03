#!/bin/bash
echo "[i] We will now uninstall AellyX..."
echo "[i] This will delete all backups."
sudo rm -i /usr/bin/rst
sudo rm -rf -i /usr/share/AellyX

echo "[i] AellyX sucessfully uninstalled."
exit 0
