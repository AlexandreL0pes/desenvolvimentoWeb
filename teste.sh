#!/bin/bash

DIR_RELATIVO="${0%/*}"

DIR_CHAMADA="${PWD}"

SCRIPT_PATH=$DIR_CHAMADA/$DIR_RELATIVO

echo "Desde a posição de chamada:"
echo "--> $DIR_RELATIVO"

echo "Posição de chamada:"
echo "-->$DIR_CHAMADA"

echo "Junção das duas:"
echo "--> $SCRIPT_PATH"

echo " Exemplo de aplicação"
echo "Listar o conteúdo do diretório onde está o script"
ls $SCRIPT_PATH
