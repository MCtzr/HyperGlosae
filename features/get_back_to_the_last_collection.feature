#language: fr

Fonctionnalité: Revenir au dernier embranchement au sein de la collection précédente

Scénario: L'utilisateur n'a pas navigué vers une nouvelle collection

Soit je suis sur téléphone
Et "Parcours : Visite de l'Eglise St-Jean-au-Marché, Troyes" le document principal
Quand je navigue vers le document suivant
Alors le bouton retour n'apparaît pas à l'écran

Scénario: L'utilisateur a navigué vers une nouvelle collection

Soit je suis sur téléphone
Et "Parcours : Visite de l'Eglise St-Jean-au-Marché, Troyes" le document principal
Et je navigue vers le document suivant
Et je navigue vers le document suivant
Et je rentre dans la collection "Parcours : Vitrail Vie de Jean le Baptiste en détail, Eglise St-Jean-Au-Marché, Troyes"
Quand je clique sur le bouton retour
Alors "Photographie : vitrail, baie 20, Eglise St-Jean-au-Marché, Troyes, Vie de Jean le Baptiste" est le document affiché à l'écran
Et "Parcours : Visite de l'Eglise St-Jean-au-Marché, Troyes" est la collection actuelle