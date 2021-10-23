#room: Extrémité de la grande rue
#description: Le chemin était barré par une route qui passait en travers. C'était le bout de la rue. Les lampadaires à cet endroit étaient recouverts d'affiches, la plupart différentes. Une ruelle partait vers la gauche.
#contents:

#choice: Lire une affiche sur un lampadaire sale
#description: Au dessus du texte de l'affiche plastifiée, une image crasseuse d'un gros chat noir.
#body: Au dessus du texte de l'affiche plastifiée, une image crasseuse d'un gros chat noir.

CHAT PERDU
TRÈS TIMIDE, NE PAS BRUSQUER SI VOUS LE VOYEZ
Contacter le XXX/XXX XX XX§
#image: none
#requirements: none
#visible: false
#sideeffects: none
#next: rueLampadaires3

#choice: Lire une affiche sur un panneau
#description: Cette affiche avait été collée sur un panneau de circulation, probablement par manque de place autre part. Elle est écrite à la main, visiblement par un enfant.
#body: Cette affiche avait été collée sur un panneau de circulation, probablement par manque de place autre part. Elle était écrite à la main, visiblement par un enfant:

Si vous voyé mon cha,
appelé ma maman
son numéro c'est XXX/XXX XX XX

Au dessus figurait un dessin au crayon de couleur d'un chat, vers lequel pointait une flèche avec la légende: "Sheena"§
#image: none
#requirements: none
#visible: false
#sideeffects: none
#next: rueLampadaires3

#choice: Lire une des affiches d'un lampadaire recouvert
#description: Inexplicablement, l'auteur de cette affiche l'avait imprimée à des dizaines d'exemplaires pour en recouvrir le lampadaire. Ces exemplaires se chevauchaient de telle manière que les affiches étaient en partie illisibles.
#body: Inexplicablement, l'auteur de cette affiche l'avait imprimée à des dizaines d'exemplaires pour en recouvrir le lampadaire. Ces exemplaires se chevauchaient de telle manière que les affiches étaient en partie illisibles:

Chat tig
    nom est L
                uis 2 mois
               nière fois au XXX de
        très important pour moi
         le voyez appelez
S'il vous plaît§
#image: none
#requirements: none
#visible: false
#sideeffects: none
#next: rueLampadaires3

#choice: Revenir en arrière
#description: Il y avait encore des choses à voir, plus tôt sur le chemin.
#body: La femme revint sur ses pas, vers le lampadaire avec l'affiche.§
#image: none
#requirements: none
#visible: false
#sideeffects: none
#next: rueLampadaires2

#choice: Aller dans la ruelle
#description: À gauche, la petite entrée d'une ruelle. Dans cette ruelle, le repos après une longue journée.
#body: La femme entra dans la ruelle. Elle était bientôt chez elle.§
#image: none
#requirements: none
#visible: false
#sideeffects: none
#next: rueLampadaires4
