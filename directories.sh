#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p ${openssl passwd -crypt SenhaC4rl0s} -G GRP_ADM
useradd maria -m -s /bin/bash -p ${openssl passwd -crypt SenhaM4ri4} -G GRP_ADM
useradd joao -m -s /bin/bash -p ${openssl passwd -crypt SenhaJ0a0} -G GRP_ADM

useradd debora -m -s /bin/bash -p ${openssl passwd -crypt SenhaD3b} -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p ${openssl passwd -crypt SenhaS3b4s} -G GRP_VEN
useradd roberto -m -s /bin/bash -p ${openssl passwd -crypt SenhaR0berto} -G GRP_VEN

useradd josefina -m -s /bin/bash -p ${openssl passwd -crypt SenhaJ0s3f} -G GRP_SEC
useradd amanda -m -s /bin/bash -p ${openssl passwd -crypt SenhaAm4nd4} -G GRP_SEC
useradd rogerio -m -s /bin/bash -p ${openssl passwd -crypt SenhaR0g3r10} -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Diretórios e usuários criados!"
echo "Finalizando script..."