#!/bin/bash
# Exit if something fails
set -e

mkdir -p ~/.local/share/kservices5/
mkdir -p ~/.local/share/dbus-1/services/

cp plasma-runner-krunner_appmenu.desktop ~/.local/share/kservices5/
sed -E "s|Exec=.*\$|Exec=${PWD}/plasma-runner-krunner_appmenu|" "org.krunner_appmenu.service" > ~/.local/share/dbus-1/services/org.krunner_appmenu.service

kquitapp5 krunner
