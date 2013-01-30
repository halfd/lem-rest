#! /bin/bash

curl -i localhost:8008/dudes
curl -i -d "{name:'Flase', score :132}" localhost:8008/dudes
curl -i -d "{name:'Patitu', score :155}" localhost:8008/dudes
curl -i -d "{name:'Rimha', score :90}" localhost:8008/dudes
curl -i localhost:8008/dudes

