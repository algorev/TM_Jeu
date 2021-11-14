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

#choice: Chapitre 3 Phase 2
#description: Lancer la phase 2 du chapitre 3.
#body: Vous avez lancé la phase 2 du chapitre 3.§
#image: none
#requirements: none
#visible: true
#sideeffects: unset rues, set toits, set raisonPartirAnimalerie, set raisonPartirMaison, set raisonPartirVeterinaire, set phase2
#next: chats

#choice: Chapitre 3 Phase 3
#description: Lancer la phase 3 du chapitre 3.
#body: Vous avez lancé la phase 3 du chapitre 3.§
#image: none
#requirements: none
#visible: true
#sideeffects: unset rues, set toits, set raisonPartirAnimalerie, set raisonPartirMaison, set raisonPartirVeterinaire, set raisonResterAmour, set raisonResterLucky, set raisonResterNourriture, set phase3
#next: chats

#choice: Épilogue
#description: Lancer l'épilogue.
#body: Vous avez lancé l'épilogue.§
#image: none
#requirements: none
#visible: true
#sideeffects: unset rues, set appartement, unset toits, set raisonPartirAnimalerie, set raisonPartirMaison, set raisonPartirVeterinaire, set raisonResterAmour, set raisonResterLucky, set raisonResterNourriture
#next: epilogue
