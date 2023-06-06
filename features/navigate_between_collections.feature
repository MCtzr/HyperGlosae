#language: fr

Fonctionalité: Naviguer entre les collectons 

Scénario:
    Soit "Photographie : vitrail, baie 20, Eglise St-Jean-au-Marché, Troyes, Vie de Jean le Baptiste" le document principal
    Et "Parcours : Vitrail Vie de Jean le Baptiste en détail, Eglise St-Jean-Au-Marché, Troyes" le parcours actuel
    Et "Parcours : Visite de l'Eglise St-Jean-au-Marché, Troyes" le parcours dans lequel est présent notre document principal
    Quand je navigue vers le parcours "Parcours : Visite de l'Eglise St-Jean-au-Marché, Troyes"
    Alors "Parcours : Visite de l'Eglise St-Jean-au-Marché, Troyes" est le parcours actuel
    Et "Photographie : vitrail, baie 20, Eglise St-Jean-au-Marché, Troyes, Vie de Jean le Baptiste" est le document principal
