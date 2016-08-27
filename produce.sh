#!/usr/bin/env bash

width=1200
height=1114
q0=6000
q1=3000
s=0.5
mkdir -p tmp
mkdir -p json

echo "   communes surf + lin"
topojson -o \
	"json/communes.json" \
	"communes=shp/COMMUNE.shp" \
	"limites=shp/LIMITE_COMMUNE.shp" \
	-p id=INSEE_COM,nom=NOM_COM,st=STATUT_C,na=NATURE_C \
	--bbox --width $width --height $height \
	-s $s \
	--q0 $q0 --q1 $q1

echo "   communes surf"
topojson -o \
	"json/communes_.json" \
	"communes=shp/COMMUNE.shp" \
	-p id=INSEE_COM,nom=NOM_COM,st=STATUT_C,na=NATURE_C \
	--bbox --width $width --height $height \
	-s $s \
	--q0 $q0 --q1 $q1
