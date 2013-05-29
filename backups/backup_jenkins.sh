#!/bin/bash

cd /mnt/jenkins
TARFILE=backup_jenkins_` date +"%y%m%d-%H%M"`.tar
tar cf /var/lib/jenkins/${TARFILE} . --exclude workspace
echo ====================
echo Current vbackups
echo ====================
ls -ltr /var/lib/jenkins/backup_jenkins_*
echo " "
echo =====================
echo Space left on disk
echo =====================
cd /var/lib/jenkins 
df .
