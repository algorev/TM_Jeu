#variable: testvar none
#onSet: Vous avez maintenant une variable de test!
#onUnset: Vous n'avez PLUS de variable de test!
#value: true

#variable: anothervar none
#onSet: Une autre variable vient à vous!
#onUnset: Etttt elle n'est pas là!
#value: true

#room: La chambre de torture
#description: Une pièce de test. Les murs sont blancs. "Je n'aime pas cet endroit", dit le prêtre.
#contents:

#choice: Regarder alentours.
#description: Voyons voir. Que pourrait-il y avoir dans cette pièce?
#body: La pièce est sombre. Les murs sont blancs. Il y a des armes sur les murs.
"Je n'aime pas cet endroit", dit le prêtre. "Leur support unicode est nul." Il a bien raison. Halte aux mécréants.§
#image: roomImage
#requirements: yes testvar, no anothervar
#visible: true
#sideeffects: set anothervar, unset testvar
#next: otherRoom

#choice: Repartir.
#description: C'est trop dangereux. Allons-y.
#body: Il fait sombre. Une seule chose est sûre: vous n'êtes pas à l'aise. Le prêtre non plus, d'ailleurs.§
#image: roomImage
#requirements: none
#visible: false
#sideeffects: none
#next: testRoom
