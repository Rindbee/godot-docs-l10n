:github_url: hide

.. _class_FBXDocument:

FBXDocument
===========

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`GLTFDocument<class_GLTFDocument>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Gère les documents FBX.

.. rst-class:: classref-introduction-group

Description
-----------

Le FBXDocument gère les documents FBX. Il fournit des méthodes pour ajouter des données à partir de buffers ou de fichiers, générer des scènes et enregistrer/dés-enregistrer des extensions de document.

Lorsque vous exportez un FBX de Blender, utilisez l'option "Échelle d'unité FBX". L'option "Échelle d'unité FBX" définit le facteur d'échelle correct et évite les ajustements manuels lors de la réimportation dans Blender, comme lors de l'export en glTF.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
