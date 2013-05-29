#!/bin/bash

#
# This command connects you to the simulation
# It passes a keyfile to the ssh command and logs you in as the 
# default user on the cloud machine

# ssh -i key-router.pem ubuntu@75.126.28.108
    
#
# This commands is similar, but it suppresses prompts and can be invoked 
# from any directory
#    
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -i $DIR/key-router.pem ubuntu@75.126.28.108
    