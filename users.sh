#!/bin/bash

echo "CRIANDO USERS"

useradd convidado -c "Conta temporaria!" -s /bin/bash -m
passwd convidado -e 

useradd guest2 -c "Conta temporaria!" -s /bin/bash -m 
passwd guest2 -e 

useradd guest1 -c "Conta temporaria" -s /bin/bash -m 
passwd guest1 -e 


echo "Fim do processo"
