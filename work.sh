#!/bin/bash

# ==================================================================
# APPS
# ==================================================================

echo "Opening productivity apps"
apps=(
  "Todoist"
  "iTerm"
  "Slack"
  "Calendar"
  "Mail"
  "Spotify"
)

for app in "${apps[@]}"; do
  open -a "$app"
done

open -a "Google Chrome" --args --profile-directory="Profile 1"
