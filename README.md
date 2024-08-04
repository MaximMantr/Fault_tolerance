#  Домашнее задание к занятию «Кластеризация и балансировка нагрузки»

---

`Мантуров Максим Андреевич`
---

#### Задание № 1 
- `Запустить два simple python сервера на виртуальной машине на разных портах`
- `Установить и настроить HAProxy.`
- `Настроить балансировку Round-robin на 4 уровне.`
---
`Решение`


[ФАЙЛ haproxy.cfg  ](https://github.com/MaximMantr/Fault_tolerance/blob/Clustering/Clustering_and_load_balancing_imag/File/haproxy.cfg)

- `Cкриншоты работы `

![1-](https://github.com/MaximMantr/Fault_tolerance/blob/Clustering/Clustering_and_load_balancing_imag/Task-1/01.png)
![1-](https://github.com/MaximMantr/Fault_tolerance/blob/Clustering/Clustering_and_load_balancing_imag/Task-1/02.png)
![1-](https://github.com/MaximMantr/Fault_tolerance/blob/Clustering/Clustering_and_load_balancing_imag/Task-1/03.png)
![1-](https://github.com/MaximMantr/Fault_tolerance/blob/Clustering/Clustering_and_load_balancing_imag/Task-1/04.png)
![1-](https://github.com/MaximMantr/Fault_tolerance/blob/Clustering/Clustering_and_load_balancing_imag/Task-1/05.png)
![1-](https://github.com/MaximMantr/Fault_tolerance/blob/Clustering/Clustering_and_load_balancing_imag/Task-1/06.png)
---
![1-](https://github.com/MaximMantr/Fault_tolerance/blob/Clustering/Clustering_and_load_balancing_imag/Task-1/07.png)
![1-](https://github.com/MaximMantr/Fault_tolerance/blob/Clustering/Clustering_and_load_balancing_imag/Task-1/08.png)
---

---

#### Задание № 2 
- `Запустить три simple python сервера на  виртуальной машине на разных портах`
- `Настроить балансировку Weighted Round Robin на 7 уровне, чтобы первый сервер имел вес 2, второй - 3, а третий - 4`
- `HAproxy должен балансировать только тот http-трафик, который адресован домену example.local`



`Решение`

[ФАЙЛ haproxy-2.cfg ](https://github.com/MaximMantr/Fault_tolerance/blob/Clustering/Clustering_and_load_balancing_imag/File/haproxy-2.cfg)


- `Cкриншоты работы`
![2-1](https://github.com/MaximMantr/Fault_tolerance/blob/Clustering/Clustering_and_load_balancing_imag/Task-2/1.png)
![2-2](https://github.com/MaximMantr/Fault_tolerance/blob/Clustering/Clustering_and_load_balancing_imag/Task-2/2.png)
![2-3](https://github.com/MaximMantr/Fault_tolerance/blob/Clustering/Clustering_and_load_balancing_imag/Task-2/3.png)
![2-6](https://github.com/MaximMantr/Fault_tolerance/blob/Clustering/Clustering_and_load_balancing_imag/Task-2/6.png)
![2-6](https://github.com/MaximMantr/Fault_tolerance/blob/Clustering/Clustering_and_load_balancing_imag/Task-2/7.png)
![2-6](https://github.com/MaximMantr/Fault_tolerance/blob/Clustering/Clustering_and_load_balancing_imag/Task-2/8.png)
---
![2-4](https://github.com/MaximMantr/Fault_tolerance/blob/Clustering/Clustering_and_load_balancing_imag/Task-2/5.png)
![2-5](https://github.com/MaximMantr/Fault_tolerance/blob/Clustering/Clustering_and_load_balancing_imag/Task-2/4.png)
---

> ### Спосибо за внимание!
