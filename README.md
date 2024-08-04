#  Домашнее задание к занятию «Резервное копирование»

---

`Мантуров Максим Андреевич`
---

#### Задание № 1 
- `Составьте команду rsync, которая позволяет создавать зеркальную копию домашней директории пользователя в директорию /tmp/backup`
- `Необходимо исключить из синхронизации все директории, начинающиеся с точки (скрытые)`
- `Необходимо сделать так, чтобы rsync подсчитывал хэш-суммы для всех файлов, даже если их время модификации и размер идентичны в источнике и приемнике.`
- `На проверку направить скриншот с командой и результатом ее выполнения`

---
`Решение`


- `Cкриншоты работы `

```
sudo rsync -avP --checksum --exclude=".*" /home/user /tmp/backup
```
![1-1](https://github.com/MaximMantr/Fault_tolerance/blob/Backup/Backup_imag/Task-1/1.png)
![1-2](https://github.com/MaximMantr/Fault_tolerance/blob/Backup/Backup_imag/Task-1/2.png)
![1-3](https://github.com/MaximMantr/Fault_tolerance/blob/Backup/Backup_imag/Task-1/3.png)



---

#### Задание № 2 

- `Написать скрипт и настроить задачу на регулярное резервное копирование домашней директории пользователя с помощью rsync и cron.`
- `Резервная копия должна быть полностью зеркальной`
- `Резервная копия должна создаваться раз в день, в системном логе должна появляться запись об успешном или неуспешном выполнении операции`
- `Резервная копия размещается локально, в директории /tmp/backup`


`Решение`

[ФАЙЛ backup.sh](https://github.com/MaximMantr/Fault_tolerance/blob/Backup/Backup_imag/file/backup.sh)
```
Файл crontab создаеться с помощью команды crontab -e 
Хрониться данный файл в последуещим /var/spool/cron/crontabs/

# Edit this file to introduce tasks to be run by cron.
# 
# Each task to run has to be defined through a single line
# indicating with different fields when the task will be run
# and what command to run for the task
# 
# To define the time you can provide concrete values for
# minute (m), hour (h), day of month (dom), month (mon),
# and day of week (dow) or use '*' in these fields (for 'any').
# 
# Notice that tasks will be started based on the cron's system
# daemon's notion of time and timezones.
# 
# Output of the crontab jobs (including errors) is sent through
# email to the user the crontab file belongs to (unless redirected).
# 
# For example, you can run a backup of all your user accounts
# at 5 a.m every week with:
# 0 5 * * 1 tar -zcf /var/backups/home.tgz /home/
# 
# For more information see the manual pages of crontab(5) and cron(8)
# 
# m h  dom mon dow   command
0 0 * * * /home/osboxes/backup.sh #Каждый день в полначь происходит отработка скрипта

```
- `Пример использования `

Запустить скрипт в 5 и 35 минут пятого (16:05 и 16:35), каждый день:
```
5,35 16  * * * /home/user/script.sh 

```

- `Cкриншоты работы`
![2-4](https://github.com/MaximMantr/Fault_tolerance/blob/Backup/Backup_imag/Task-2/4.png)
![2-5](https://github.com/MaximMantr/Fault_tolerance/blob/Backup/Backup_imag/Task-2/5.png)
![2-6](https://github.com/MaximMantr/Fault_tolerance/blob/Backup/Backup_imag/Task-2/6.png)
![2-7](https://github.com/MaximMantr/Fault_tolerance/blob/Backup/Backup_imag/Task-2/7.png)

> ### Спосибо за внимание!
