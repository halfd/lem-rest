#! /bin/bash

curl -i localhost:8008/dudes
curl -i -d '{"name":"Baok","score":12,"id":null}' localhost:8008/dudes
curl -i -d '{"name":"Milanu","score":52,"id":null}' localhost:8008/dudes
curl -i -d '{"name":"Paith","score":27,"id":null}' localhost:8008/dudes
curl -i -d '{"name":"Fantoo","score":24,"id":null}' localhost:8008/dudes
curl -i -d '{"name":"Khaotu","score":58,"id":null}' localhost:8008/dudes
curl -i -d '{"name":"Cri","score":43,"id":null}' localhost:8008/dudes

curl -i localhost:8008/dudes


