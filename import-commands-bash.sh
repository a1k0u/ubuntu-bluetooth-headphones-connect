cat ./import-commands-bash.sh
cat ./import-commands-bash.sh
cat ./import-commands-bash.sh
#!/bin/bash

commands="
# Commands: connection to bluetooth headphones by mac address

export MAC_HEADPHONES=00:00:00:00:00:00

alias headon='bluetoothctl power on && bluetoothctl connect $MAC_HEADPHONES'
alias headoff='bluetoothctl disconnect $MAC_HEADPHONES && bluetoothctl power off'
alias headrem='bluetoothctl untrust $MAC_HEADPHONES && bluetoothctl remove $MAC_HEADPHONES'
alias headadd='bluetoothctl trust $MAC_HEADPHONES'
alias headwait='while true; do bluetoothctl power off; done'
"

sudo echo "$commands" >> ~/.bashrc
