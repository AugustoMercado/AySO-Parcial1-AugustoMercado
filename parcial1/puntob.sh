#Creamos particiones
sudo fdisk /dev/sdc

n   # Crear nueva partición
p   # Elegir partición primaria
1   # Número de partición
[Enter]   # Usar el primer sector disponible
+2G   # Tamaño de la partición (2 GB)

n   # Crear nueva partición
p   # Elegir partición primaria
2   # Número de partición
[Enter]   # Usar el primer sector disponible
+2G   # Tamaño de la partición (2 GB)

n   # Crear nueva partición
p   # Elegir partición primaria
3   # Número de partición
[Enter]   # Usar el primer sector disponible
+2G   # Tamaño de la partición (2 GB)

n   # Crear nueva partición
e   # Elegir partición extendida
4   # Número de partición (o [Enter] para siguiente disponible)
[Enter]   # Usar el primer sector disponible
[Enter]   # Usar todo el espacio restante

w   # Escribir cambios y salir


#Formateamos
sudo mkfs.ext4 /dev/sdc1   # Formatear la primera partición
sudo mkfs.ext4 /dev/sdc2   # Formatear la segunda partición
sudo mkfs.ext4 /dev/sdc3   # Formatear la tercera partición
#Montamos las particiones
sudo mkdir /mnt/sdc1

#puntos de montaje:
sudo mkdir /mnt/sdc1
sudo mkdir /mnt/sdc2
sudo mkdir /mnt/sdc3

NAME   FSTYPE   FSVER            LABEL           UUID                                 FSAVAIL FSUSE% MOUNTPOINTS
loop0  squashfs 4.0                                                                         0   100% /snap/lxd/29351
loop1  squashfs 4.0                                                                         0   100% /snap/snapd/21759
loop2  squashfs 4.0                                                                         0   100% /snap/core20/2379
loop3  squashfs 4.0                                                                         0   100% /snap/core20/2318
sda                                                                                                  
└─sda1 ext4     1.0              cloudimg-rootfs 31e7e3d2-6937-4fdc-9179-5857d3056c87   36.7G     5% /
sdb    iso9660  Joliet Extension cidata          2024-09-12-02-34-39-00                              
sdc                                                                                                  
├─sdc1 ext4     1.0                              a71189ac-318e-4e71-92ad-14a7c9f0f212      4G     0% /mnt/sdc1
├─sdc2 ext4     1.0                              f40ffa0a-2b83-437e-af67-fed60a77f870      4G     0% /mnt/sdc1
├─sdc3 ext4     1.0                              951a1224-dcd9-4ae2-8e2a-63aa3ad519dc      4G     0% /mnt/sdc1
├─sdc4                                                                                               
└─sdc5 ext4     1.0                              20595dd8-7774-4b45-b8fb-bfdc4c11deef      4G     0% /mnt/sdc1
sdd                                                                                                  
