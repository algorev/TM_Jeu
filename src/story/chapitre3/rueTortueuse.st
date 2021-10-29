#room: Une rue tortueuse
#description: C'était une rue à la forme étrange. Elle serpentait entre les maisons, la lune se reflétant dans les vitres de chaque côté.
#contents:

#choice: Regarder la vitrine d'une clinique vétérinaire.
#description: Sur un des côtés de la rue, il y avait la clinique d'un vétérinaire.
#body: Sur la vitrine, il y avait une affiche de prix:

VÉTERINAIRE SCHUMANN

- VACCINS
- MÉDECINE GÉNÉRALE
- CASTRATION

Lucky fixa le dernier point. Il dit simplement:

"Ce n'est pas toujours agréable, d'appartenir à quelqu'un."§
#image: none
#requirements: no raisonPartirVeterinaire, yes phase1
#visible: false
#sideeffects: set raisonPartirVeterinaire
#next: rueTortueuse

#choice: Aller vers le centre-ville
#description: Au loin, les hauts immeubles se dessinaient, brillant ternement dans la nuit.
#body: La femme marcha un bout dans la direction des bâtiments jusqu'à arriver à une nouvelle rue.§
#image: none
#requirements: none
#visible: false
#sideeffects: none
#next: versCentreVille

#choice: Aller dans la grande rue
#description: De retour vers les lampadaires.
#body: Ils retrouvèrent leur chemin dans les détours de la rue jusqu'à arriver à la grande rue.§
#image: none
#requirements: none
#visible: false
#sideeffects: none
#next: grandeRue1
