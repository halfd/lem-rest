#! /bin/bash

curl -i localhost:8008
#returnerer ikke noget

curl -i -d Halfdan localhost:8008/person
#Sku returnere 201 created og Location /person/1

curl -i -d Emil localhost:8008/person
#Sku returnere 201 created og Location /person/2

curl -i localhost:8008/person/1
#Sku returnere Halfdan

curl -i localhost:8008/person/2
#Sku returnere Emil

curl -i localhost:8008/person/3
#Sku returnere 404
