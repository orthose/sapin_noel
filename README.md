# Introduction
Mini-Projet de Langage Formel L3 Informatique Université Paris-Saclay.

# Les Étudiants
Baptiste Maquet

Maxime Vincent

# Compilation
`make`

# Exécution
`./main -help`

`./main sapin1.txt -d -c`

# Nettoyage
`make clean`

# Fichiers de test
* sapin1.txt: Sapin valide sans indentation.
* sapin2.txt: Sapin valide avec indentation.
* sapin3.txt: Sapin valide avec indendation dégénérée.
* sapin4.txt: Sapin valide mais fichier invalide car
2 suites d'étoiles sur une ligne. Renvoie une erreur de parsage.
* sapin5.txt: Sapin invalide car nombre impair d'étoiles.
Renvoie une erreur de parsage.
* sapin6.txt: Sapin invalide car sous-chaîne croissante
à un seul élément. 
