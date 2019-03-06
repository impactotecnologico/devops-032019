#Maquina Virtual para Openshift

URL de descarga: https://drive.google.com/file/d/1mjAtpJhzdAVkQIlenuJRDHZoxu_laOjZ/view?usp=sharing 

+ SO: Centos 7
+ Openshift: Origin Latest


##Importación del .OVA

###Red
Al importarlo se debe confirmar que tiene 2 adaptadores de red activos, el primero en modo NAT y el segundo en modo Puente. 

###Memoria
Debe tener 4gb de RAM

###CPU
Habilitar el máximo de CPU disponible en la sección verde del slider de selección

###Software base
La VM ya tiene ejecutado `yum update && yum upgrade`
Está instalado:

+ git
+ net-tools

Se clonó el *repositorio base* en /root/installcentos


##Usuarios

+ root:mvpemqcv.2019
+ impacto:dolares


##Comandos a ejecutar en clase entrando como root:

```
hostnamectl set-hostname originlocal
hostnamectl
shutdown -r now
yum install -y lynx
ifconfig (tomar nota de la ip tipo bridge)
```

##Mapeo en el anfitrion

Editar (como root o administrador)  /etc/hosts en plataformas Unix, o c:\Windows\System32\Drivers\etc\hosts en Windows. Añadiendo un mapeo del tipo:

`IP_MAQUINA_VIRTUAL     originlocal`


#Instalación de Openshift

1. Entrar en el directorio del repositorio:

`cd /root/installcentos`

2. Ejecutar el script de instalación

`./install-openshift.sh`

3. El script preguntará por los siguientes valores (usar los valores mostrados después de los ":" salvo la ip de la máquina virtual

Domain to use: (94.73.49.103.nip.io): originlocal
Username: (root): root
Password: (password): password
OpenShift Version: (3.11): 3.11 
IP: (192.168.1.141): [IP_DE_LA_MAQUINA_VIRTUAL]
API Port: (8443): 8443
Do you wish to enable HTTPS with Let's Encrypt?: 2


De resto el script ejecutará y tardará aproximadamene 80minutos

Si todo ha ido bien, veremos al finalizar:

```
******
* Your console is https://console.originlocal:8443
* Your username is root 
* Your password is password 
*
* Login using:
*
$ oc login -u root -p password https://console.originlocal:8443/
******
Login successful.

You have access to the following projects and can switch between them with 'oc project <projectname>':

  * default
    kube-public
    kube-service-catalog
    kube-system
    management-infra
    openshift
    openshift-console
    openshift-infra
    openshift-logging
    openshift-monitoring
    openshift-node
    openshift-sdn
    openshift-template-service-broker
    openshift-web-console

Using project "default".
```

##Base

Base tomada de https://github.com/impactotecnologico/installcentos


