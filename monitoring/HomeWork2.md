**Задание 1 <br>**
_**Используя директорию help внутри этого домашнего задания, запустите связку prometheus-grafana. <br>**_
_**Зайдите в веб-интерфейс grafana, используя авторизационные данные, указанные в манифесте docker-compose. <br>**_
_**Подключите поднятый вами prometheus, как источник данных. <br>**_
_**Решение домашнего задания — скриншот веб-интерфейса grafana со списком подключенных Datasource. <br>**_
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/f164f1d2-6628-4764-83be-eddade1000e8) <br>

**Задание 2 <br>**
_**Изучите самостоятельно ресурсы: <br>**_
_**PromQL tutorial for beginners and humans. <br>**_
_**Understanding Machine CPU usage. <br>**_
_**Introduction to PromQL, the Prometheus query language. <br>**_
**Создайте Dashboard и в ней создайте Panels: <br>**
утилизация CPU для nodeexporter (в процентах, 100-idle);<br>
_avg by(instance)(rate(node_cpu_seconds_total{mode="idle"}[$__rate_interval])) * 100_ <br>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/a6c70282-4440-477e-a0ce-df3f497d2cb2) <br>

CPULA 1/5/15; <br>
_avg by (instance)(rate(node_load1{}[$__rate_interval]))_ <br>
_avg by (instance)(rate(node_load5{}[$__rate_interval]))_ <br>
_avg by (instance)(rate(node_load15{}[$__rate_interval]))_ <br>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/064d26fb-d8bf-4e86-9b18-dbbd9708c0ed) <br>
количество свободной оперативной памяти; <br>
_node_memory_MemFree_bytes_ <br>
_node_memory_MemAvailable_bytes_ <br>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/600fe732-1936-4139-9edf-4ef5f91d2d0c) <br>
количество места на файловой системе. <br>
_node_filesystem_free_bytes{fstype="ext4"}_ <br>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/a5bfc8ce-7c23-4da4-99f5-8ec5e7964241) <br>
Для решения этого задания приведите promql-запросы для выдачи этих метрик, а также скриншот получившейся Dashboard. <br>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/8d42520d-fa10-47db-9f64-b2436aa74c0a) <br>

Задание 3 <br>
Создайте для каждой Dashboard подходящее правило alert — можно обратиться к первой лекции в блоке «Мониторинг». <br>
В качестве решения задания приведите скриншот вашей итоговой Dashboard. <br>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/a172acde-d146-451e-a13e-a8d50d8d2e65) <br>
Задание 4 <br>
Сохраните ваш Dashboard.Для этого перейдите в настройки Dashboard, выберите в боковом меню «JSON MODEL». Далее скопируйте отображаемое json-содержимое в отдельный файл и сохраните его. <br>
В качестве решения задания приведите листинг этого файла. <br>
https://github.com/Plakhoff/devops-netology/blob/master/monitoring/dashbord.json <br>
