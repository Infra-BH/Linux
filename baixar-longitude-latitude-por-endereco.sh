#!/bin/bash
# Autor: Danilo Neves
# E-mail: danilorpneves@outlook.com
#----------------------------------------------
# Esse script tem como objetivo baixar a longitude e latitude por endereço através da API do Google.
# O script vai ler o arquivo endereco.txt, onde deve ter o ENDEREÇO linha por linha e assim entregar o resultado no arquivo outputendereco.txt
# Exemplo arquivo endereco.txt
# Brasil+Belo+Horizonte+Rua+Pium-i+312
#
# Resultado:
# ./endereco.sh
# ENDERECO: 30310080 lat -19.9389166 lng -43.9281785

url01=http://maps.google.com/maps/api/geocode/json?address=
url02=&sensor=false
while read cep
do
    content=$(curl -s "{$url01}${cep}{$url02}" | grep "lat\|lng" |grep -n ^ | grep "^7:\|^8:" |cut -d: -f2,3 \
|sed 's/,//'| sed 's/://'|  xargs -L15 )
    echo CEP: $cep $content
echo CEP: $cep $content >> outputendereco.txt
done < endereco.txt
