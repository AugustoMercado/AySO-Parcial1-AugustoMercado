•Creamos y agregamos informacion del Total de memoria ram.
cat /proc/meminfo | grep "MemTotal" > filtrobasico.txt 

•agregamos informacion del chassis al archivo.txt
sudo dmidecode -t chassis | tail -n12 >> parcial1/filtrobasico.txt

