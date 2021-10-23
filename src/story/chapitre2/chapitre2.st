#room: Chapitre 2: Tous les chats sont gris
#description: Le chat tigré fixait la femme avec de grands yeux, son regard entre l'impatience et la supplication. Sa queue battait l'air vivement et irrégulièrement. Les questions se bousculaient sur les lèvres de la femme.
#contents:

#choice: "Tu peux parler?"
#description: C'était, somme toute, une question assez importante.
#body: Le chat inspira, puis, réalisant qu'il devrait reprendre les explications depuis un point plus basique, soupira.

"Oui, je peux parler. Comme tous les chats. D'habitude, nous n'avons pas besoin de le faire. Je m'excuse du fait que tu doives l'apprendre maintenant, mais l'urgence guette. D'autres questions?"§
#image: none
#requirements: none
#visible: false
#sideeffects: none
#next: chapitre2

#choice: "Pourquoi moi?"
#description: Qu'avait la femme de spécial pour qu'un félin parlant rentre dans sa chambre au milieu de la nuit?
#body: "C'est simple. Tous les chats de la ville t'apprécient à cause du lait que tu laisses à ta fenêtre, et tu n'as jamais possédé un seul d'entre eux. Tu es le seul être humain qu'ils écouteront dans cette ville."§
#image: none
#requirements: none
#visible: false
#sideeffects: none
#next: chapitre2

#choice: "Comment es-tu rentré?"
#description: D'où vient ce chat?
#body: Le chat, légèrement consterné, répondit après une pause: "...par la fenêtre?"§
#image: none
#requirements: none
#visible: false
#sideeffects: none
#next: chapitre2

#choice: "Que puis-je faire pour toi?"
#description: Au vif du sujet.
#body: "J'ai besoin de ton aide, parce que les chats de cette ville veulent partir, et je veux empêcher ça."

Il se dirigea vers la fenêtre et se retourna vers la femme:

"Viens avec moi, ils se sont tous rassemblés, et il faut que tu les convainques de rester."

Il sauta par la fenêtre sur le toit et la femme, après s'être changée en vitesse, le suivit.§
#image: none
#requirements: none
#visible: false
#sideeffects: unset appartement, set toits
#next: appartementToit
