#!/usr/bin/env bash
# vcf-nuevo.sh
# Permite crear un contacto individual en formato vCard

set -euo pipefail
IFS=$'\n\t'

id=$(echo $RANDOM | md5sum | head -c 20)
archivo="${id}.vcf"

function adr(){
echo -e -n "\nTipo de dirección (work|home|cerca): "
read tipodir
echo -n "Calle: "
read calle
echo -n "Localidad: "
read localidad
echo -n "Región: "
read region
echo -n "Código postal: "
read codigo
echo -n "País: "
read pais
echo "ADR:TYPE=$tipodir:;;$calle;$localidad;$region;$codigo;$pais" >> $archivo
}

function correo(){
echo -e -n "\nTipo de correo (work|home|school|alt): "
read tipocorreo
echo -n "Correo: "
read correo
echo "EMAIL;TYPE=$tipocorreo:$correo" >> $archivo
}

function dim(){
echo -e -n "\nPlataforma IM: "
read tipoim
echo -n "Identificador: "
read im
echo "IMPP:$tipoim:$im" >> $archivo
}

function tel(){
echo -e -n "\nTipo de teléfono (cell|home|work): "
read tipotelefono
echo -n "Teléfono: "
read telefono
echo "TEL;TYPE=$tipotelefono;VALUE=uri:tel:$telefono" >> $archivo
}

echo "BEGIN:VCARD" >> $archivo
echo "VERSION:4.0" >> $archivo
# ADR
echo -n "¿Agregarás una dirección postal? (s/n): "
read -n 1 bool
while [[ $bool == "s" ]]; do
  adr
  echo -n "¿Agregarás una dirección postal? (s/n): "
  read -n 1 bool
done

# ANNIVERSARY
echo -e -n "\nAniversario (--MMDD|YYYYMMDD): "
read aniversario
if [[ -n $aniversario ]]; then
    echo "ANNIVERSARY:$aniversario" >> $archivo
fi

# BDAY
echo -n "Cumpleaños (--MMDD|YYYYMMDD): "
read cumpleanos
if [[ -n $cumpleanos ]]; then
    echo "BDAY:$cumpleanos" >> $archivo
fi

# CATEGORIES
echo -n "Categorías: "
read categorias
if [[ -n $categorias ]]; then
    echo "CATEGORIES:$categorias" >> $archivo
fi

# EMAIL
echo -n "¿Agregarás una dirección de correo? (s/n): "
read -n 1 bool
while [[ $bool == "s" ]]; do
  correo
  echo -n "\n¿Agregarás una dirección de correo? (s/n): "
  read -n 1 bool
done

# FN
echo -e -n "\nN. prefijo: "
read prefijo
echo -n "Nombre: "
read nombre
echo -n "Apellidos: "
read apellidos
echo -n "Sufijo: "
read sufijo
echo "FN:$prefijo $nombre $apellidos $sufijo" >> $archivo

# GENDER
echo -n "*Género ((M|F|O|N|U)[;text]): "
read genero
echo "GENDER:$genero" >> $archivo

# IMPP
echo -n "¿Agregarás una dirección de IM? (s/n): "
read -n 1 bool
while [[ $bool == "s" ]]; do
  dim
  echo -n "¿Agregarás una dirección de IM? (s/n): "
  read -n 1 bool
done

# KIND
echo "KIND:individual" >> $archivo

# N
echo "N:$apellidos;$nombre;;$prefijo;$sufijo" >> $archivo

# NICKNAME
echo -e -n "\nApodo: "
read apodo
if [[ -n "$apodo" ]]; then
    echo "NICKNAME:$apodo" >> $archivo
fi

# NOTE
echo -n "Notas: "
read notas
if [[ -n "$notas" ]]; then
    echo "NOTE:$notas" >> $archivo
fi

# ORG
echo -n "Organización: "
read org
if [[ -n "$org" ]]; then
    echo "ORG:$org" >> $archivo
fi

# PHOTO
echo -n "Fotografía: "
read foto
if [[ -n "$foto" && -e "$foto" ]]; then
#  echo "PHOTO;MEDIATYPE:$(mimetype -b "$foto");ENCODING=b:$(base64 -w 0 "$foto")" >> $archivo
  echo "PHOTO:data:$(mimetype -b "$foto");base64,$(base64 -w 0 "$foto")" >> $archivo
fi

# REV
echo "REV:$(date --utc +%Y%m%dT%H%M%SZ)" >> $archivo

# TEL
echo -n "¿Agregarás un teléfono? (s/n): "
read -n 1 bool
while [[ $bool == "s" ]]; do
  tel
  echo -n "¿Agregarás un teléfono? (s/n): "
  read -n 1 bool
done

# TITLE
echo -e -n "\nTítulo: "
read titulo
if [[ -n "$titulo" ]]; then
    echo "TITLE:$titulo" >> $archivo
fi

# UID
echo "UID:$id" >> $archivo
echo "END:VCARD" >> $archivo
