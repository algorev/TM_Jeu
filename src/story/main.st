#room: DEBUG MAIN
#description: Point d'entrée de déboguage du jeu. Enlever pour la release.
#contents:

#choice: Chapitre 1
#description: Lancer le chapitre 1.
#body: Vous avez lancé le chapitre 1.§
#image: none
#requirements: none
#visible: true
#sideeffects: none
#next: chapitre1

#choice: Chapitre 2
#description: Lancer le chapitre 2.
#body: Vous avez lancé le chapitre 2.§
#image: none
#requirements: none
#visible: true
#sideeffects: set appartement, unset rues
#next: chapitre2

#choice: Chapitre 3
#description: Lancer le chapitre 3.
#body: Vous avez lancé le chapitre 3.§
#image: none
#requirements: none
#visible: true
#sideeffects: unset rues, set toits
#next: chapitre3

#choice: Épilogue
#description: Lancer l'épilogue.
#body: Vous avez lancé l'épilogue.§
#image: none
#requirements: none
#visible: true
#sideeffects: none
#next: none
