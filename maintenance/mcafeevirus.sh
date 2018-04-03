#!/bin/bash
# credit to https://gist.github.com/tegansnyder/f8d4f3f283e1df26cf86

# Stops McAfee Endpoint Protection
sudo /usr/local/McAfee/AntiMalware/VSControl stopoas

# More permanently disables
# sudo defaults write /Library/Preferences/com.mcafee.ssm.antimalware.plist OAS_Enable -bool False
# sudo /usr/local/McAfee/AntiMalware/VSControl stop
# sudo /usr/local/McAfee/AntiMalware/VSControl reload

