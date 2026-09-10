#!/bin/bash

<<help
We are creating this shell script for automated backups
help

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M')

zip -r "$dest/backup-$timestamp.zip" $src > /dev/null
aws s3 sync "$dest" s3://amzn-s3-backup-data > /dev/null

echo "backup done and synced to s3"
