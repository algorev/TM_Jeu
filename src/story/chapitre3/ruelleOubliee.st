#room: Une ruelle oubliée
#description: C'était une ruelle coincée entre deux immeubles anonymes. Sa seule caractéristique notable était qu'elle contenait l'escalier de secours d'un des immeubles. Et au sommet de cet immeuble, un rassemblement des chats de la ville, accessoirement.
#contents:

#choice: Présenter les trois raisons de partir à Mra
#description: La femme avait trouvé, avec Lucky, trois raisons pour que les chats partent. Peut-être que Mra l'écouterait, maintenant.
#body: Ils montèrent les escaliers et arrivèrent devant Mra. Mra leva les yeux, blasée: "Ne vous avais-je pas dit de partir?"

La femme expliqua: "Lucky m'a montré. Je comprends mieux maintenant."

Mra répondit d'un ton narquois: "Et? Si tu reviens ici c'est que tu n'as rien compris. Tu as vu pourquoi nous voulons partir, quelle sorte de grande raison peux-tu conjurer pour nous convaincre de rester? Nous dire de rentrer?"

"Les humains ne sont pas des sadiques, et je suis sûre que-"

"C'est ça, tu es comme tous les humains. Lâche et menteuse. Garde tes excuses pour toi, nous n'en avons pas besoin. File. C'est ton dernier avertissement."

La femme resta silencieuse un moment, puis se dirigea vers la sortie de secours. Elle regarda l'assemblée une dernière fois d'un air triste, puis s'apprêta à descendre et rentrer chez elle.

Elle était triste. Elle tenait aux chats, et la vie allait être solitaire sans eux.

Elle commença à descendre les marches.§
#image: none
#requirements: yes phase1, yes raisonPartirAnimalerie, yes raisonPartirMaison, yes raisonPartirVeterinaire
#visible: false
#sideeffects: unset phase1
#next: toutnEstPasFini

#choice: Parler à Lucky
#description: Que voulaient-ils faire, déjà?
#body: Lucky réexpliqua:

"On va dans la ville pour essayer de te montrer trois des raisons pour lesquelles les autres chats veulent partir. Une fois qu'on en aura trouvé trois, on pourra revenir ici."§
#image: none
#requirements: yes phase1
#visible: false
#sideeffects: none
#next: ruelleOubliee

#choice: Remonter sur le toit de l'immeuble
#description: Il était temps de reparler aux chats.
#body: La femme monta les marches de l'escalier rapidement, Lucky plus lentement.§
#image: none
#requirements: no phase1, yes raisonResterLucky, yes raisonResterAmour, yes raisonResterNourriture
#visible: false
#sideeffects: unset rues, set toits
#hiderequirements
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
#next: ruelleOubliee

#choice: Aller dans une rue grise
#description: Il n'allait pas se passer grand chose dans cette ruelle; il fallait sortir.
#body: La femme et Lucky sortirent de la ruelle vide, aboutissant dans une autre rue vide, et tout aussi anonyme.§
#image: none
#requirements: none
#visible: false
#sideeffects: none
#next: rueGrise
