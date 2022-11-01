#!/bin/bash

<<HeadphonesDoc
  Automatic connection to bluetooth headphones,
  like in an Apple's eco system.

  Uses as a service in linux.
HeadphonesDoc

while true; do
  sleep 0.5

  if [[ ! -z $(bluetoothctl info | grep -E "$MAC_HEADPHONES") ]]; then
    continue
  fi

  bluetoothctl power on && bluetoothctl connect "$MAC_HEADPHONES"
done
