Созданные ВМ <br/>
![3-3](https://github.com/Plakhoff/devops-netology/assets/110332753/436a9d9e-ccc9-48bd-92b3-3643bba44bf0) <br/>
**1. Допишите playbook: нужно сделать ещё один play, который устанавливает и настраивает LightHouse.** <br/>
**2. При создании tasks рекомендую использовать модули: get_url, template, yum, apt.** <br/>
**3. Tasks должны: скачать статику LightHouse, установить Nginx или любой другой веб-сервер, настроить его конфиг для открытия LightHouse, запустить веб-сервер.** <br/>
**4. Подготовьте свой inventory-файл prod.yml.** <br/>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/64ab38a2-7cb6-4cf8-8f9a-19ba92a94490) <br/>
**5. Запустите ansible-lint site.yml и исправьте ошибки, если они есть.** <br/>
**6. Попробуйте запустить playbook на этом окружении с флагом --check.** <br/>
![3-1](https://github.com/Plakhoff/devops-netology/assets/110332753/77d0f1ef-82b8-4a9c-89b5-f15597cf0b04) <br/>
Флаг --check - проверяет, но не скачивает пакеты, отсюда ошибка. <br/>
**7. Запустите playbook на prod.yml окружении с флагом --diff. Убедитесь, что изменения на системе произведены.** <br/>
![3-2](https://github.com/Plakhoff/devops-netology/assets/110332753/71c7da8d-5ff9-4742-bc50-e3d2c7fac634) <br/>
Маленькое количество изменений из-за отладки кода с флагом --diff
**8. Повторно запустите playbook с флагом --diff и убедитесь, что playbook идемпотентен.** <br/>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/17b9d39a-502d-49a2-b59a-e76558d0227d) <br/>
playbook идемпотентен
