**Задание 1. Создать Deployment и обеспечить доступ к контейнерам приложения по разным портам из другого Pod внутри кластера** <br>
**Создать Deployment приложения, состоящего из двух контейнеров (nginx и multitool), с количеством реплик 3 шт.** <br>
**Создать Service, который обеспечит доступ внутри кластера до контейнеров приложения из п.1 по порту 9001 — nginx 80, по 9002 — multitool 8080.** <br>
**Создать отдельный Pod с приложением multitool и убедиться с помощью curl, что из пода есть доступ до приложения из п.1 по разным портам в разные контейнеры.** <br>
**Продемонстрировать доступ с помощью curl по доменному имени сервиса.** <br>
**Предоставить манифесты Deployment и Service в решении, а также скриншоты или вывод команды п.4.** <br>

Создан deployment <br>
![1-деплоймент](https://github.com/user-attachments/assets/75020550-dcde-4239-a503-91734a2544d7) <br>
Запуск\проверка <br>
![2-запуск проверка](https://github.com/user-attachments/assets/7806fc67-fc14-4bba-90c2-4cd4959555c6) <br>
Создан svc <br>
![3-service](https://github.com/user-attachments/assets/3d6d715b-43b9-4aff-b007-bd24daac29d8) <br>
Запуск\проверка <br>
![4-запуск проверка](https://github.com/user-attachments/assets/5a98a1ed-2956-4945-a9cc-70a118d53324) <br>
Создан pod <br>
![5-POD](https://github.com/user-attachments/assets/e070a704-52c1-45cc-b0ef-ae7fd8a9009e) <br>
Демонстрация curl <br>
![6-demo](https://github.com/user-attachments/assets/f6738ddb-032f-4bd9-992d-96951c866554) <br>


**Задание 2. Создать Service и обеспечить доступ к приложениям снаружи кластера** <br>
**Создать отдельный Service приложения из Задания 1 с возможностью доступа снаружи кластера к nginx, используя тип NodePort.** <br>
**Продемонстрировать доступ с помощью браузера или curl с локального компьютера.** <br>
**Предоставить манифест и Service в решении, а также скриншоты или вывод команды п.2.** <br>

Создан svc extnet <br>
![7-svcextnet](https://github.com/user-attachments/assets/c4846714-1300-4318-af43-d9304539141f) <br>
Запуск проверка <br>
![8-запуск проверка](https://github.com/user-attachments/assets/49d89cdd-b732-4ced-9092-b6cfd102df5b) <br>
Демонстрация curl <br>
![9-demo](https://github.com/user-attachments/assets/d0c09247-f1e9-4c95-8be1-93823dde685b) <br>
Манифесты: <br>
https://github.com/Plakhoff/devops-netology/blob/master/HW%20files/HW%20k8s-3/netology-svc-net.yaml <br>
https://github.com/Plakhoff/devops-netology/blob/master/HW%20files/HW%20k8s-3/netology-deployment-net.yaml <br>
https://github.com/Plakhoff/devops-netology/blob/master/HW%20files/HW%20k8s-3/netology-svc-extnet.yaml <br>
