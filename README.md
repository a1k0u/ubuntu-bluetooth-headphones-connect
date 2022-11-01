# ubuntu-headphones-connect


```shell
sudo mkdir /opt/headphones-connect/
sudo cp headphones.sh /opt/headphones-connect/headphones.sh
sudo cp headphones.service /etc/systemd/system/headphones.service
sudo systemctl daemon-reload
sudo systemctl enable headphones 
sudo systemctl start headphones
sudo systemctl status headphones
```

```shell
bluetoothctl scan on
```


```shell
export MAC_HEADPHONES="00:00:00:00:00:00"

alias headon='bluetoothctl power on && bluetoothctl connect "MAC_HEADPHONES"'
alias headoff='bluetoothctl disconnect "MAC_HEADPHONES" && bluetoothctl power off'
alias headrem='bluetoothctl untrust "MAC_HEADPHONES" && bluetoothctl remove "MAC_HEADPHONES"'
alias headadd='bluetoothctl trust "MAC_HEADPHONES"'
alias headwait='while true; do bluetoothctl power off; done'
```

```shell
nano import-commands-bash.sh 
```

```shell
./import-commands-bash.sh
```