#!/bin/bash
#Скрипт проверки доступности порта на определенном ip адресе.
ip_addr=127.0.0.1 # ip адрес.
port_conected=80 # порт.
file=/var/www/html/index.nginx-debian.html             # файл стартовой страницы nginx.

nc -z -w2 "$ip_addr" "$port_conected"                  # Проверка проходит утелитой nc.
port_status=$?
var="0"
if [[ -f $file && $port_status -eq $var ]]; then        # Условие если файл пресудствует и значение работы утелиты nc равно 0.То  выводиться надпись что порт доступен.
    echo "Порт $port_conected по ip адрессу $ip_addr  ДОСТУПЕН"
    echo "Файл $file ДОСТУПЕН"
    exit 0
else                                                    #В противном случеи есле значение работы не равно 0 то вывод в консоль о не доступности.
    echo "Порт $port_conected по ip адрессу $ip_addr НЕ ДОСТУПЕН"
    echo "Файл $file НЕ ДОСТУПЕН"
    exit 1
fi
