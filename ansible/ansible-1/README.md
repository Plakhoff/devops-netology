# Домашнее задание к занятию 1 «Введение в Ansible»<br/>

**1. Попробуйте запустить playbook на окружении из `test.yml`, зафиксируйте значение, которое имеет факт `some_fact` для указанного хоста при выполнении playbook.**<br/>
![1-1](https://github.com/Plakhoff/devops-netology/assets/110332753/9989bbd9-fb2a-4f95-98c2-5a4a3825d3f3)<br/>
**2. Найдите файл с переменными (group_vars), в котором задаётся найденное в первом пункте значение, и поменяйте его на `all default fact`.**<br/>
![1-2](https://github.com/Plakhoff/devops-netology/assets/110332753/8cedb752-b01d-40ad-afdf-bd8fa0967fc9)<br/>
**3. Воспользуйтесь подготовленным (используется `docker`) или создайте собственное окружение для проведения дальнейших испытаний.**<br/>
![1-3](https://github.com/Plakhoff/devops-netology/assets/110332753/90e7b085-62ea-4087-a37c-a971143d8709)<br/>
**4. Проведите запуск playbook на окружении из `prod.yml`. Зафиксируйте полученные значения `some_fact` для каждого из `managed host`.**<br/>
![1-4](https://github.com/Plakhoff/devops-netology/assets/110332753/45efb958-f3ae-4798-8f9c-469ad691cb92)<br/>
_**5. Добавьте факты в `group_vars` каждой из групп хостов так, чтобы для `some_fact` получились значения: для `deb` — `deb default fact`, для `el` — `el default fact`.**_<br/>
**6.  Повторите запуск playbook на окружении `prod.yml`. Убедитесь, что выдаются корректные значения для всех хостов.**<br/>
![1-5-6](https://github.com/Plakhoff/devops-netology/assets/110332753/9169ea54-8253-4aaf-948c-07cc14a82099)<br/>
**7. При помощи `ansible-vault` зашифруйте факты в `group_vars/deb` и `group_vars/el` с паролем `netology`.**<br/>
![1-7](https://github.com/Plakhoff/devops-netology/assets/110332753/aee4af04-7835-47cd-9457-a2a4ffa60a34)<br/>
**8. Запустите playbook на окружении `prod.yml`. При запуске `ansible` должен запросить у вас пароль. Убедитесь в работоспособности.**<br/>
![1-8](https://github.com/Plakhoff/devops-netology/assets/110332753/beb3fd88-d9bb-4c74-af0a-df31b75f5be0)<br/>
**9. Посмотрите при помощи `ansible-doc` список плагинов для подключения. Выберите подходящий для работы на `control node`.**<br/>
![1-9](https://github.com/Plakhoff/devops-netology/assets/110332753/38737d66-8711-435d-8c01-347d8f52382b)<br/>
**10. В `prod.yml` добавьте новую группу хостов с именем  `local`, в ней разместите localhost с необходимым типом подключения.**<br/>
![1-10](https://github.com/Plakhoff/devops-netology/assets/110332753/9ae691ec-4c56-4dca-98ef-47284e111607)<br/>
**11. Запустите playbook на окружении `prod.yml`. При запуске `ansible` должен запросить у вас пароль. Убедитесь, что факты `some_fact` для каждого из хостов определены из верных `group_vars`.**<br/>
![1-11](https://github.com/Plakhoff/devops-netology/assets/110332753/ac58d054-f0ab-4ab9-ae50-620d1113f7b5)<br/>
