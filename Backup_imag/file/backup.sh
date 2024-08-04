#!/bin/bash

# Исходная директория
DIR_A="/home/night"
# Целевая директория
DIR_B="/tmp/backup"
# Команда rsync. Cтандартный вывод - в /dev/null, ошибки - в лог.
rsync -a --checksum --exclude=".*" "$DIR_A" "$DIR_B" > /dev/null 2>> /var/log/backup.log

# Проверка кода завершения rsync и запись лога
if [ $? -eq 0 ]; then
    echo "[$(date)] Backup is complete" >> /var/log/backup.log
else
    echo "[$(date)] Backup ERROR" >> /var/log/backup.log
fi
