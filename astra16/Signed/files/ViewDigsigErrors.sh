#!/bin/bash

sudo cat /var/log/messages | grep "NOT SIGNED:"
# | grep "VERIFICATION FAILED"
# | awk '{print $10}'

# | grep "kernel" 
#| awk '{print $10}'