#room: L'appartement
#description: L'appartement de la femme était un petit studio sans décoration, directement sous le toit de l'immeuble. Le lit était défait, mais la pièce était ordonnée pour le reste. C'était un appartement pour dormir le soir et retourner travailler le lendemain, pas pour vivre.
#contents:

#choice: Vérifier le bol de lait sur la fenêtre
#description: Chaque nuit, la femme laissait un bol de lait sur le rebord de la fenêtre ouverte. Cela faisait longtemps que personne n'était venu s'y servir.
#body: Chaque nuit, la femme laissait un bol de lait sur le rebord de la fenêtre ouverte, à l'attention des chats. Ils venaient en marchant par les toits alentours pour se servir dans le bol.
Cela faisait longtemps que personne n'était venu s'y servir.
Cette nuit-là était différente des autres: le bol était vide. Un chat était venu et l'avait vidé. Peut-être même était-ce celui qui avait guetté la femme dans l'allée. Il restait des chats dans la ville.§
#image: none
#requirements: yes verifierLait
#visible: false
#sideeffects: unset verifierLait, set remplirLait
#next: appartement

#choice: Remplir le bol de lait sur la fenêtre
#description: Il y avait donc encore des chats en ville. Il fallait remplir le bol.
#body: La femme prit une brique de lait dans le réfrigérateur et la versa dans le bol, pensive. Peut-être ce chat reviendrait-il la nuit d'après.§
#image: none
#requirements: yes remplirLait
#visible: false
#sideeffects: unset remplirLait
#next: appartement

#choice: Regarder par la fenêtre
#description: Depuis la fenêtre, la ville s'étendait au loin, vaste.
#body: La femme s'appuya à la fenêtre et observa.§
#image: none
#requirements: none
#visible: false
#sideeffects: none
#next: appartementFenetre

#choice: Aller dormir
#description: Il était temps d'aller dormir. Enfin.
#body: Une fois préparée, la femme alla se coucher et s'endormit rapidement, épuisée.§
#image: none
#requirements: no verifierLait, no remplirLait
#visible: false
#sideeffects: set enTrainDeDormir, unset appartement
#next: sommeil1
