# Format de fichier d'histoire

## Structure générale d'une histoire

Une histoire est formée de _pièces_, décrites dans leurs fichiers respectifs, et d'un _environnement_, décrit par des variables, déclarées dans ces mêmes fichiers et manipulées par les commandes des choix. Elle commence dans la pièce _main_.

Une pièce est un ensemble de _choix_, qui peuvent être _accessibles_ ou _inaccessibles_, selon l'état des variables dont ils dépendent. Si ils sont inaccessibles, ils peuvent être _visibles_ ou _invisibles_. Une pièce a aussi un _nom privé_, pour l'indexation, et un _nom public_ qui apparaît dans le jeu. Enfin, elle a une description et une image qui apparaissent dans le jeu.

Un choix est une action que le joueur peut choisir d'effectuer, si ses _conditions de départ_ sont remplies. Il change l'état de plusieurs variables, en conséquence d'être pris. Il a un texte _preview_ et un _titre_, qui donnent une idée de ce que le choix fait avant d'être pris. Il a un _texte résultat_, qui décrit les conséquences de l'action. Il a des _effets de bord_, qui décrivent quelles variables doievent être modifiées et comment. Enfin, il décrit dans quelle pièce l'action se déplace.

## Variables

Une variable est une composante de l'environnement. Elle a un nom et une valeur booléenne. Elle a aussi une image.

Une variable est modifiée par une commande dans les effets de bord d'un choix.

## Fichiers

Un fichier d'histoire a pour extension '.st'. Cette extension a été choisie parce qu'elle n'entre en conflit avec rien sur mon système.

Chaque pièce est dans un fichier séparé. La pièce au nom privé _main_ est le point d'entrée de l'histoire. Pour des raisons de non-duplication, le nom privé d'une pièce est défini par son nom de fichier.

Ainsi, le compilateur travaille sur un dossier entier, qu'il compile en un fichier JSON utilisé par le moteur de jeu.

Le chemin des images, sons ou toute autre ressource extérieure mentionnée par le fichier est résolu comme le nom du fichier plus son extension implicite (p.ex ".svg" pour les images), dans un dossier contenant les ressources de ce type. Ce dossier est défini par le moteur de jeu et ne concerne pas le compilateur, qui copie le nom de la ressource verbatim dans le JSON généré.

Si une ressource a pour nom "none", cela signifie que l'objet qui la référence n'a pas de ressource associée. Une ressource "none" sera remplacée par une ressource par défaut.

## Grammaire

`
<fichier> ::= <variable> <fichier> | <pièce>
<variable> ::= "#variable:" <nompriv> <imgpath> <varinfo> "\n"
<varinfo> ::= [<onset>] [<onunset>] [<value>]
<defaultvalue> ::= "#value:" <bool> "\n"
<onset> ::= "#onSet:" <nompub> "\n"
<onunset> ::= "#onUnset:" <nompub> "\n"
<nompriv> :== /[a-zA-Z0-9]+/
<imgpath> ::= <nompriv> | "none"
<pièce> ::= "#room:" <nompub> "\n" <description> <piècecontents>
<piècecontents> ::= "#contents:" "\n" <piècechoices>
<piècechoices> ::= <choix> <piècechoices> | <choix>
<choix> ::= "#choice:" <nompub> "\n" <description> <body> <choiximage> <requirementlist> <visibility> <sideeffects> <redirect> "\n"
<nompub> ::= /[a-zA-Z0-9 .\"]+/
<description> ::= "#description:" /[a-zA-Z0-9 ,.\"]+/ "\n"
<body> ::= "#body:" /[a-zA-Z0-9 .,\"\n]+/ "§\n"
<visibility> ::= "#visible:" <bool> "\n"
<bool> ::= "true" | "false"
<choiximage> ::= "#image:" <imgpath> "\n"
<requirementlist> ::= "#requirements:" <requirements>
<requirements> ::= <varstate> <varname> "," <requirements> | <varstate> <varname> "\n" | "none" "\n"
<varstate> ::= "no" | ""
<varname> ::= <nompriv>
<sideeffects> ::= "#sideeffects:" <effects>
<effects> ::= <varaction> <varname> "," <effects> | <varaction> <varname> "\n" | "none" "\n"
<varaction> ::= "" | "unset" | "flip"
<redirect> ::= "#next:" <nompub>
`

Si `onSet` ou `onUnset` ne sont pas définis, aucun texte ne sera imprimé à la modification concernée de la variable.
Si `value` n'est pas défini, la valeur initiale de la variable sera `false`.
Si `next` est `none`, le choix est une fin de jeu.

## Exemple

Fichier: testRoom.st

`
#variable: testvar testVarImage
#onSet: Vous avez maintenant une variable de test!
#onUnset: Vous n'avez PLUS de variable de test!

#variable: anothervar anotherImage
#onSet: Une autre variable vient à vous!

#room: La chambre de torture
#description: Une pièce de test. Les murs sont blancs. "Je n'aime pas cet endroit", dit le prêtre.
#contents:

#choice: Regarder alentours.
#description: Voyons voir. Que pourrait-il y avoir dans cette pièce?
#body: La pièce est sombre. Les murs sont blancs. Il y a des armes sur les murs.
"Je n'aime pas cet endroit", dit le prêtre. "Leur support unicode est nul." Il a bien raison. Halte aux mécréants.§
#image: roomImage
#requirements: testvar, no anothervar
#visible: true
#sideeffects: anothervar, unset testvar
#next: otherRoom

#choice: Repartir.
#description: C'est trop dangereux. Allons-y.
#body: Il fait sombre. Une seule chose est sûre: vous n'êtes pas à l'aise. Le prêtre non plus, d'ailleurs.§
#image: roomImage
#requirements: none
#visible: false
#sideeffects: none
#next: testRoom
`

## Format de sortie
Le compilateur produit un fichier JSON de la forme suivante:

`
{
	"variables": {...},
	"rooms": {...}
}
`

### Variables

`
	"variables": {
		"var1": {
			"publicName": "...",
			"imageName": "...", //or null
			"onSet": "...", //or null
			"onUnset": "...", //or null
			"value": true //or false
		},
		...
	}
`

### Pièces

`
	"rooms": {
		"room1": {
			"publicName": "...",
			"description": "...",
			"choices": [
				{
					"publicName": "...",
					"description": "...",
					"body": "...",
					"imageName": "...",
					"requirements": {
						"yes": ["...", "...", ...], //or null
						"no": ["...", "...", ...] //or null
					},
					"visible": true, //or false
					"sideeffects": {
						"set": ["...", "...", ...], //or null
						"unset": ["...", "...", ...], //or null
						"flip": ["...", "...", ...] //or null
					},
					"next": "..."
				},
				...
			]
		},
		...
	}
`