#  Домашнее задание к занятию «Disaster recovery и Keepalived»

---

`Мантуров Максим Андреевич`
---

#### Задание № 1 

- `Дана схема для Cisco Packet Tracer.`
- `На данной схеме уже настроено отслеживание интерфейсов маршрутизаторов Gi0/1 (для нулевой группы)`
- `Необходимо аналогично настроить отслеживание состояния интерфейсов Gi0/0 (для первой группы).`
- `Для проверки корректности настройки, разорвите один из кабелей между одним из маршрутизаторов и Switch0 и запустите ping между PC0 и Server0.`
- `На проверку отправьте получившуюся схему в формате pkt и скриншот, где виден процесс настройки маршрутизатора.`

---
`Решение`


[ФАЙЛ CISCO - ptk  ](https://github.com/MaximMantr/Fault_tolerance/blob/master/Disaster_recovery_and_Keepalived_imag/File/cisco.pkt)

- `Cкриншоты настройки маршрутизаторов`

![1-1](https://github.com/MaximMantr/Fault_tolerance/blob/master/Disaster_recovery_and_Keepalived_imag/Cisco/1.png)
---

- `Команда ping`
![1-2](https://github.com/MaximMantr/Fault_tolerance/blob/master/Disaster_recovery_and_Keepalived_imag/Cisco/2.png)
![1-3](https://github.com/MaximMantr/Fault_tolerance/blob/master/Disaster_recovery_and_Keepalived_imag/Cisco/3.png)
![1-4](https://github.com/MaximMantr/Fault_tolerance/blob/master/Disaster_recovery_and_Keepalived_imag/Cisco/4.png)
![1-5](https://github.com/MaximMantr/Fault_tolerance/blob/master/Disaster_recovery_and_Keepalived_imag/Cisco/5.png)
![1-6](https://github.com/MaximMantr/Fault_tolerance/blob/master/Disaster_recovery_and_Keepalived_imag/Cisco/6.png)
![1-7](https://github.com/MaximMantr/Fault_tolerance/blob/master/Disaster_recovery_and_Keepalived_imag/Cisco/7.png)
![1-8](https://github.com/MaximMantr/Fault_tolerance/blob/master/Disaster_recovery_and_Keepalived_imag/Cisco/8.png)
![1-9](https://github.com/MaximMantr/Fault_tolerance/blob/master/Disaster_recovery_and_Keepalived_imag/Cisco/9.png)
![1-10](https://github.com/MaximMantr/Fault_tolerance/blob/master/Disaster_recovery_and_Keepalived_imag/Cisco/10.png)
![1-11](https://github.com/MaximMantr/Fault_tolerance/blob/master/Disaster_recovery_and_Keepalived_imag/Cisco/11.png)
![1-12](https://github.com/MaximMantr/Fault_tolerance/blob/master/Disaster_recovery_and_Keepalived_imag/Cisco/12.png)

---

#### Задание № 2 

- `Запустить две виртуальные машины Linux, установить и настроить сервис Keepalived, используя пример конфигурационного файла.`
- `Настроить любой веб-сервер (например, nginx или simple python server) на двух виртуальных машинах `
- `Написать Bash-скрипт, который будет проверять доступность порта данного веб-сервера и существование файла index.html в root-директории данного веб-сервера. `
- `Настроить Keepalived так, чтобы он запускал данный скрипт каждые 3 секунды и переносил виртуальный IP на другой сервер, если bash-скрипт завершался с кодом, отличным от нуля (то есть порт веб-сервера был недоступен или отсутствовал index.html). Использовать для этого секцию vrrp_script `
- `На проверку отправьте получившейся bash-скрипт и конфигурационный файл keepalived, а также скриншот с демонстрацией переезда плавающего ip на другой сервер в случае недоступности порта или файла index.html `



`Решение`

[ФАЙЛ скрипт check.sh ](https://github.com/MaximMantr/Fault_tolerance/blob/master/Disaster_recovery_and_Keepalived_imag/File/check.sh)

[ФАЙЛ конфигурации SERVER-1](https://github.com/MaximMantr/Fault_tolerance/blob/master/Disaster_recovery_and_Keepalived_imag/File/keepalived.conf)

[ФАЙЛ конфигурации SERVER-2](https://github.com/MaximMantr/Fault_tolerance/blob/master/Disaster_recovery_and_Keepalived_imag/File/keepalived-2.conf)

- `Весь процесс представлен в виде скриншотов`
![2-1](https://github.com/MaximMantr/Fault_tolerance/blob/master/Disaster_recovery_and_Keepalived_imag/Keepalived/1.png)
![2-2](https://github.com/MaximMantr/Fault_tolerance/blob/master/Disaster_recovery_and_Keepalived_imag/Keepalived/2.png)
![2-3](https://github.com/MaximMantr/Fault_tolerance/blob/master/Disaster_recovery_and_Keepalived_imag/Keepalived/3.png)
![2-4](https://github.com/MaximMantr/Fault_tolerance/blob/master/Disaster_recovery_and_Keepalived_imag/Keepalived/4.png)
![2-5](https://github.com/MaximMantr/Fault_tolerance/blob/master/Disaster_recovery_and_Keepalived_imag/Keepalived/5.png)
![2-6](https://github.com/MaximMantr/Fault_tolerance/blob/master/Disaster_recovery_and_Keepalived_imag/Keepalived/6.png)

- `После того как мы переименовали index файл. Видем что при проверки наш скрипт его не нашол и наш ip адресс переназначился на 2 SERVER.`
![2-7](https://github.com/MaximMantr/Fault_tolerance/blob/master/Disaster_recovery_and_Keepalived_imag/Keepalived/7.png)
![2-8](https://github.com/MaximMantr/Fault_tolerance/blob/master/Disaster_recovery_and_Keepalived_imag/Keepalived/8.png)
![2-9](https://github.com/MaximMantr/Fault_tolerance/blob/master/Disaster_recovery_and_Keepalived_imag/Keepalived/9.png)
![2-10](https://github.com/MaximMantr/Fault_tolerance/blob/master/Disaster_recovery_and_Keepalived_imag/Keepalived/10.png)
![2-11](https://github.com/MaximMantr/Fault_tolerance/blob/master/Disaster_recovery_and_Keepalived_imag/Keepalived/11.png)
![2-12](https://github.com/MaximMantr/Fault_tolerance/blob/master/Disaster_recovery_and_Keepalived_imag/Keepalived/12.png)

> ### Спосибо за внимание!
