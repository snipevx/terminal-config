#!/bin/bash

requirements="[+] Downloading requirements..."

for ((i=0; i<${#requirements}; i++)); do
    echo -n "${requirements:$i:1}"
    sleep 0.05
done
echo

sudo apt install tmux xclip dconf-cli

setup="[+] Setting up tmux config..."
for ((i=0; i<${#setup}; i++)); do
    echo -n "${setup:$i:1}"
    sleep 0.05
done
echo

cp snipesec_tmux.conf ~/.tmux.conf
cp vimrc ~/.vimrc
mkdir -p ~/Scripts
cp vpnIP_VM.sh ~/Scripts/vpnIP_VM.sh
cp localip.sh ~/Scripts/localip.sh
cp vim_help.txt ~/Scripts/vim_help.txt
cp tmux_help.txt ~/Scripts/tmux_help.txt
cp alias.txt ~/Scripts/alias.txt
cp bash_functions.txt ~/Scripts/bash_functions.txt
chmod +x ~/Scripts/vpnIP_VM.sh
chmod +x ~/Scripts/localip.sh

tmux_plugin="adding tmux plugin manager..."
for ((i=0; i<${#tmux_plugin}; i++)); do
    echo -n "${tmux_plugin:$i:1}"
    sleep 0.05
done
echo

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo "Press Prefix+I inside tmux to install the plugins"

setup_done="[-] Done!"
for ((i=0; i<${#setup_done}; i++)); do
    echo -n "${setup_done:$i:1}"
    sleep 0.05
done
echo

exit_txt="Exiting Script Now..."
for ((i=0; i<${#exit_txt}; i++)); do
    echo -n "${exit_txt:$i:1}"
    sleep 0.05
done
echo

echo "open new terminal for the change."
