#room: Le rassemblement des chats.
#description: En attente de leur exode, les chats étaient réunis sur le toit de l'immeuble. Certains étaient couchés, certains se nettoyaient, certains marchaient nerveusement. Mra passait dans la foule pour surveiller.
#contents:

#choice: L'aube poignait
#description: L'horizon s'éclaircissait. Les chats allaient partir. Il fallait vite leur exposer les raisons de rester.
#body: Les deux coururent au milieu du toit:

"Écoutez-nous! Nous avons quelque chose d'important à dire!"

Le silence tomba. Mra feula: "Que faites-vous ici? Je vous ai dit de partir!"

Avant qu'elle puisse continuer, la femme la coupa: "Nous venons vous expliquer à tous pourquoi vous devriez rester."§
#image: none
#requirements: yes phase2, yes raisonResterAmour, yes raisonResterLucky, yes raisonResterNourriture
#visible: false
#sideeffects: unset phase2
#next: raisonsDeRester1

#choice: Se rappeler
#description: Qu'allait-on chercher?
#body: C'est vrai. Ils allaient dans la grande rue chercher les affiches.§
#image: none
#requirements: yes phase3, no affichesPrises
#visible: false
#sideeffects: none
#next: chats

#choice: Montrer les affiches
#description: C'était le grand moment.
#body: La femme et Lucky arrivèrent en courant au milieu de la foule, la femme tenant les affiches dans ses mains. Les chats regardaient les affiches d'un air curieux. La femme commença à lire.§
#image: none
#requirements: yes phase3, yes affichesPrises
#visible: false
#sideeffects: unset phase3
#next: affiches1

#choice: Descendre dans la rue
#description: Il fallait y aller.
#body: La femme descendit, suivie de Lucky.§
#image: none
#requirements: none
#visible: false
#sideeffects: unset toits, set rues
#next: ruelleOubliee
