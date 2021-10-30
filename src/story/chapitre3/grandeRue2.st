#room: Plus loin dans la grande rue
#description: La rue était éclairée par la lumière blafarde des lampadaires sur ses côtés. Sur l'un d'entre eux, une affiche flottait dans le vent.
#contents:

#choice: Regarder à travers la fenêtre d'une maison.
#description: Dans une maison à gauche, les rideaux étaient ouverts. On pouvait voir voir ce qui se passait par la fenêtre.
#body: Un couple était assis devant la télévision. En dessous de l'écran, une cage de voyage était posée. Depuis la grille de cette cage, le petit visage d'un chaton regardait pitoyablement Lucky et la femme par la fenêtre.

"Ils le gardent auprès d'eux pour ne pas le perdre, dit Lucky. Quand Mra a commencé à rassembler les chats, et qque les humains ont commencé à remarquer, certains ont, comme ceux-ci, enfermé le leur pour qu'il ne disparaisse pas. On les appelle les chats qui ont vécu ça les 'piégés'. Certains ont pu s'échapper. D'autres pas."

Lucky marqua une pause. Il regarda la cage.

"Ce n'était déjà pas agréable avant que les humains prennent peur."

Il jeta un dernier regard triste vers le chaton, puis se retourna vers la rue.§
#image: none
#requirements: no raisonPartirMaison, yes phase1
#visible: false
#sideeffects: set raisonPartirMaison
#next: grandeRue2

#choice: Aller lire l'affiche sur le lampadaire
#description: Un des deux morceaux de ruban adhésif qui la maintenait s'étant cassé, elle flottait dans le léger vent du soir.
#body: Malmenée par les éléments, l'affiche disait:

AVEZ-VOUS VU CE CHAT
VU POUR LA DERNIÈRE FOIS CHEZ-
IL S'APPELLE CARAM-
CONTACTEZ R-

Une photo délavée figurait en haut; elle avait déteint sur le texte, rendant une partie illisible.

Lucky vit que la femme regarfait l'affiche et dit: "Je ne comprends pas ce que vous, les humains, vous avez à fixer des feuilles de livre partout. Vous avez un sens bizarre de la décoration."

La femme haussa un sourcil à cette remarque, mais ne releva pas.§
#image: none
#requirements: none
#visible: false
#sideeffects: none
#next: grandeRue2

#choice: Retourner vers le kiosque
#description: Vers l'entrée de la rue.
#body: La femme et Lucky revinrent vers le kiosque.§
#image: none
#requirements: none
#visible: false
#sideeffects: none
#next: grandeRue1

#choice: Continuer dans la rue
#description: Plus avant, le bout de la rue.
#body: Devant, une route barrait le passage; c'était le bout de la rue.§
#image: none
#requirements: none
#visible: false
#sideeffects: none
#next: grandeRue3
