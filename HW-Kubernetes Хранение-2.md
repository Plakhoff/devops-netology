**Задание 1** <br>

**Создать Deployment приложения, использующего локальный PV, созданный вручную.** <br>

**Создать Deployment приложения, состоящего из контейнеров busybox и multitool.** <br>
**Создать PV и PVC для подключения папки на локальной ноде, которая будет использована в поде.** <br>
**Продемонстрировать, что multitool может читать файл, в который busybox пишет каждые пять секунд в общей директории.** <br>
**Удалить Deployment и PVC. Продемонстрировать, что после этого произошло с PV. Пояснить, почему.** <br>
**Продемонстрировать, что файл сохранился на локальном диске ноды. Удалить PV. Продемонстрировать что произошло с файлом после удаления PV. Пояснить, почему.** <br>
**Предоставить манифесты, а также скриншоты или вывод необходимых команд.** <br>

Создан deployment <br>
![1-деплоймент](https://github.com/user-attachments/assets/f6873690-6877-45f4-a2e4-fe6d2582c4f3) <br>

Создана директория, включена поддержка <br>
![2-создали директорию включили поддержку ](https://github.com/user-attachments/assets/92ca5720-f7d2-4be5-a93b-bac2d9565721) <br>

Созданы PV и PVC <br>
![3-PV](https://github.com/user-attachments/assets/aa56906b-99e6-40ab-8fcc-ff2d734d6283) <br>
![4-PVC](https://github.com/user-attachments/assets/48220a22-fe2d-4ab8-93e6-cb6169594d84) <br>

Запуск\проверка <br>
![5-запуск](https://github.com/user-attachments/assets/d7e04083-d405-4ef4-b491-06d6e7f5c94d) <br>

Демонстрация работоспособности <br>
![6-демонстрация работы](https://github.com/user-attachments/assets/23d0adcd-2518-404c-bb88-4d7654a8ffcf) <br>

Удален Deployment и PVC. После удаления PVC у PV меняется статус с Bound (когда он был связан с PV) на статус Released (свободный, не связанный ни с каким PVC). <br>
![7-delete](https://github.com/user-attachments/assets/f096c9d6-a6f8-43e0-a841-9777a86f2e98) <br>
В конфиге PV содержится параметр persistentVolumeReclaimPolicy: Retain, который означает, что после удаления PV ресурсы из внешних провайдеров автоматически не удаляются. <br>
![8-показ](https://github.com/user-attachments/assets/90fa4baa-a0ec-4504-9bcb-1e3f25e6f0f8) <br> 
![9-показ](https://github.com/user-attachments/assets/71863e5f-d67d-4f61-9eb8-d83e8d92b0bb) <br>

**Задание 2** <br>

**Создать Deployment приложения, которое может хранить файлы на NFS с динамическим созданием PV.** <br>

**Включить и настроить NFS-сервер на MicroK8S.** <br>
С**оздать Deployment приложения состоящего из multitool, и подключить к нему PV, созданный автоматически на сервере NFS.** <br>
**Продемонстрировать возможность чтения и записи файла изнутри пода.** <br>
**Предоставить манифесты, а также скриншоты или вывод необходимых команд.** <br>

Настройка nfs <br>
![10-настройка nfs](https://github.com/user-attachments/assets/1ce8f3e8-43be-4a46-b5bb-70ebda494f90) <br>

Создан deployment <br>
![11-deployment nfs](https://github.com/user-attachments/assets/1bc7a6cd-305c-4d4a-8527-582dd8b4caea) <br>

Создан StorageClass <br>
![12-sc](https://github.com/user-attachments/assets/f8c15889-735a-4a8f-a019-5f779b404b42) <br>

Создан pvc <br>
![13-pvc](https://github.com/user-attachments/assets/0aadab21-f4d0-4766-8456-5aa7269af6f9) <br>

Запуск\проверка <br>
![14-ok](https://github.com/user-attachments/assets/d0674b4d-720c-431a-93c4-fc5ee5cc939c) <br>

Демонстрация работы <br>
![15-demo](https://github.com/user-attachments/assets/6f864dc3-7059-400e-82f5-a60f903dd71f) <br>

Ссылка на манифесты:
