:github_url: hide

.. _class_PlaceholderCubemapArray:

PlaceholderCubemapArray
=======================

**Hérite de :** :ref:`PlaceholderTextureLayered<class_PlaceholderTextureLayered>` **<** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un :ref:`CubemapArray<class_CubemapArray>` sans données d'image.

.. rst-class:: classref-introduction-group

Description
-----------

Cette classe remplace une classe :ref:`CubemapArray<class_CubemapArray>` ou une classe dérivée de :ref:`CubemapArray<class_CubemapArray>` dans 2 cas :

- En mode serveur dédié, où les données d'image ne devraient pas affecter la logique du jeu. Cela permet de réduire considérablement la taille du PCK exporté.

- Lorsque la classe dérivée de :ref:`CubemapArray<class_CubemapArray>` est manquante, par exemple en utilisant une autre version du moteur.

\ **Note :** Cette classe n'est pas destinée au rendu ou à l'utilisation dans les shaders. Les opérations comme le calcul des UV ne sont pas garanties de fonctionner.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
