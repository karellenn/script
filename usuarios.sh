#!/bin/bash



echo"Criando diretrios grupos e usuarios "

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo"#########################"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "CRIANDO USERS ADM "
echo "####################"
useradd carlos -c "carlos silva" -m -s /bin/bash -p $(openssl passwd senha1234) -G GRP_ADM
useradd maria -c "MARIA SILVA" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -c "joao SILVA" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM

echo "CRIANDO USERS VEN"
useradd debora -c "debora SILVA" -s /bin/bash -m -p $(openssl passwd Senha1234) -G GRP_VEN
useradd sebastiana -c "sebastiana SILVA" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -c "Roberto SILVA" -s /bin/bash -m -p $(openssl passwd Senha123)  -G GRP_VEN

echo "CRIANDO USERS SEC"
useradd josefina -c "josefina SILVA" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -c "amanda SILVA" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -c "ROGERIO SILVA" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC

echo "###############"
echo "Adcionando PERMISSOES a  USERS a GRUPOS"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "PROCESSO FINALIZADO !"


