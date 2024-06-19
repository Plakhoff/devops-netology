**Домашнее задание к занятию «Базовые объекты K8S»** <br>

**Задание 1. Создать Pod с именем hello-world** <br>
**Создать манифест (yaml-конфигурацию) Pod.** <br>
**Использовать image - gcr.io/kubernetes-e2e-test-images/echoserver:2.2.** <br>
**Подключиться локально к Pod с помощью kubectl port-forward и вывести значение (curl или в браузере).** <br>

**Задание 2. Создать Service и подключить его к Pod** <br>
**Создать Pod с именем netology-web.** <br>
**Использовать image — gcr.io/kubernetes-e2e-test-images/echoserver:2.2.** <br>
**Создать Service с именем netology-svc и подключить к netology-web.** <br>
**Подключиться локально к Service с помощью kubectl port-forward и вывести значение (curl или в браузере).** <br>

_Решение:_ <br>
_Манифест Hello-World_ <br>
![манифест hello world](https://github.com/Plakhoff/devops-netology/assets/110332753/3d35a0fe-36d1-4a3f-8e58-fdbc2b5858e9) <br>
![get pods1](https://github.com/Plakhoff/devops-netology/assets/110332753/8cb14ee0-8ef7-4aa4-99d1-0bc7d96925d3) <br>

_Подключение к Hello-World_ <br>
![curl hello-world](https://github.com/Plakhoff/devops-netology/assets/110332753/de0d7f88-b2e5-4bef-aa88-327f72d49ebb) <br>

_Манифест netology-web_ <br> 
![манифест web](https://github.com/Plakhoff/devops-netology/assets/110332753/241aa73c-33d2-4897-8eaa-010b0f49d536) <br>

_Манифест netology-svc_ <br>
![манифест svc](https://github.com/Plakhoff/devops-netology/assets/110332753/096928af-8f5c-4e52-9d20-b1cf56c33d13) <br>

_Подключние к svc_ <br>
![svc + web](https://github.com/Plakhoff/devops-netology/assets/110332753/6fecb6d7-b899-47db-a9cc-eca88c37b8d9) <br>





