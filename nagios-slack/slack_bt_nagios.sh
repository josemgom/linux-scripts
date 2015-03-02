#!/bin/bash
# TO DO:
# VERSION:
# AUTHOR:


if [ "$NAGIOS_SERVICESTATE" = "CRITICAL" ]; then
    COLOR="#FF0000"
elif [ "$NAGIOS_SERVICESTATE" = "WARNING" ]; then
    COLOR="#FFF300"
elif [ "$NAGIOS_SERVICESTATE" = "OK" ]; then
    COLOR="#2FFF00"
fi

MESSAGE="Host: ${NAGIOS_HOSTNAME}\n Service: ${NAGIOS_SERVICEDISPLAYNAME}\n Alert: ${NAGIOS_SERVICEOUTPUT}",

curl -X POST --data-urlencode 'payload={"channel": "#nagios", "username": "nagios", "color": "${COLOR}", "text": "$MESSAGE", "icon_emoji": ":ghost:"}' https://hooks.slack.com/services/<token>


