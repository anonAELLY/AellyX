#!/bin/bash
echo "[i] We will now install AellyX to your bin path..."
if [ -d "/usr/share/AellyX" ] ; then
    echo "[i] Found an old version of AellyX, proceeding to update..."
    echo "[i] Backing up old verison."
    if [ -d "/usr/share/AellyX/Backup" ] ; then
        sudo mv /usr/share/AellyX/Backup ./Backup
    else
        mkdir ./Backup
    fi
    name="./Backup/AellyX"
    if [ -d $name ] ; then
        i=0
        while [ -d "$name.bak$i" ] ; do
            let i++
        done
            name="$name.bak$i"
    fi
    sudo mv /usr/share/AellyX $name
    mv ./Backup ./AellyX/
    sudo cp -ar ./AellyX /usr/share/
    echo "[i] Installation sucessful."
    echo "[i] Making AellyX executable..."
    sudo mv /usr/share/AellyX/main.py /usr/share/AellyX/rst
    sudo chmod +x /usr/share/AellyX/rst
    sudo ln -s /usr/share/AellyX/rst /usr/bin/rst || echo "[i] Link already seems to exist."
else
    sudo cp -ar ./AellyX /usr/share/
    echo "[i] Installation sucessful."
    echo "[i] Making AellyX executable..."
    sudo mv /usr/share/AellyX/main.py /usr/share/AellyX/rst
    sudo chmod +x /usr/share/AellyX/rst
    sudo ln -s /usr/share/AellyX/rst /usr/bin/rst || echo "[i] Link already seems to exist."
fi

echo "[i] You can delete the AellyX folder now."
echo "----------------------------------------"
echo "[i] Run 'sudo rst' to start AellyX."
echo "----------------------------------------"
exit 0
