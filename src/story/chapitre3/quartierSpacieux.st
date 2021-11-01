#room: Un quartier spacieux
#description: Le quartier était récent, habité depuis quelques années. Il était bien éclairé et incroyablement spacieux. Les abris à vélos étaient vides et les rideaux de la plupart des appartements étaient tirés.
#contents:

#choice: Regarder une maison allumée
#description: Lucky ralentit en passant devant une maison...
#body:Lucky ralentit en passant devant une maison. Il la regarda d'un air triste, puis accéléra le pas.

"Attends, Lucky, qu'est-ce qui se passe?", demanda la femme.

"Je ne veux pas voir cet endroit.", dit-il d'une voix basse.

"Pourquoi?"

Il partit en avant sans répondre, mais elle resta sur place. Elle regarda dans la baie vitrée. C'était un salon classique, sans grand chose de notable...

Dans un coin. Il y avait une litière. Vide.

Lucky était revenu, voyant qu'elle ne le suivait pas. Il regardait la même chose qu'elle.

"C'est la maison de mes anciens maîtres."

La femme le regarda, silencieuse. Il continua:

"Ils étaient une famille, pour moi."

"Si tu tenais à eux, pourquoi es-tu parti, Lucky?"

"Je voulais plus d'indépendance, comme les autres. M'appartenir à moi-même. Ne pas me faire castrer ou vendre parce qu'un humain en avait décidé pour moi. Suivre les autres. Ce n'est qu'après être parti que je me suis rendu compte de ce que j'avais quitté. Une maison qui tenait à moi. Un endroit qui m'accueillait."

"Pourquoi n'y es-tu pas retourné?"

"J'avais trop honte, et j'ai toujours trop honte. Je dois leur avoir fait du mal en partant. Ils doivent croire que je suis mort. Je ne mérite pas d'y retourner."

"Et partir avec Mra et les autres?"

"Nous, les chats, nous ne sommes pas très familiaux. Je ne crois pas que nous pourrions recréer un tel environnement. Malgré les promesses de Mra. Et je pense que beaucoup regrettent comme moi le fait d'être venus. Nous sommes en train de faire une terrible erreur, et je veux laisser à ceux qui peuvent encore la corriger la possibilité de ne pas la finaliser."

La femme pensa à l'arrivée en pleine nuit de Lucky dans sa chambre: "C'est pour ça que...?"

"Oui."

Tout étant dit, ils repartirent.§
#image: none
#requirements: yes phase2, no raisonResterLucky
#visible: false
#sideeffects: set raisonResterLucky
#next: quartierSpacieux

#choice: Aller dans le parc
#description: Au milieu du quartier, il y avait un petit parc à l'intention des habitants.
#body: Ils se rapprochèrent du parc. Un homme promenait son chien. Ce dernier et Lucky se fixèrent froidement jusqu'à ce que le maître du chien parte, après quoi son animal de compagnie le suivit.§
#image: none
#requirements: none
#visible: false
#sideeffects: none
#next: parcPublic

#choice: Aller vers la route
#description: Ils avaient fait tout ce qu'ils avaient à faire là.
#body: Ils revinrent vers la route, de la lumière à la nuit noire.§
#image: none
#requirements: none
#visible: false
#sideeffects: none
#next: grandeRoute
