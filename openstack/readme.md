# OpenStack

Máquina virtual: https://drive.google.com/file/d/1g9IZK4WY_hxD443nytrYm2MlW4VfRtS8/view?usp=sharing

Ubuntu 18.04

Usuarios disponibles:

impacto/impacto
stack/stack

Directorio de instalación de OpenStack: /home/stack/devstack

## Consideraciones importantes

La máquina usa adaptador NAT por lo que deben natearse los puertos 22 y 80 a la máquina anfitrión para poder llegar. Por ejemplo: 2220:22 y 8022:80 siendo anfitrion:guest en virtual box

## Instrucciones de ejecución partiendo de instalación de SO:

- sudo apt-get update && sudo apt upgrade
- sudo apt-add-repository universe
- sudo apt-get update
- sudo adduser stack
- sudo -i
- echo "stack ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
- sudo usermod -a -G sudo stack
- exit
- iniciar sesión con credenciales de usuario stack creado anteriormente
- cd /home/stack
- git clone https://git.openstack.org/openstack-dev/devstack
- chown -R stack devstack
- cd devstack
- sudo cp samples/local.conf ./local.conf
- ipconfig (anotar ip de la máquina)
- sudo nano local.conf
- Cambiar contraseñas de usuarios si se quiere
- Descomentar línea HOST_IP y agregar la ip de la máquina
- cd ..
- sudo -i
- chown -R stack devstack
- chmod 770 devstack
- sudo su stack
- cd devstack
- ./stack.sh
- esperar a que termine la instalación
- Una vez completada, debería estar disponible openstack a través de la ip configurada anteriormente


