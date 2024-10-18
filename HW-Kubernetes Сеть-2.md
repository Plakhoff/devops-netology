**Задание 1. Создать Deployment приложений backend и frontend** <br>

**Создать Deployment приложения frontend из образа nginx с количеством реплик 3 шт.** <br>
**Создать Deployment приложения backend из образа multitool.** <br>
**Добавить Service, которые обеспечат доступ к обоим приложениям внутри кластера.** <br>
**Продемонстрировать, что приложения видят друг друга с помощью Service.** <br>
**Предоставить манифесты Deployment и Service в решении, а также скриншоты или вывод команды п.4.** <br>

Создан deployment frontend <br>
![1-front](https://github.com/user-attachments/assets/bd8d713b-1b0e-44c0-ac0e-1049b2471f39) <br>
Создан deployment backend <br>
![2-back](https://github.com/user-attachments/assets/f391e7b0-f19d-482f-8cba-c9e8ebdf6f0a) <br>
Запуск проверка <br>
![3-запуск проверка](https://github.com/user-attachments/assets/7e1e46b9-2a20-4ab4-8792-546eaeb8d9ba) <br>
Создан service frontend <br>
![4-svc front](https://github.com/user-attachments/assets/8e19cf17-d6b3-4710-bd38-6d8bfcd644cb) <br>
Создан service backend <br>
![5-svc back](https://github.com/user-attachments/assets/1a4d44e2-d8c5-4a1e-a1c3-8a4a8c544822) <br>
Запуск проверка <br>
![6-запуск проверка](https://github.com/user-attachments/assets/3d7760cf-c71d-40d9-910c-5077c9d4a921) <br>
Проверка запущенных pods <br>
![7-запущенные поды](https://github.com/user-attachments/assets/1a2b6638-689f-447a-8c05-90e0b1c9b40b) <br>
Демонстрация доступности <br>
![8-проверка доступности](https://github.com/user-attachments/assets/43677e68-3290-4d61-93ef-fd5163385363) <br>

**Задание 2. Создать Ingress и обеспечить доступ к приложениям снаружи кластера** <br>

**Включить Ingress-controller в MicroK8S.** <br>
**Создать Ingress, обеспечивающий доступ снаружи по IP-адресу кластера MicroK8S так, чтобы при запросе только по адресу открывался frontend а при добавлении /api - backend.** <br>
**Продемонстрировать доступ с помощью браузера или curl с локального компьютера.** <br>
**Предоставить манифесты и скриншоты или вывод команды п.2.** <br>

Включение ingress <br>
![9-ingress on](https://github.com/user-attachments/assets/0fbf7e35-de3c-4065-b177-eef0d20702dc) <br>
Создан манифест для ingress <br>
![10-ingress](https://github.com/user-attachments/assets/6f96c6de-b5d2-40ca-9f9a-1677bd25f24c) <br>
Запуск проверка <br>
![11-запуск проверка](https://github.com/user-attachments/assets/ef0b953c-a67e-4d2b-927e-c551f7f7f4a6) <br>
Дообавлена запись в hosts <br>
![12-hosts](https://github.com/user-attachments/assets/eac56cda-2024-4b39-abec-74d19bb081e6) <br>
Демонстрация доступности <br>
![13-demo](https://github.com/user-attachments/assets/2291f033-c077-4527-beca-580ff0f9c1a7) <br>

_Используемые манифесты:_ <br>
https://github.com/Plakhoff/devops-netology/blob/master/HW%20files/HW%20k8s-3/netology-deployment-front.yaml <br>
https://github.com/Plakhoff/devops-netology/blob/master/HW%20files/HW%20k8s-3/netology-deployment-back.yaml <br>
https://github.com/Plakhoff/devops-netology/blob/master/HW%20files/HW%20k8s-3/netology-svc-front.yaml <br>
https://github.com/Plakhoff/devops-netology/blob/master/HW%20files/HW%20k8s-3/netology-svc-back.yaml <br>
https://github.com/Plakhoff/devops-netology/blob/master/HW%20files/HW%20k8s-3/netology-ingress.yaml <br>
