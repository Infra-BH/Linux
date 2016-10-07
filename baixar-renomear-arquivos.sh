#!/bin/bash
# Autor: Danilo Neves
# E-mail: danilorpneves@outlook.com
#------------------------------------
# O objetivo desse script é fazer download de várias imagens através de urls definidas no arquivo link.txt e substituir pelo nome
# que está dentro do arquivo nome.txt. Nesse caso baixei várias fotos e renomeei por código.
# 
# O script vai ler a primeira linha do arquivo link.txt e fazer o download do arquivo e logo em seguida vai ler a primeira linha do 
# nome.txt e vai renomear o arquivo com esse nome.
# 
# Exeplo do arquivo link.txt
# https://8c5043067433bb9320c2-1434eef309d618d76880a2a17401cb60.ssl.cf5.rackcdn.com/uploads/imagem/file/1/foto_caixa_de_ensaio.jpg
# https://8c5043067433bb9320c2-1434eef309d618d76880a2a17401cb60.ssl.cf5.rackcdn.com/uploads/imagem/file/3/correira.jpg
# https://8c5043067433bb9320c2-1434eef309d618d76880a2a17401cb60.ssl.cf5.rackcdn.com/uploads/imagem/file/4/bomba_rp30.jpg
# https://8c5043067433bb9320c2-1434eef309d618d76880a2a17401cb60.ssl.cf5.rackcdn.com/uploads/imagem/file/131/caixa_de_ensaio_elet.jpg
#
# Exemplo do arquivo nome.txt
# 101022
# 101024
# 101026
# 101027


while IFS= read -r link && IFS= read -r nome <&3; do

wget -c "$link" -O "$nome".jpg

done <link.txt 3<nome.txt

