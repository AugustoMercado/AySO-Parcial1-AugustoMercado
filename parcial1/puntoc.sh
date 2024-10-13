•Crear usuarios
-sudo useradd -m -s /bin/bash developer1
-sudo useradd -m -s /bin/bash tester1
-sudo useradd -m -s /bin/bash devops1
-sudo useradd -m -s /bin/bash devops2

•Crear grupos
-sudo groupadd grupodevolopers
-sudo groupadd grupotesters
-sudo groupadd grupodevops

•creamos la carpeta
-mkdir -p Examenes/UTN/alumno_1
-mkdir -p Examenes/UTN/alumno_2
-mkdir -p Examenes/UTN/alumno_3
-mkdir -p Examenes/UTN/profesores

•configuramos las carpetas
-sudo chmod 750 Examenes/UTN/alumno_1 
-sudo chmod 740 Examenes/UTN/alumno_2 
-sudo chmod 700 Examenes/UTN/alumno_3 
-sudo chmod 750 Examenes/UTN/profesores 


•agregamos los usuarios a los grupos
-sudo usermod -aG grupodevelopers developer1
-sudo usermod -aG grupotester tester1
-sudo usermod -aG grupodevops devops2
-sudo usermod -aG grupodevops devops1

•Creamos el archivo "validar.txt" con la salida del comando whoami
-whoami > examenes/utn/alumno_1
-whoami > examenes/utn/alumno_2
-whoami > examenes/utn/alumno_2
-whoami > examenes/utn/profesores


