#!/bin/bash
# TO DO:
# VERSION:
# AUTHOR: Jose Manuel Gonzalez Maldonado

WEBHOOK=""
ICON=":bell:"
TITLE="New alert in ${NAGIOS_HOSTNAME}"
MESSAGE="Service: ${NAGIOS_SERVICEDISPLAYNAME}\n Alert: ${NAGIOS_SERVICEOUTPUT}"

if [ "$NAGIOS_SERVICESTATE" = "CRITICAL" ]; then
    COLOR="#FF0000"
elif [ "$NAGIOS_SERVICESTATE" = "WARNING" ]; then
    COLOR="#FFF300"
elif [ "$NAGIOS_SERVICESTATE" = "OK" ]; then
    COLOR="#2FFF00"
else
    COLOR="#000000"
fi

JSON='payload={"channel": "#general", "username": "nagios","icon_emoji": "'"$ICON"'", "color": "'"$COLOR"'", "pretext": "'"$TITLE"'", "short": true, "text": "Aqui el mensaje de la alerta"}'

curl -X POST --data-urlencode "$JSON" $WEBHOOK
