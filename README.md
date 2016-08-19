# france2json

This repository provides a number of reusable stuff and examples to make nice web maps of France. It is based on the <a href="http://professionnels.ign.fr/geofla" target="_blank">GEOFLA® dataset</a>, <a href="https://github.com/mbostock/topojson/wiki" target="_blank">TopoJSON format</a> and <a href="https://d3js.org/" target="_blank">D3.js</a> library. See these examples:
- <a href="http://jgaffuri.github.io/france2json/overview.html">Map of the communes of France</a>
- <a href="http://jgaffuri.github.io/france2json/revenues_map.html">Map of income by commune</a>

## Structure of communes.json file

The file <a href="/json">communes.json</a> provides 2 feature collections:

- 'communes' representing the communes with a polygonal geometry, with the following properties:
  - id: INSEE identifier, used to join statistical figures.
  - nom: Commune name
  - st: Statut of the commune, among:
    - s: Commune simple
    - o: Sous-préfecture
    - d: Préfecture de département
    - r: Préfecture de région
    - c: Capitale

- 'limites' representing the commune boundaries, with a single property 'na' (nature) whose values are among:
  - i: Frontière internationale
  - o: Limite côtière
  - r: Limite de région
  - d: Limite de département
  - a: Limite d'arrondissement
  - c: Limite de commune

## Copyright

<a href="http://professionnels.ign.fr/geofla" target="_blank">GEOFLA® dataset</a> is copyrighted. See the <a href="http://professionnels.ign.fr/geofla" target="_blank">IGN website</a> for more information.
