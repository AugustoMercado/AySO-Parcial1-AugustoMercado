•IP publica
curl -s ifconfig.me | awk -F ':' '{print "Esta es mi IP: " $1}'

•info del usuario
sudo cat /etc/passwd | grep vagrant | awk -F ':' '{print "Mi usuario es: " $1}'

•info del hash o password
sudo cat /etc/shadow | grep vagrant | awk -F ':' '{print "El hash de mi usuario es:" $2}':
