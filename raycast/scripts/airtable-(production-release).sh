#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Airtable (Production Release)
# @raycast.mode inline
# @raycast.refreshTime 3h

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.author Vu Tran
# @raycast.authorURL https://github.com/vutran

curl -s AIRTABLE_PRODUCTION_INTERNAL_RELEASE_VERSION_ENDPOINT | jq -r '"release-"+.releaseVersion[:11]'
