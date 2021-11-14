#variable: rues rues
#onSet: Vous êtes dans les rues de la ville.
#onUnset: Vous n'êtes plus dans les rues de la ville.
#value: false

#variable: appartement appartement
#onSet: Vous êtes chez vous.
#onUnset: Vous n'êtes plus chez vous.
#value: false

#variable: observeParChat observeParChat
#onSet: On vous observait.
#onUnset: On vous observe.
#value: false

#variable: verifierLait verifierLait
#onSet: Allez voir le bol de lait sur la fenêtre avant d'aller dormir.
#onUnset: Vous avez rempli le bol de lait.
#value: false

#variable: enTrainDeDormir dormir
#onSet: Vous êtes en train de dormir.
#onUnset: Vous êtes réveillée.
#value: false

#variable: toits toits
#onSet: Vous êtes sur les toits de la ville.
#onUnset: Vous n'êtes plus sur les toits de la ville.
#value: false

#variable: phase1 phase1
#onSet: Vous cherchez 3 raisons pour lesquelles les chats devraient faire sécession des humains.
#onUnset: Vous avez trouvé 3 raisons pour lesquelles les chats devraient faire sécession des humains.
#value: false

#variable: phase2 phase2
#onSet: Vous cherchez 3 raisons pour lesquelles les chats devraient rester auprès des humains.
#onUnset: Vous avez trouvé 3 raisons pour lesquelles les chats devraient rester auprès des humains.
#value: false

#variable: phase3 phase3
#onSet: Vous devez aller chercher les affiches de la grande rue pour les montrer aux chats.
#onUnset: Vous avez les affiches.
#value: false

#variable: raisonPartirAnimalerie raisonPartirAnimalerie
#onSet: Vous avez trouvé une raison de partir en voyant la vitrine d'une animalerie.
#onUnset: Il vous manque une raison de partir.
#value: false
#showIf: yes phase1

#variable: raisonPartirVeterinaire raisonPartirVeterinaire
#onSet: Vous avez trouvé une raison de partir en voyant l'affiche d'un cabinet de vétérinaire.
#onUnset: Il vous manque une raison de partir.
#value: false
#showIf: yes phase1

#variable: raisonPartirMaison raisonPartirMaison
#onSet: Vous avez trouvé une raison de partir en regardant par la fenêtre d'une maison.
#onUnset: Il vous manque une raison de partir.
#value: false
#showIf: yes phase1

#variable: raisonResterNourriture raisonResterNourriture
#onSet: Vous avez trouvé une raison de rester en regardant un sac de nourriture pour chat.
#onUnset: Il vous manque une raison de rester.
#value: false
#showIf: yes phase2

#variable: raisonResterAmour raisonResterAmour
#onSet: Vous avez trouvé une raison de rester en regardant un chat qui quittait son maître.
#onUnset: Il vous manque une raison de rester.
#value: false
#showIf: yes phase2

#variable: raisonResterLucky raisonResterLucky
#onSet: Vous avez trouvé une raison de rester en parlant à Lucky de sa famille.
#onUnset: Il vous manque une raison de rester.
#value: false
#showIf: yes phase2

#variable: affichesPrises affichesPrises
#onSet: Vous avez pris les affiches.
#onUnset: Vous n'avez pas encore pris les affiches.
#value: false
#showIf: yes phase3

#room: Variables
#description: Placeholder
#contents:

#choice: Placeholder
#description: Placeholder
#body: nope§
#image: none
#requirements: none
#visible: false
#sideeffects: none
#next: none
