#!/bin/bash
bat=$(acpi -a)
if [ "$bat" = "Adapter 0: on-line" ]; then
  i3lock -n
else
  systemctl suspend
fi
