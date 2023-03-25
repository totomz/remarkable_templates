#!/bin/bash

cleanup() {
  rm templates.json || true
  rm templates.merged.json || true
}
 
cleanup
# Sending the PNG files to reMarkable
scp templates/*.png rem:/usr/share/remarkable/templates
# Receiving the current templates.json to add our custom templates
scp rem:/usr/share/remarkable/templates/templates.json ./templates.json
# Adding the custom templates to templates.json
#jq -n '{ templates: [ inputs.templates ] | add | unique_by(.name)}' templates.json templates.addition.json > templates.merged.json
node parser.js
# Taking a backup of the templates.json in any case
ssh rem "cp /usr/share/remarkable/templates/templates.json /usr/share/remarkable/templates/templates.backup.json"
# Replacing the templates.json on the device with merged one
scp templates.merged.json rem:/usr/share/remarkable/templates/templates.json
# Restarting the GUI service
ssh rem "systemctl restart xochitl"
