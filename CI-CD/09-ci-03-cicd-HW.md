# Домашнее задание к занятию 9 «Процессы CI/CD» <br>
<br>
## Подготовка к выполнению <br>

1. Создайте два VM в Yandex Cloud с параметрами: 2CPU 4RAM Centos7 (остальное по минимальным требованиям). <br>
![ВМ](https://github.com/Plakhoff/devops-netology/assets/110332753/4f0a7160-f72a-4b48-8e8a-d4ecfe28c370) <br>
2. Пропишите в [inventory](./infrastructure/inventory/cicd/hosts.yml) [playbook](./infrastructure/site.yml) созданные хосты. <br>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/d5bf45a1-c18d-4a25-8dbe-23691c5959d2) <br>
3. Добавьте в [files](./infrastructure/files/) файл со своим публичным ключом (id_rsa.pub). Если ключ называется иначе — найдите таску в плейбуке, которая использует id_rsa.pub имя, и исправьте на своё. <br>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/8fd64f87-3086-4ed1-8f0e-12fd638b678b) <br>
4. Запустите playbook, ожидайте успешного завершения. <br>
_**Неуспешный запуск**_ <br>
![плейбук1](https://github.com/Plakhoff/devops-netology/assets/110332753/caa9cbde-ead3-48eb-89cb-a7b1239f1b9e) <br>
В playbook исправлена версия Postgres на 12 <br>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/bbe203ca-75dd-4c65-9084-f8df6d1e5b3c) <br>
_**Успешный запуск**_ <br>
![плейбук success](https://github.com/Plakhoff/devops-netology/assets/110332753/8800ef45-1bb6-4c50-aa9b-db7f304daad2) <br>
5. Проверьте готовность SonarQube через [браузер](http://localhost:9000). <br>
![sonarqube](https://github.com/Plakhoff/devops-netology/assets/110332753/8f9e90fe-a491-4a9d-845c-f62fb5576d4d) <br>
6. Зайдите под admin\admin, поменяйте пароль на свой. <br>
![sonarqube2](https://github.com/Plakhoff/devops-netology/assets/110332753/d5b1a95f-1902-4555-accc-a501d2bc79aa) <br>
7.  Проверьте готовность Nexus через [бразуер](http://localhost:8081). <br>
8. Подключитесь под admin\admin123, поменяйте пароль, сохраните анонимный доступ. <br>
![Nexus](https://github.com/Plakhoff/devops-netology/assets/110332753/29690acd-63ee-4f0a-ab2b-cc61e1dd891f) <br>
<br>
## Знакомоство с SonarQube <br>
<br>
### Основная часть <br>

1. Создайте новый проект, название произвольное. <br>
2. Скачайте пакет sonar-scanner, который вам предлагает скачать SonarQube. <br>
3. Сделайте так, чтобы binary был доступен через вызов в shell (или поменяйте переменную PATH, или любой другой, удобный вам способ). <br>
4. Проверьте `sonar-scanner --version`. <br> 
![сонар версия](https://github.com/Plakhoff/devops-netology/assets/110332753/e38b96f5-f6a3-4abb-acf7-6b7693e44cb5) <br>
5. Запустите анализатор против кода из директории [example](./example) с дополнительным ключом `-Dsonar.coverage.exclusions=fail.py`. <br>
![сонар сканер](https://github.com/Plakhoff/devops-netology/assets/110332753/f7bd453f-4482-4162-8612-d53e9a793526)  <br>
6. Посмотрите результат в интерфейсе. <br>
![сонар вывод](https://github.com/Plakhoff/devops-netology/assets/110332753/05058f3f-0727-4bf2-8f6e-c6d20019bb3b) <br>
7. Исправьте ошибки, которые он выявил, включая warnings. <br>
8. Запустите анализатор повторно — проверьте, что QG пройдены успешно. <br>
9. Сделайте скриншот успешного прохождения анализа, приложите к решению ДЗ. <br>
![сонар исправлен](https://github.com/Plakhoff/devops-netology/assets/110332753/76869a6c-0c28-4b97-9002-41e8fd8a3c86) <br>

## Знакомство с Nexus <br>

### Основная часть <br>

1. В репозиторий `maven-public` загрузите артефакт с GAV-параметрами: <br>

 *    groupId: netology; <br>
 *    artifactId: java; <br>
 *    version: 8_282; <br>
 *    classifier: distrib; <br>
 *    type: tar.gz. <br>

2. В него же загрузите такой же артефакт, но с version: 8_102. <br>
3. Проверьте, что все файлы загрузились успешно. <br>
![нексус загружены файлы](https://github.com/Plakhoff/devops-netology/assets/110332753/2c7a8763-ee40-4166-ab3d-9be753def463) <br>
4. В ответе пришлите файл `maven-metadata.xml` для этого артефекта. <br>
![мавен метадата](https://github.com/Plakhoff/devops-netology/assets/110332753/8d620a5f-2ab6-4560-9dbd-6d7b45507f69) <br>

### Знакомство с Maven <br>

### Подготовка к выполнению <br>

1. Скачайте дистрибутив с [maven](https://maven.apache.org/download.cgi). <br>
2. Разархивируйте, сделайте так, чтобы binary был доступен через вызов в shell (или поменяйте переменную PATH, или любой другой, удобный вам способ). <br>
3. Удалите из `apache-maven-<version>/conf/settings.xml` упоминание о правиле, отвергающем HTTP- соединение — раздел mirrors —> id: my-repository-http-unblocker. <br>
4. Проверьте `mvn --version`. <br>
![мавен версия](https://github.com/Plakhoff/devops-netology/assets/110332753/57b53ade-9998-4192-91ca-16d843e05134) <br>
5. Заберите директорию [mvn](./mvn) с pom. <br>

### Основная часть <br>

1. Поменяйте в `pom.xml` блок с зависимостями под ваш артефакт из первого пункта задания для Nexus (java с версией 8_282). <br>
2. Запустите команду `mvn package` в директории с `pom.xml`, ожидайте успешного окончания. <br>
![mvn success](https://github.com/Plakhoff/devops-netology/assets/110332753/f443baac-609f-4c61-96a8-db4007e9ce1f) <br>
3. Проверьте директорию `~/.m2/repository/`, найдите ваш артефакт. <br>
4. В ответе пришлите исправленный файл `pom.xml`. <br>
_https://github.com/Plakhoff/devops-netology/blob/master/CI-CD/mvn/pom.xml_ <br>


