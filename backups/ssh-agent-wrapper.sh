#!/bin/bash
SOCKET=/var/lib/jenkins/.ssh/agent.socket
ENV=/var/lib/jenkins/.ssh/agent.env
ssh-agent -a $SOCKET > $ENV
