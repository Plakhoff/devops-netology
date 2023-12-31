ЗАДАНИЕ 1. <br/>
**Инициализируйте проект, выполните код. Исправьте намеренно допущенные синтаксические ошибки. Ищите внимательно, посимвольно. Ответьте, в чём заключается их суть.** <br/>
Решение: <br/>
 _В процессе применения плана возникла ошибка  
   "the specified number of cores is not available on platform "standard-v1"; allowed core number: 2, 4"  
  В Яндекс Cloud для создаваемых ВМ нельзя указывать нечетное количество ядер._ <br/>
  **Ответьте, как в процессе обучения могут пригодиться параметры preemptible = true и core_fraction=5 в параметрах ВМ.** <br/>
  _preemptible = true - Сделать машину прерываемой (какую машину можно прервать\остановить\пожертвовать в случае нехватки ресурсов)  
 core_fraction - Если указано, указывает базовую производительность для ядра в процентах._ <br/>
  
 **_Созданная VM_** <br/>
    
   ![image](https://github.com/Plakhoff/devops-netology/assets/110332753/1d1cd7ad-9e74-4eae-b9f8-37633a018f82) <br/>
    **_Curl с созданной ВМ_** <br/>
    
  ![image](https://github.com/Plakhoff/devops-netology/assets/110332753/971fb455-d3a0-4b2c-940b-22ded06fd528) <br/>


ЗАДАНИЕ 2. <br/>
**Замените все хардкод-значения для ресурсов yandex_compute_image и yandex_compute_instance на отдельные переменные. К названиям переменных ВМ добавьте в начало префикс vm_web_ . Пример: vm_web_name.** <br/> 
_**КОД**_ <br/>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/d24b1384-f5d2-4a0a-a9db-c861fb1b02f0) <br/>

 **Объявите нужные переменные в файле variables.tf, обязательно указывайте тип переменной. Заполните их default прежними значениями из main.tf.** <br/>
 _**КОД**_ <br/>
 ![image](https://github.com/Plakhoff/devops-netology/assets/110332753/4222f572-70f7-430e-85b6-dd93dae226f7) <br/>
 **Проверьте terraform plan. Изменений быть не должно** <br/>
 
 ![image](https://github.com/Plakhoff/devops-netology/assets/110332753/862701ed-ca31-4743-8a5a-6b44e2aa7c54) <br/>

ЗАДАНИЕ 3. <br/>
**Создайте в корне проекта файл 'vms_platform.tf' . Перенесите в него все переменные первой ВМ.** <br/>
**Скопируйте блок ресурса и создайте с его помощью вторую ВМ в файле main.tf: "netology-develop-platform-db" , cores  = 2, memory = 2, core_fraction = 20. Объявите её переменные с префиксом vm_db_ в том же файле ('vms_platform.tf').** <br/>
   _КОД main.tf_ <br/>
   ![image](https://github.com/Plakhoff/devops-netology/assets/110332753/c6659e8c-76b8-4e25-9d24-67291491cb3f) <br/>
   _КОД vms_platform.tf_ <br/>
    ![image](https://github.com/Plakhoff/devops-netology/assets/110332753/996e5196-ae42-4dee-9e85-3865ef57c503) <br/>
 **Примените изменения** <br/>
 _Вторая созданная VM_ <br/>
 ![image](https://github.com/Plakhoff/devops-netology/assets/110332753/463c0a75-f2bd-4992-b716-8d8a79e8f90a) <br/>
 ЗАДАНИЕ 4.
 **Объявите в файле outputs.tf один output типа map, содержащий { instance_name = external_ip } для каждой из ВМ.** <br/>
 **Примените изменения.** <br/>
 _КОД outputs.tf_ <br/>
 ![image](https://github.com/Plakhoff/devops-netology/assets/110332753/5b583700-3744-470a-8bd6-e1fa79764e99) <br/>
_Вывод команды terraform output_ <br/>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/003a7dfa-f6cc-4751-8ee1-968da5ac2e0f) <br/>
ЗАДАНИЕ 5. <br/>
**В файле locals.tf опишите в одном local-блоке имя каждой ВМ, используйте интерполяцию ${..} с несколькими переменными по примеру из лекции.** <br/>
**Замените переменные с именами ВМ из файла variables.tf на созданные вами local-переменные.** <br/>
_КОД locals.tf_ <br/>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/f808df2d-9c21-4a8f-913a-f2d5abc03cb9) <br/>
**Примените изменения** <br/>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/526d6973-262d-4f52-be5f-39bb24662265) <br/>
ЗАДАНИЕ 6 <br/>
**Вместо использования трёх переменных ".._cores",".._memory",".._core_fraction" в блоке resources {...}, объедините их в единую map-переменную vms_resources и внутри неё конфиги обеих ВМ в виде вложенного map.** <br/>
_КОД vms_platform.tf_ <br/>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/5653c535-b498-41ff-b17b-cc062d3e4f39) <br/>
**Создайте и используйте отдельную map переменную для блока metadata, она должна быть общая для всех ваших ВМ.** <br/>
_КОД vms_platform.tf_ <br/>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/0ca176df-9a8e-4025-93db-203e4ff36ff3) <br/>
**Проверьте terraform plan.** <br/>
 ![image](https://github.com/Plakhoff/devops-netology/assets/110332753/6cfe557f-bf7d-4769-bd94-ddfef0f76f0c) <br/>
   






  


