# Nagios ~ Glip integration 


This script allows the possibility to send Nagios's alerts notifications to a specified channel in Glip

# Configuration 

* Add the contacts.cfg content in your contacts.cfg file in Nagios. If you have installed Nagios in a Ubuntu system using apt-get, you can locate the contacts.cfg file at /etc/nagios3/conf.d/contacts_nagios2.cfg
* Add the commands.cfg content at the end of your commands.cfg file in Nagios. If you have installed Nagios in a Ubuntu system using apt-get, you can locate the contacts.cfg file at /etc/nagios3/commands.cfg
* Put the script glip_bt_nagios in /usr/bin/ and then configure the following vars

```
GLIP_WEBHOOK="" # Here you have to add the Webhook url provided by the Glip Incoming Hook integration
GLIP_ACTIVITY="Nagios Alert" # Set the alert title
GLIP_ALERT_DESC="**New alert in** ${NAGIOS_HOSTNAME}" # Set de alert description
GLIP_ALERT_MESSAGE="* **Service:** ${NAGIOS_SERVICEDISPLAYNAME}\n * **Alert:** ${NAGIOS_SERVICEOUTP
```

# Screenshot

