#!/bin/sh

git clone https://github.com/vonpupp/bootstrap.castle setup
setup/do-bootstrap.sh
./10-install.sh
./20-config.sh
