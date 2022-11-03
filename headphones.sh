#!/bin/bash

<<HeadphonesDoc
  Automatic connection to bluetooth headphones,
  like in an Apple's ecosystem.

  Uses as a service in linux.
HeadphonesDoc

while true; do
  sleep 1

  if [[ ! -z $(bluetoothctl info | grep -E "$MAC_HEADPHONES") ]]; then
    sleep 10
    continue
  fi

  bluetoothctl power on && bluetoothctl connect "$MAC_HEADPHONES"
done
