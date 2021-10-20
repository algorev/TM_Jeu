#variable: observeParChat none
#onSet: On vous observait.
#onUnset: On vous observe.
#value: false

#room: La ruelle
#description: La ruelle était bordée de plusieurs maisons, dont la plupart des lumières sont éteintes. Au bout, l'entrée de l'immeuble de la femme.
#contents:

#choice: Aller lire l'affiche sur le lampadaire
#description: Un des deux morceaux de ruban adhésif qui la maintenait s'étant cassé, elle flotte dans le léger vent du soir.
#body: Malmenée par les éléments, l'affiche disait:

AVEZ-VOUS VU CE CHAT
VU POUR LA DERNIÈRE FOIS CHEZ-
IL S'APPEL-
CONTACTEZ R-

Une photo délavée figurait en haut; elle avait déteint sur le texte, rendant une partie illisible.
Pour l'instant, ce chat resterait sans nom.§
#image: none
#requirements: none
#visible: false
#sideeffects: none
#next: rueLampadaires2

#choice: Revenir en arrière
#description: Il y avait encore des choses à voir, plus tôt sur le chemin.
#body: La femme revint sur ses pas, vers l'affiche.§
#image: none
#requirements: none
#visible: false
#sideeffects: none
#next: rueLampadaires2

#choice: Aller dans la ruelle
#description: À gauche, la petite entrée d'une ruelle. Dans cette ruelle, le repos après une longue journée.
#body: La ruelle était bordée de plusieurs maisons, dont la plupart des lumières sont éteintes. Au bout, l'entrée de l'immeuble de la femme.§
#image: none
#requirements: none
#visible: false
#sideeffects: none
#next: rueLampadaires3
