#!/bin/bash

# Display UTC in the menubar, and one or more additional zones in the drop down.
# The current format (HH:MM:SS) works best with a one second refresh, or alter
# the format and refresh rate to taste.
#
# <bitbar.title>World Clock</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Adam Snodgrass</bitbar.author>
# <bitbar.author.github>asnodgrass</bitbar.author.github>
# <bitbar.desc>Display current UTC time in the menu bar, with various timezones in the drop-down menu</bitbar.desc>
# <bitbar.image>https://cloud.githubusercontent.com/assets/6187908/12207887/464ff8b2-b617-11e5-9d61-787eed228552.png</bitbar.image>

# See below for time zone names
# https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
ZONES="Asia/Taipei Asia/Tokyo America/New_York America/Los_Angeles"
# date -u +'%H:%M:%S UTC'
date -u +'%H:%M UTC'
echo '---'
for zone in $ZONES; do
  echo "$(TZ=$zone date +'%H:%M:%S %z') $zone"
done
