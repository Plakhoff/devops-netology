**Задание 1. Создать Deployment приложения и решить возникшую проблему с помощью ConfigMap. Добавить веб-страницу** <br>
**Создать Deployment приложения, состоящего из контейнеров nginx и multitool.** <br>
**Решить возникшую проблему с помощью ConfigMap.** <br>
**Продемонстрировать, что pod стартовал и оба конейнера работают.** <br>
**Сделать простую веб-страницу и подключить её к Nginx с помощью ConfigMap. Подключить Service и показать вывод curl или в браузере.** <br>
**Предоставить манифесты, а также скриншоты или вывод необходимых команд.** <br>

Создан deployment <br>
![1-деплоймент](https://github.com/user-attachments/assets/cd797276-78e7-41f4-92fc-255496245fe4) <br>
Создан Configmap <br>
![2-конфиг мап](https://github.com/user-attachments/assets/a31a00cb-0b13-4656-b1e6-636da1a24125) <br>
Запуск\проверка <br>
![3-запуск проверка](https://github.com/user-attachments/assets/c58aacdd-41be-4ae1-9c0e-2cbc0493643d) <br>
Создан service <br>
![4-сервис](https://github.com/user-attachments/assets/4cde7c78-9036-4e0a-b393-3582b2aa9655) <br>
Демонстрация <br>
![5-запуск проверка](https://github.com/user-attachments/assets/255bbb16-56ac-4acf-b53c-82f744de3d81) <br>

**Задание 2. Создать приложение с вашей веб-страницей, доступной по HTTPS** <br>
**Создать Deployment приложения, состоящего из Nginx.** <br>
**Создать собственную веб-страницу и подключить её как ConfigMap к приложению.** <br>
**Выпустить самоподписной сертификат SSL. Создать Secret для использования сертификата.** <br>
**Создать Ingress и необходимый Service, подключить к нему SSL в вид. Продемонстировать доступ к приложению по HTTPS.** <br>
**Предоставить манифесты, а также скриншоты или вывод необходимых команд.** <br>

Создан deployment <br>
![6-деплоймент](https://github.com/user-attachments/assets/1d05922a-5330-4a86-9a06-06f0cd499463) <br>
Создан Configmap <br>
![7-конфигмап](https://github.com/user-attachments/assets/f94e0676-8b00-49e3-8ddf-e5184ae7c94b) <br>
Выпуск сертификата <br>
![8-выпуск серта](https://github.com/user-attachments/assets/8683fdbb-ed8c-4cc7-bbed-ef810fd0415c) <br>
Создан secret <br>
![9-secret](https://github.com/user-attachments/assets/ae347b69-7ef7-4ae1-ba88-99204a47a672) <br>
Создан Ingress <br>
![10-ingress](https://github.com/user-attachments/assets/3a919d80-37de-40e2-8b90-4581dd90bcc6) <br>
Создан service <br>
![11-svc](https://github.com/user-attachments/assets/0b339acb-b709-44ec-bf06-f60ff2ec2a15) <br>
Запуск\проверка <br>
![11-svc запущен](https://github.com/user-attachments/assets/b6e7be1e-fe22-4967-88b0-7b1fdd113a47) <br>
Демонстрация <br>
![15-проверка](https://github.com/user-attachments/assets/0587c34e-4191-4bcf-9470-cc0e6cf3e2ec) <br>
