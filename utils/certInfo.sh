#!/bin/bash
if [[ $# -eq 0 ]] ; then
    echo 'Error: requires a hostname to scan for certificate as first parameter'
    exit 1
fi
echo | \
    openssl s_client -servername $1 -connect $1:443 2>/dev/null | \
    openssl x509 -text
