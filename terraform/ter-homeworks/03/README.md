ЗАДАНИЕ 1 <br/>
**Изучите проект.** <br/>
**Заполните файл personal.auto.tfvars.** <br/>
**Инициализируйте проект, выполните код. Он выполнится, даже если доступа к preview нет**. <br/>

**Приложите скриншот входящих правил «Группы безопасности» в ЛК Yandex Cloud или скриншот отказа в предоставлении доступа к preview-версии** <br/>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/f25c8252-efa4-480c-84f2-5423a56013a5) <br/>


ЗАДАНИЕ 2 <br/>
**Создайте файл count-vm.tf. Опишите в нём создание двух одинаковых ВМ web-1 и web-2 (не web-0 и web-1) с минимальными параметрами, используя мета-аргумент count loop. Назначьте ВМ созданную в первом задании группу безопасности.(как это сделать узнайте в документации провайдера yandex/compute_instance)** <br/>
_КОД_ <br/>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/12679c84-d527-435e-9da1-c2a837fe99dc) <br/>

**Создайте файл for_each-vm.tf. Опишите в нём создание двух ВМ для баз данных с именами "main" и "replica" разных по cpu/ram/disk , используя мета-аргумент for_each loop. Используйте для обеих ВМ одну общую переменную типа:** <br/>
_variable "each_vm" {_ <br/>
  _type = list(object({  vm_name=string, cpu=number, ram=number, disk=number }))_ <br/>
_}_ <br/>
_КОД_ <br/>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/ce9b676e-c6d0-4a05-949d-23291ba4ad1c) <br/>

**При желании внесите в переменную все возможные параметры. 4. ВМ из пункта 2.1 должны создаваться после создания ВМ из пункта 2.2. 5. Используйте функцию file в local-переменной для считывания ключа ~/.ssh/id_rsa.pub и его последующего использования в блоке metadata, взятому из ДЗ 2. 6. Инициализируйте проект, выполните код.** <br/>

![image](https://github.com/Plakhoff/devops-netology/assets/110332753/43608c71-6486-4442-98d0-90c1599bdb89) <br/>

ЗАДАНИЕ 3 <br/>
**Создайте 3 одинаковых виртуальных диска размером 1 Гб с помощью ресурса yandex_compute_disk и мета-аргумента count в файле disk_vm.tf.** <br/>
**Создайте в том же файле одиночную(использовать count или for_each запрещено из-за задания №4) ВМ c именем "storage" . Используйте блок dynamic secondary_disk{..} и мета-аргумент for_each для подключения созданных вами дополнительных дисков.** <br/>
_КОД_ <br/>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/01edb48e-f983-4822-82a1-a3aaad7ba2c4) <br/>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/35ea2add-c586-4ca9-8982-41712df58d9a) <br/>

ЗАДАНИЕ 4 <br/>
**В файле ansible.tf создайте inventory-файл для ansible. Используйте функцию tepmplatefile и файл-шаблон для создания ansible inventory-файла из лекции. Готовый код возьмите из демонстрации к лекции demonstration2. Передайте в него в качестве переменных группы виртуальных машин из задания 2.1, 2.2 и 3.2, т. е. 5 ВМ.** <br/>
**Инвентарь должен содержать 3 группы и быть динамическим, т. е. обработать как группу из 2-х ВМ, так и 999 ВМ.** <br/>
**Добавьте в инвентарь переменную fqdn.** <br/>
**Выполните код. Приложите скриншот получившегося файла.** <br/>

![image](https://github.com/Plakhoff/devops-netology/assets/110332753/da990078-d891-4890-ab90-1dd11124c3e3) <br/>
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/b9973e8c-d1c1-43bd-8cec-7dc6a283c350) <br/>


