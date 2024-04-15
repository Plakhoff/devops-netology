**Задание 1** <br>
Вам необходимо поднять в докере и связать между собой:<br>
- elasticsearch (hot и warm ноды);<br>
- logstash;<br>
- kibana;<br>
- filebeat.<br>
Logstash следует сконфигурировать для приёма по tcp json-сообщений.<br>
Filebeat следует сконфигурировать для отправки логов docker вашей системы в logstash.<br>
В директории [help](./help) находится манифест docker-compose и конфигурации filebeat/logstash для быстрого <br>
выполнения этого задания.<br>
Результатом выполнения задания должны быть:<br>
- скриншот `docker ps` через 5 минут после старта всех контейнеров (их должно быть 5);<br>
- скриншот интерфейса kibana;<br>
- docker-compose манифест (если вы не использовали директорию help);<br>
- ваши yml-конфигурации для стека (если вы не использовали директорию help).<br>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/4b21184f-a858-4edd-b60a-a08c1671e5c5) <br>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/bfcca5a8-67d1-498b-838c-f79320fb8376) <br>


**Задание 2**<br>
Перейдите в меню [создания index-patterns  в kibana](http://localhost:5601/app/management/kibana/indexPatterns/create) и создайте несколько index-patterns из имеющихся.<br>
Перейдите в меню просмотра логов в kibana (Discover) и самостоятельно изучите, как отображаются логи и как производить поиск по логам.<br>
В манифесте директории help также приведенно dummy-приложение, которое генерирует рандомные события в stdout-контейнера.<br>
Эти логи должны порождать индекс logstash-* в elasticsearch. Если этого индекса нет — воспользуйтесь советами и источниками из раздела «Дополнительные ссылки» этого задания.<br>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/4eaff119-85bf-4817-b83f-6706e6d78378)
