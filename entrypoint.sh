#!/bin/sh

borg init --encryption=none /backup
echo "${BORGMATIC_CONFIG}" > /etc/borgmatic/config.yaml
echo "${BORGMATIC_CRON}" | crontab -

crond -f
