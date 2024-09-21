#!/bin/bash

echo "Criando diretórios..."

mkdir publico
mkdir adm
mkdir ven
mkdir sec

echo "Diretórios criados com sucesso!"

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados com sucesso!"

echo "Criando usuários... "

useradd carlos -c "Carlos" -s /bin/bash -m -G GRP_ADM -p $(openssl passwd -1 123)

useradd maria -c "Maria" -s /bin/bash -m -G GRP_ADM -p $(openssl passwd -1 123)

useradd joao -c "João" -s /bin/bash -m -G GRP_ADM -p $(openssl passwd -1 123)

useradd debora -c "Débora" -s /bin/bash -m -G GRP_VEN -p $(openssl passwd -1 123)

useradd sebastiana -c "Sebastiana" -s /bin/bash -m -G GRP_VEN -p $(openssl passwd -1 123)

useradd roberto -c "Roberto" -s /bin/bash -m -G GRP_VEN -p $(openssl passwd -1 123)

useradd josefina -c "Josefina" -s /bin/bash -m -G GRP_SEC -p $(openssl passwd -1 123)

useradd amanda -c "Amanda" -s /bin/bash -m -G GRP_SEC -p $(openssl passwd -1 123)

useradd rogerio -c "Rogério" -s /bin/bash -m -G GRP_SEC -p $(openssl passwd -1 123)

echo "Criando permissões de acesso aos grupos..."

chmod 777 publico
chmod 770 adm
chmod 770 ven
chmod 770 sec

echo "Fim do script!"

