#!/bin/sh
DIRNAME=`dirname $0`

source $DIRNAME/.vars
source ~/.homesick/repos/homeshick/homeshick.sh
homeshick link $REPO_NAME

$DIRNAME/10-install.sh
$DIRNAME/20-config.sh
