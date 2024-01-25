# Домашнее задание к занятию 2 «Работа с Playbook»


**1. Подготовьте свой inventory-файл `prod.yml`.** <br/>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/e65d28b6-0c9d-4f36-9d3c-7d6344b8aad2) <br/>
**2. Допишите playbook: нужно сделать ещё один play, который устанавливает и настраивает [vector](https://vector.dev). Конфигурация vector должна деплоиться через template файл jinja2. От вас не требуется использовать все возможности шаблонизатора, просто вставьте стандартный конфиг в template файл. Информация по шаблонам по [ссылке](https://www.dmosk.ru/instruktions.php?object=ansible-nginx-install). не забудьте сделать handler на перезапуск vector в случае изменения конфигурации!** <br/>
Syte.yml: https://github.com/Plakhoff/devops-netology/blob/master/ansible/ansible-2/playbook/site.yml <br/>
Для применения на Ubuntu пришлось немного изменить параметры в модулях и сами модули. <br/>
**3. При создании tasks рекомендую использовать модули: `get_url`, `template`, `unarchive`, `file`.** <br/>
**4. Tasks должны: скачать дистрибутив нужной версии, выполнить распаковку в выбранную директорию, установить vector.** <br/>
**5. Запустите `ansible-lint site.yml` и исправьте ошибки, если они есть.** <br/>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/3765f080-5eb8-4bb1-a5af-c980d72df473) <br/>
**6. Попробуйте запустить playbook на этом окружении с флагом `--check`.** <br/>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/3a1d8991-033c-4743-ace4-a29956f708c2) <br/>
Такой вывод --check потому что выполнялся после отладки на команде --diff <br/>
**7. Запустите playbook на `prod.yml` окружении с флагом `--diff`. Убедитесь, что изменения на системе произведены.** <br/>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/4f040e69-3f49-4e51-be9f-58cb918df8b7) <br/>
**8. Повторно запустите playbook с флагом `--diff` и убедитесь, что playbook идемпотентен.** <br/>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/e7256153-2935-42eb-a0e3-d7eb21036265) <br/>
playbook идемпотентен <br/>
