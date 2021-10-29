#room: Le rassemblement des chats.
#description: En attente de leur exode, les chats étaient réunis sur le toit de l'immeuble. Certains étaient couchés, certains se nettoyaient, certains marchaient nerveusement. Mra passait dans la foule pour surveiller.
#contents:

#choice: Parler à Mra
#description: Quelle était la mission, déjà?
#body: Mra regarda un moment les deux, penauds.

"Vous avez déjà oublié votre MISSION? Vous devez aller en ville, trouver les trois raisons pour lesquelles nous voulons partir, puis revenir vers moi. Compris?"§
#image: none
#requirements: yes phase1
#visible: false
#sideeffects: none
#next: chats

#choice: Parler à Mra
#description: Elle n'était pas très contente de l'objectif que les deux s'étaient fixé.
#body: TODO§
#image: none
#requirements: yes phase2
#visible: false
#sideeffects: none
#next: chats

#choice: Descendre dans la rue
#description: Il fallait y aller.
#body: La femme descendit, suivie de Lucky.§
#image: none
#requirements: none
#visible: false
#sideeffects: unset toits, set rues
#next: ruelleOubliee

#choice: Présenter les trois raisons de partir
#description: La femme avait trouvé, avec Lucky, trois raisons pour que les chats partent. Mra voulait qu'ils reviennent vers elle après cela.
#body: TODO§
#image: none
#requirements: none
#visible: false
#sideeffects: none
#next: ruelleOubliee
