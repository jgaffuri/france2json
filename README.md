# france2json

This repository provides a number of reusable stuff and examples to make nice web maps of France. It is based on the [GEOFLA® dataset](http://professionnels.ign.fr/geofla), [TopoJSON format](https://github.com/mbostock/topojson/wiki) and [D3.js](https://d3js.org) library.

Some examples:
- [Map of the communes of France](https://bl.ocks.org/jgaffuri/raw/3568b0dae74c341866d2459726517d13/)
- [Map of income by commune](https://bl.ocks.org/jgaffuri/raw/88840ee82b039d730d1df5f9856cf894/)

[![Map of income by commune](img/rev.png)](https://bl.ocks.org/jgaffuri/raw/88840ee82b039d730d1df5f9856cf894/)

## File structure

The file [communes.json](/json) provides 2 feature collections:

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

The file [communes_nolim_oac.json](/json) has the same content as communes.json, excluding limits of types 'o', 'a' and 'c', which are often useless to show on maps.
The file [communes_surf.json](/json) contains only the 'commune' geometries (surfaces), without any limit.

## Support and contribution

Feel free to [ask support](https://github.com/jgaffuri/france2json/issues/new), fork the project or simply star it (it's always a pleasure).

## Copyright




[GEOFLA® dataset](http://professionnels.ign.fr/geofla) is copyrighted. See the [IGN website](http://professionnels.ign.fr/geofla) for more information.
