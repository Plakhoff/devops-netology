**Задание 1** <br>
**Создать Deployment приложения, состоящего из двух контейнеров и обменивающихся данными.** <br>

**Создать Deployment приложения, состоящего из контейнеров busybox и multitool.** <br>
**Сделать так, чтобы busybox писал каждые пять секунд в некий файл в общей директории.** <br>
**Обеспечить возможность чтения файла контейнером multitool.** <br>
**Продемонстрировать, что multitool может читать файл, который периодоически обновляется.** <br>
**Предоставить манифесты Deployment в решении, а также скриншоты или вывод команды из п. 4.** <br>

Создан Deployment приложения, состоящего из двух контейнеров: <br>
![1-деплоймент вольюм](https://github.com/user-attachments/assets/21ca3c66-22d7-4355-9dc8-16b3a27144ff) <br>

Запуск\проверка<br>
![2-деплоймент вольюм запущен](https://github.com/user-attachments/assets/b6ab1197-881c-442f-be6e-36d22bec1ed7) <br>

Busybox пишет текст в файл /output/text.txt <br>
Проверяю, что файл доступен в контейнере multitool <br>
![3-проверка записи текста](https://github.com/user-attachments/assets/2413998b-234d-4fa9-a43d-0913ad00fc25) <br>

**Задание 2** <br>
**Создать DaemonSet приложения, которое может прочитать логи ноды.** <br>

**Создать DaemonSet приложения, состоящего из multitool.** <br>
**Обеспечить возможность чтения файла /var/log/syslog кластера MicroK8S.** <br>
**Продемонстрировать возможность чтения файла изнутри пода.** <br>
**Предоставить манифесты Deployment, а также скриншоты или вывод команды из п. 2.** <br>

Создан DaemonSet <br>
![4-демонсет](https://github.com/user-attachments/assets/983e937e-e061-4f0f-b98d-1c7e029d24b3) <br>

Запуск\проверка <br>
![5-демонсет запущен](https://github.com/user-attachments/assets/f561afdc-063d-43c8-b92d-3b96b8a2c01a) <br>
![6-поды](https://github.com/user-attachments/assets/2441ede3-7d9d-405b-addd-0ac95abb4384) <br>

Подключаемся <br>
![Снимок экрана 2024-10-15 214113](https://github.com/user-attachments/assets/365a54b4-74e2-4126-96d2-15179a8ee249) <br>

Проверяем лог <br>
![7-log](https://github.com/user-attachments/assets/830a96b7-f557-4e2e-a87d-66a15c0051b6) <br>





