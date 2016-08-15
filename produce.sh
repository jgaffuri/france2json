#!/usr/bin/env bash

size=1000
margin=5
mkdir -p tmp
mkdir -p json
topojson -o \
	"json/communes.json" \
	"communes=shp/COMMUNE.shp" \
	"limites=shp/LIMITE_COMMUNE.shp" \
	-p id=INSEE_COM,nom=NOM_COM,st=STATUT,na=NATURE \
	--width $size --height $size --margin $margin \
	-s 2
