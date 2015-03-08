# Nagios ~ Slack integration 


This script allows the possibility to send Nagios's alerts notifications to a specified channel in Slack



# Configuration 




1 - Add the contacts.cfg content in your contacts.cfg file in Nagios. If you installed Nagios in a Ubuntu system using apt-get, you can locate the contacts.cfg file at /etc/nagios3/conf.d/contacts_nagios2.cfg




2 - Add the commands.cfg content at the end of your commands.cfg file in Nagios. If you installed Nagios in a Ubuntu system using apt-get, you can locate the contacts.cfg file at /etc/nagios3/commands.cfg




3 - Put the script slack_bt_nagios in /usr/bin/ and then configure the following vars.

SLACK_CHANNEL="#nagios-alerts" # Here you can set the channel for receive the alerts

SLACK_WEBHOOK="" # Here you have to add the Webhook url provided by the Slack Incoming Hook integration

SLACK_ICON=":bell:" # Set the emoji icon for your alerts :-)

SLACK_ALERT_TITLE="*New alert in ${NAGIOS_HOSTNAME}*" # Set the alert title

SLACK_ALERT_MESSAGE="*Service:* ${NAGIOS_SERVICEDISPLAYNAME}\n *Alert:* ${NAGIOS_SERVICEOUTPUT}" # Set 
the message for your alert.
