#!/bin/bash

# Exit if something fails
set -e

rm ~/.local/share/kservices5/plasma-runner-krunner_appmenu.desktop
rm ~/.local/share/dbus-1/services/org.krunner_appmenu.service
kquitapp5 krunner
