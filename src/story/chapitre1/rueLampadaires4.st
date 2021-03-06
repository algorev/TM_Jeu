#room: La ruelle
#description: La ruelle était bordée de plusieurs maisons, dont la plupart des lumières étaient éteintes. Quelques affiches étaient collées aux murs. Au bout, l'entrée de l'immeuble de la femme.
#contents:

#choice: Un regard furtif
#description: La femme se retourna. Quelque chose la fixait depuis le buisson.
#body: La femme se retourna. Une figure grise partit en courant. Un chat. En ce moment? D'où venait-il?§
#image: none
#requirements: no observeParChat
#visible: false
#sideeffects: set observeParChat
#next: rueLampadaires4

#choice: Revenir en arrière
#description: Il y avait encore des choses à voir, plus tôt sur le chemin.
#body: La femme revint sur ses pas, vers la grande rue.§
#image: none
#requirements: none
#visible: false
#sideeffects: none
#next: rueLampadaires3

#choice: Entrer chez soi
#description: Il était temps de se reposer.
#body: La femme ouvrit la porte et entra chez elle.§
#image: none
#requirements: none
#visible: false
#sideeffects: unset rues, set appartement, set verifierLait
#next: appartement
