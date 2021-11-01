#room: Un cul de sac
#description: C'était le bout de la rue. Il y avait, serrée entre trois murs de brique décrépite, une benne à ordures.
#contents:

#choice: Un déchet spécial
#description: L'ensemble était nauséabond, mais un déchet attirait l'attention de Lucky...
#body: Ne voulant pas s'approcher plus, Lucky regarda juste très intensément le sac posé contre la benne. L'intention était claire. La femme prit le gros sac de nourriture pour chats et l'amena vers Lucky. Le sac était déjà ouvert. D'une pression, le chat le fit basculer et commença à se délecter des croquettes répandues au sol.

La femme sourit: "Pas besoin d'une voix pour communiquer, des fois, hein?"

Lucky répondit sans lever les yeux de son plat: "Ce n'est pas mal de se faire nourrir, des fois. J'ai un souvenir tendre de la pâtée que me donnait mon maître. Même si c'est moins excitant que de chasser, c'était réconfortant de savoir que même si la journée avait été creuse, il y avait de quoi manger en rentrant chez soi. Je ne pense pas être le seul chat à qui ça manque."§
#image: none
#requirements: yes phase2, no raisonResterNourriture
#visible: false
#sideeffects: set raisonResterNourriture
#next: culDeSac

#choice: Retourner dans la rue grise
#description: Il y aurait plus de choses à voir là-bas.
#body: La femme retourna dans la rue grise, rejoignant Lucky qui voulait s'éloigner le plus vite possible.§
#image: none
#requirements: none
#visible: false
#sideeffects: none
#next: rueGrise
