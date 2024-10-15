**Задание 1. Создать Deployment и обеспечить доступ к репликам приложения из другого Pod** <br>

**Создать Deployment приложения, состоящего из двух контейнеров — nginx и multitool. Решить возникшую ошибку.** <br>
**После запуска увеличить количество реплик работающего приложения до 2.** <br>
**Продемонстрировать количество подов до и после масштабирования.** <br>
**Создать Service, который обеспечит доступ до реплик приложений из п.1.** <br>
**Создать отдельный Pod с приложением multitool и убедиться с помощью curl, что из пода есть доступ до приложений из п.1.** <br>

Создаем Namespace: <br>
![1-namespace](https://github.com/user-attachments/assets/bfabb850-23cc-4f22-851c-3bc600b9b619) <br>
Создаем манифест Deployment <br>
![2-deployment](https://github.com/user-attachments/assets/2fea08a4-9a7f-42b4-a5b7-366aeda17bf8) <br>
Запуск и ошибка запуска <br>
![3-запуск ошибка](https://github.com/user-attachments/assets/59d1ce11-1487-4a0c-97a5-17bd4fc443ab) <br>
Deployment не поднялся. Согласно документации multitool поднимает веб-сервер на порту 80 и возникает конфликт. Для устранения проблемы нужно добавить переменную окружения HTTP_PORT <br>
![4-change deployment](https://github.com/user-attachments/assets/834f9143-8daa-46e2-a348-c8963bf25cf5) <br>
Проверка <br>
![5-запуск работает](https://github.com/user-attachments/assets/619e4eb9-ac9d-4824-bd1a-aa4a1d1e7903) <br>
Скейлим до 2х реплик <br>
![6-реплицирование](https://github.com/user-attachments/assets/0b189207-0765-47f9-931f-6cb1a51fd43c) <br>
![7-проверка реплик](https://github.com/user-attachments/assets/fd3275c5-fa05-4bed-ae98-de078e19eb14) <br>
Создаем манифест Service <br>
![8-service](https://github.com/user-attachments/assets/7d6b7d62-63fc-4650-9c4f-5c49d2433cb2) <br>
Запуск\проверка <br>
![9-запуск проверка сервис](https://github.com/user-attachments/assets/d26d4816-3ed1-49ba-9de3-243e94e05125) <br>
Создаем манифест отдельного пода multitool <br>
![10-мультитул под](https://github.com/user-attachments/assets/3f53d745-7dc3-4bd2-9289-802caf2590f0) <br>
Запуск\проверка <br>
![11-запуск мультитул](https://github.com/user-attachments/assets/8243d57e-63b4-4119-9164-080bd4127457) <br>
![12-проверка мультитул](https://github.com/user-attachments/assets/3a08d366-f6d2-40ad-90fd-8189c509c639) <br>
С помощью curl, проверяем, что из пода есть доступ до приложений <br>
![13-curl](https://github.com/user-attachments/assets/488ba1a1-0acd-427b-8ef4-b951463dcbd7) <br>


**Задание 2. Создать Deployment и обеспечить старт основного контейнера при выполнении условий** <br>
**Создать Deployment приложения nginx и обеспечить старт контейнера только после того, как будет запущен сервис этого приложения**. <br>
**Убедиться, что nginx не стартует. В качестве Init-контейнера взять busybox.** <br>
**Создать и запустить Service. Убедиться, что Init запустился.** <br>
**Продемонстрировать состояние пода до и после запуска сервиса.** <br>

Создаем манифест Deployment приложения nginx, который запустится только после запуска сервиса. <br>
![14-init](https://github.com/user-attachments/assets/bb267b27-c517-4c8a-8e07-850b5b7684f8) <br>
Запуск\проверка <br>
![15-init упал](https://github.com/user-attachments/assets/085ace6f-f963-40cf-9e6a-e5b7d4c5ddec) <br>
Pod не запущен и находится в состоянии Init:0/1. <br>
Создаем манифест Service: <br>
![Снимок экрана 2024-10-15 170351](https://github.com/user-attachments/assets/5becbbc8-f16e-4d9f-8270-cafab2ec8693) <br>
Запуск\проверка <br>
![16-запуск](https://github.com/user-attachments/assets/112f4d10-06ae-40f4-a835-b8f51181a1e5) <br>


Ссылка на используемые манифесты: https://github.com/Plakhoff/devops-netology/tree/62451e93266b141acc61c54dba67957ba82149ac/HW%20files/HW%20k8s-3 <br>
