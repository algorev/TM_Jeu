#room: Le rassemblement des chats.
#description: En attente de leur exode, les chats étaient réunis sur le toit de l'immeuble. Certains étaient couchés, certains se nettoyaient, certains marchaient nerveusement. Mra passait dans la foule pour surveiller.
#contents:

#choice: Présenter les trois raisons de partir
#description: La femme avait trouvé, avec Lucky, trois raisons pour que les chats partent. Mra voulait qu'ils reviennent vers elle après cela.
#body: Mra leva les yeux, sa voix satisfaite:

"Tu as trouvé? Parfait. Ce sont de bonnes raisons. Avec l'aide de Lucky, tu as pu mieux comprendre pourquoi nous voulons partir. Maintenant, tu peux partir, tes raisons de rester sont échues. Sache que les chats te seront pour toujours reconnaissants pour ton soutien. Nous penserons à toi en bâtissant notre nouvelle vie."

La chatte se retourna et alla voir quelque chose autre part. La femme resta silencieuse un moment, puis se dirigea vers la sortie de secours. Elle regarda l'assemblée une dernière fois d'un air triste, puis s'apprêta à descendre et rentrer chez elle.

Elle était triste. Elle tenait aux chats, et la vie allait être solitaire sans eux.

Elle commença à descendre les marches.§
#image: none
#requirements: yes phase1, yes raisonPartirAnimalerie, yes raisonPartirMaison, yes raisonPartirVeterinaire
#visible: false
#sideeffects: unset phase1
#next: toutnEstPasFini

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

#choice: Parler à Mra
#description: Quelle était la mission, déjà?
#body: Mra réexpliqua:

"Descends l'escalier. Va dans la ville. Trouve trois des raisons pour lesquelles nous voulons partir."

Elle fit un mouvement de tête en direction de Lucky:

"Aide-toi de lui, là. Il t'aidera à nous comprendre. Après avoir trouvé, reviens ici."§
#image: none
#requirements: yes phase1
#visible: false
#sideeffects: none
#next: chats

#choice: Parler à Lucky
#description: Qu'essayaient-ils de faire, déjà?
#body: Lucky soupira, puis lui réexpliqua:

"Il y a encore de l'espoir! Si on réussit à trouver trois raisons pour que les chats restent, peut-être qu'on pourra en convaincre une partie."

"Mais est-ce que nous avons une idée de raison de rester?"

"Je ne sais pas. Mais je pense que les autres ne sont pas aussi sûrs du plan de Mra qu'ils ne le laissent paraître. Si on réussit à leur rappeler des choses qu'ils aimaient chez les humains, peut-être qu'ils changeront d'avis."

"Mais quelles choses?"

"Cela reste à trouver. Je pense qu'un tour dans la ville devrait nous donner des idées."§
#image: none
#requirements: yes phase2
#visible: false
#sideeffects: none
#next: chats

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
