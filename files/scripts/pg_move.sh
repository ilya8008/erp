#!/bin/bash
if [ ! -e /mnt/data/pgsql ]
then
    mv /var/lib/pgsql /mnt/data
fi
