---
title: "Étude de l'espérance de vie dans le monde (2022)"
output: github_document
---

# Projet

Ce projet analyse les facteurs influençant l'espérance de vie par pays dans le monde en 2022.  
Il utilise des méthodes économétriques avancées telles que :
- Régression linéaire simple et par variables instrumentales (2SLS),
- Techniques de réduction de dimension (PCA, PLS),
- Méthodes de régularisation (Ridge, Lasso, Elastic Net),
- Double Machine Learning pour estimer des effets causaux.

Les données proviennent principalement de la Banque Mondiale et couvrent des indicateurs sanitaires, économiques, institutionnels et d'infrastructures.

# Auteurs

- Thierno **BAH**
- Elliot **RAULT-MAISONNEUVE**

Date du projet : **12 février 2025**

# Objectif principal

Comprendre et quantifier l'impact de divers facteurs économiques, politiques et sociaux sur l'espérance de vie à l'aide de méthodes économétriques modernes adaptées aux problèmes d'endogénéité, de multicolinéarité et de haute dimensionnalité.

# Résultats clés

- Identification des variables ayant le plus fort impact sur l'espérance de vie.
- Validation de la robustesse des modèles par des techniques modernes de machine learning.
- Mise en évidence de l'importance des conditions institutionnelles et économiques sur la santé publique.

# Structure du dépôt

- `data/` : Données utilisées pour l'étude.
- `scripts/` : Scripts R pour le traitement et l'analyse des données.
- `figures/` : Graphiques générés lors de l'étude.
- `rapport/` : Rapport final (PDF, Rmd).

# Reproduction

Pour reproduire les résultats :
1. Cloner le dépôt.
2. Lancer le fichier `projetNV.Rmd`.
3. S'assurer d'avoir installé les packages listés dans `projetNV.Rmd` au début du fichier.

---

*Projet réalisé dans le cadre d'une étude universitaire sur l'espérance de vie mondiale.*
