#!/bin/bash
TEST=$1
DATE=$(date +"%Y-%m-%d-%H-%M-%S")
if [ "-f" "$TEST" ]
then
	tar -cvjf "$TEST-$DATE.tar.bz2" "$TEST"
elif
	[ "-d" "$TEST" ]
then
        tar -cvjf "$TEST-$DATE.tar.bz2" "$TEST"
fi

# https://stackoverflow.com/questions/49964364/shell-scripting-to-compress-directory
# https://stackoverflow.com/questions/1401482/yyyy-mm-dd-format-date-in-shell-script
# https://askubuntu.com/questions/222512/cron-info-no-mta-installed-discarding-output-error-in-the-syslog : to install the MTA
