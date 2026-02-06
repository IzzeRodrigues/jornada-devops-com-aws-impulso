#!/bin/bash

echo "Criando diretórios..."
mkdir /publico /adm /ven /sec

echo "Criando grupos de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários e adicionando aos grupos..."
# Administração
useradd carlos -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM
useradd debora -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM
useradd josefina -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM

# Vendas
useradd maria -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN
useradd roberto_v -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN

# Secretariado
useradd joao -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC
useradd roberto_s -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chown root:root /publico

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Fim do script!"
