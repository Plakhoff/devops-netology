ЗАДАНИЕ 1.
**Инициализируйте проект, выполните код. Исправьте намеренно допущенные синтаксические ошибки. Ищите внимательно, посимвольно. Ответьте, в чём заключается их суть.**  
Решение:  
 _В процессе применения плана возникла ошибка  
   "the specified number of cores is not available on platform "standard-v1"; allowed core number: 2, 4"  
  В Яндекс Cloud для создаваемых ВМ нельзя указывать нечетное количество ядер._  
  **Ответьте, как в процессе обучения могут пригодиться параметры preemptible = true и core_fraction=5 в параметрах ВМ.**  
  _preemptible = true - Сделать машину прерываемой (какую машину можно прервать\остановить\пожертвовать в случае нехватки ресурсов)  
 core_fraction - Если указано, указывает базовую производительность для ядра в процентах._  
  
 **_Созданная VM_**
    
   ![image](https://github.com/Plakhoff/devops-netology/assets/110332753/1d1cd7ad-9e74-4eae-b9f8-37633a018f82)
    **_Curl с созданной ВМ_**  
    
  ![image](https://github.com/Plakhoff/devops-netology/assets/110332753/971fb455-d3a0-4b2c-940b-22ded06fd528)


ЗАДАНИЕ 2.  
**Замените все хардкод-значения для ресурсов yandex_compute_image и yandex_compute_instance на отдельные переменные. К названиям переменных ВМ добавьте в начало префикс vm_web_ . Пример: vm_web_name.**  
_**КОД**_  
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/d24b1384-f5d2-4a0a-a9db-c861fb1b02f0)  

 **Объявите нужные переменные в файле variables.tf, обязательно указывайте тип переменной. Заполните их default прежними значениями из main.tf.**  
 _**КОД**_  
 ![image](https://github.com/Plakhoff/devops-netology/assets/110332753/4222f572-70f7-430e-85b6-dd93dae226f7)  
 **Проверьте terraform plan. Изменений быть не должно**  
 
 ![image](https://github.com/Plakhoff/devops-netology/assets/110332753/862701ed-ca31-4743-8a5a-6b44e2aa7c54)

3. **Создайте в корне проекта файл 'vms_platform.tf' . Перенесите в него все переменные первой ВМ.**
   **Скопируйте блок ресурса и создайте с его помощью вторую ВМ в файле main.tf: "netology-develop-platform-db" , cores  = 2, memory = 2, core_fraction = 20. Объявите её переменные с префиксом vm_db_ в том же файле ('vms_platform.tf').**
   
      _КОД main.tf_
   ![image](https://github.com/Plakhoff/devops-netology/assets/110332753/c6659e8c-76b8-4e25-9d24-67291491cb3f)
   _КОД vms_platform.tf_
   ![image](https://github.com/Plakhoff/devops-netology/assets/110332753/996e5196-ae42-4dee-9e85-3865ef57c503)
   


7. ![image](https://github.com/Plakhoff/devops-netology/assets/110332753/463c0a75-f2bd-4992-b716-8d8a79e8f90a)
8. ![image](https://github.com/Plakhoff/devops-netology/assets/110332753/003a7dfa-f6cc-4751-8ee1-968da5ac2e0f)
9. ![image](https://github.com/Plakhoff/devops-netology/assets/110332753/526d6973-262d-4f52-be5f-39bb24662265)
10. ![image](https://github.com/Plakhoff/devops-netology/assets/110332753/6cfe557f-bf7d-4769-bd94-ddfef0f76f0c)
   






  


