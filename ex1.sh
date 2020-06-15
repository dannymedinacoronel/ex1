#!/bin/bash
clear
if ((EUID != 0 ))
then
echo"Ejecuta como usuario root"
exit 1
fi
opc"s"
while [[ $opc = "s" ]]
do
clear
echo-n "Introduce el usuario en el sistema"
read usuario
echo-n "Introduce el grupo en el sistema"
read grupo
sudo usermod -a grupo $usuario
sudo useradd -m grupo $usuario
echo -n "Continuamos?:"
read opc
done
exit 10