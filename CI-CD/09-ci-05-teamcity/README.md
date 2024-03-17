# Домашнее задание к занятию 11 «Teamcity» <br>

## Подготовка к выполнению <br>

1. В Yandex Cloud создайте новый инстанс (4CPU4RAM) на основе образа `jetbrains/teamcity-server`. <br>
2. Дождитесь запуска teamcity, выполните первоначальную настройку. <br>
3. Создайте ещё один инстанс (2CPU4RAM) на основе образа `jetbrains/teamcity-agent`. Пропишите к нему переменную окружения `SERVER_URL: "http://<teamcity_url>:8111"`. <br>
4. Авторизуйте агент. <br>
5. Сделайте fork [репозитория](https://github.com/aragastmatb/example-teamcity). <br>
6. Создайте VM (2CPU4RAM) и запустите [playbook](./infrastructure). <br>
![ВМ](https://github.com/Plakhoff/devops-netology/assets/110332753/9894f4b4-329a-4c13-be0e-c74fad7aa303) <br>

## Основная часть <br>

1. Создайте новый проект в teamcity на основе fork. <br>
2. Сделайте autodetect конфигурации. <br>
![автодетект](https://github.com/Plakhoff/devops-netology/assets/110332753/967549bd-8dd8-41d5-bc14-92a05723d382) <br>
3. Сохраните необходимые шаги, запустите первую сборку master. <br>
![билд мастер 1](https://github.com/Plakhoff/devops-netology/assets/110332753/85799b0b-0f9a-41aa-bbc5-1d5a7e4c4066) <br>
4. Поменяйте условия сборки: если сборка по ветке `master`, то должен происходит `mvn clean deploy`, иначе `mvn clean test`. <br>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/9cc0b5f6-381c-4eb9-8b1f-57ee2c6884c1)  <br>
5. Для deploy будет необходимо загрузить [settings.xml](./teamcity/settings.xml) в набор конфигураций maven у teamcity, предварительно записав туда креды для подключения к nexus. <br>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/36102644-6666-469a-825f-f0a8c7507f7b) <br>
6. В pom.xml необходимо поменять ссылки на репозиторий и nexus. <br>
7. Запустите сборку по master, убедитесь, что всё прошло успешно и артефакт появился в nexus. <br>
![билд саксесс 2](https://github.com/Plakhoff/devops-netology/assets/110332753/0134cdfb-d38d-4fe3-92b8-fc3079dfc1e7) <br>
![нексус репо](https://github.com/Plakhoff/devops-netology/assets/110332753/82738aab-58dc-4fd6-9f87-0aad170f9fc7) <br>
8. Мигрируйте `build configuration` в репозиторий. <br>
![миграция билдконф](https://github.com/Plakhoff/devops-netology/assets/110332753/49beade4-815b-4c09-b0db-674b4430cc59) <br>
9. Создайте отдельную ветку `feature/add_reply` в репозитории. <br>
10. Напишите новый метод для класса Welcomer: метод должен возвращать произвольную реплику, содержащую слово `hunter`. <br>
11. Дополните тест для нового метода на поиск слова `hunter` в новой реплике. <br>
12. Сделайте push всех изменений в новую ветку репозитория. <br>
Ветка с изменениями: https://github.com/Plakhoff/netology_teamcity/tree/feature/add_reply <br>
13. Убедитесь, что сборка самостоятельно запустилась, тесты прошли успешно. <br>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/3e94f6d5-b44c-4819-8dcd-1e354de14f93) <br>
14. Внесите изменения из произвольной ветки `feature/add_reply` в `master` через `Merge`. <br>
15. Убедитесь, что нет собранного артефакта в сборке по ветке `master`. <br>
16. Настройте конфигурацию так, чтобы она собирала `.jar` в артефакты сборки. <br>
17. Проведите повторную сборку мастера, убедитесь, что сбора прошла успешно и артефакты собраны. <br>
В pom.xml внесли изменения в версии. Сборка запустилась автоматически, артефакты опубликованы в nexus. <br>
18. Проверьте, что конфигурация в репозитории содержит все настройки конфигурации из teamcity. <br>
19. В ответе пришлите ссылку на репозиторий. <br>
https://github.com/Plakhoff/netology_teamcity <br>
