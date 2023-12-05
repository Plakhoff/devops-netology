Версия Терраформ
    ![image](https://github.com/Plakhoff/devops-netology/assets/110332753/17ae867b-2c65-4f1e-bbf6-50bbe2d56b52)

1. terraform init (для Windows - On Windows, the file must be named terraform.rc and placed in the relevant user's %APPDATA% directory)
![image](https://github.com/Plakhoff/devops-netology/assets/110332753/d5a64d12-bb54-41b0-a818-8f54ab7b3c3c)

2. personal.auto.tfvars

3. random_string: "pxH9AQ9HEoYSSbdO"

4. В обьявлении ресурса resource "docker_image" пропущен параметр уникальное имя в текущем проекте (resource "docker_image" ***)
   В обьявлении resource "docker_container" "1nginx" в уникальном имени  цифра 1 , что не валидируется терраформ
   В аргументе name = "example_${random_password.random_string_fake.resulT}" ошибки: random_string_fake + resulT

5. ![image](https://github.com/Plakhoff/devops-netology/assets/110332753/b36a60f4-55af-471d-aa6f-5c706ceeb91a)

6. Команда terraform apply -auto-approve выполняется без согласования пользователя, из-за чего можно потерять ранее созданные ресурсы, не увидев ошибку в коде.
   ![image](https://github.com/Plakhoff/devops-netology/assets/110332753/cc11bd4b-8a79-4beb-bdcf-d28cba8dde44)


7. ![image](https://github.com/Plakhoff/devops-netology/assets/110332753/c520df80-0eeb-4779-919d-1bac285f4e3a)

8. Cогласно документации, при выставленном keep_locally = true образ не удаляется при операциии destroy.
 


