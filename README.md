## Automatically connection of bluetooth headphones in Ubuntu

> It is awesome when your wireless headphones automatically pairing with your system. 

This daemon-script and
commands will help you to solve this problem.

### Find out MAC-address of your headphones
If you have already connected your device, then
use this command:

```shell
bluetoothctl paired-devices
```

In another case, you should use scan system 
(_do not forget to turn on your device_):

```shell
bluetoothctl scan on
```

### Start daemon

Open `headphones.service` and fill in MAC-address:
```shell
nano headphones.service
```

Create folder for script and copy files:

```shell
sudo mkdir /opt/headphones-connect/
sudo cp headphones.sh /opt/headphones-connect/headphones.sh
sudo cp headphones.service /etc/systemd/system/headphones.service
```

Reload daemons, enable and start new service,
try to check status of it:

```shell
sudo systemctl daemon-reload
sudo systemctl enable headphones 
sudo systemctl start headphones
sudo systemctl status headphones
```

### CLI commands to manage your connection with headphones

Add aliases and environmental variable in `.bashrc`, but after adding MAC-address.

```shell
nano import-commands-bash.sh 
```

```shell
./import-commands-bash.sh
```

Connect headphones:
```shell
bluetoothctl power on && bluetoothctl connect $MAC_HEADPHONES
```

Disconnect headphones:
```shell
bluetoothctl disconnect $MAC_HEADPHONES && bluetoothctl power off
```

Remove headphones:
```shell
bluetoothctl untrust $MAC_HEADPHONES && bluetoothctl remove $MAC_HEADPHONES
```

Add headphones:
```shell
bluetoothctl trust $MAC_HEADPHONES
```

_With this daemon you won't able connect your
headphones with another device_, but there is a
solution: in infinity circle power off bluetooth,
after press `Ctrl+C` to stop it.

```shell
while true; do bluetoothctl power off; done
```
