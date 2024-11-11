**Задание 1. Создайте конфигурацию для подключения пользователя** <br>
**Создайте и подпишите SSL-сертификат для подключения к кластеру.** <br>
**Настройте конфигурационный файл kubectl для подключения.** <br>
**Создайте роли и все необходимые настройки для пользователя.** <br>
**Предусмотрите права пользователя. Пользователь может просматривать логи подов и их конфигурацию (kubectl logs pod <pod_id>, kubectl describe pod <pod_id>).** <br>

Решение: <br>
Создание сертификата <br>
![1 серт](https://github.com/user-attachments/assets/c35cb9e3-6f8a-4beb-83bc-e8edb8701eac) <br>
Config <br>
![2 конфиг](https://github.com/user-attachments/assets/f03fa7ad-7e47-4904-84a7-e20a95a720bf) <br>
Role-binding <br>
![3 role-binding](https://github.com/user-attachments/assets/f207e0d9-dee7-4351-9a93-e1b2ddf811e4) <br>
Role <br>
![4 role](https://github.com/user-attachments/assets/e13ff7af-1e4b-4e6a-89af-1ca9f5b8a257) <br>
