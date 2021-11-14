#room: Une allée pleine de magasins
#description: L'allée était un endroit au bord de la ville où l'on pouvait trouver de tout. Vêtements, nourriture, etc. À l'heure où ils passaient, tout était fermé. De l'agitation diurne, il ne restait que des vitrines noires et vides.
#contents:

#choice: Regarder la vitrine d'une animalerie
#description: L'endroit où les animaux étaient vendus.
#body: Même si toutes les lumières étaient éteintes, on pouvait voir que le jour, l'endroit était lumineux et coloré:

PETZ 'N FUNZ
ANIMALERIE
CHATS . CHIENS . HAMSTERS
ANIMAUX EXOTIQUES À PRIX INCOMPARABLES!

Lucky regarda la vitrine:

"Je ne viens pas d'une animalerie. J'ai été adopté depuis un refuge. J'ai un vague souvenir de ma mère."

Pendant un moment, la femme pensa aux familles joyeuses qui venaient là adopter un nouveau membre, chaque jour. Ce ne devait pas être drôle, de se faire vendre.§
#image: none
#requirements: no raisonPartirAnimalerie, yes phase1
#visible: false
#sideeffects: set raisonPartirAnimalerie
#next: alleeMagasins

#choice: Retourner vers la grande route
#description: Il y avait plus de choses à voir là-bas.
#body: Dans la nuit silencieuse, ils retracèrent leur chemin jusqu'à la grande route.§
#image: none
#requirements: none
#visible: false
#sideeffects: none
#next: grandeRoute
