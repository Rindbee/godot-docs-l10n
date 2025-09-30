:github_url: hide

.. _class_CSGCombiner3D:

CSGCombiner3D
=============

**Hérite de :** :ref:`CSGShape3D<class_CSGShape3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un nœud CSG qui permet de combiner plusieurs modificateurs CSG.

.. rst-class:: classref-introduction-group

Description
-----------

Pour des arrangements complexes de formes, il est parfois nécessaire d'ajouter une structure à vos nœuds CSG. Le nœud CSGCombiner3D vous permet de créer cette structure. Le nœud encapsule le résultat des opérations CSG de ses enfants. De cette façon, il est possible de faire des opérations sur un ensemble de formes qui sont enfants d'un nœud CSGCombiner3D, et un ensemble d'opérations séparées sur un deuxième ensemble de formes qui sont enfants d'un deuxième noeud CSGCombiner3D, et ensuite faire une opération qui prend les deux résultats finaux comme entrée pour créer la forme finale.

\ **Note : ** Les nœuds CSG sont destinés à être utilisés pour le prototypage de niveau. Créer des nœuds CSG a un coût CPU important comparé à la création d'un :ref:`MeshInstance3D<class_MeshInstance3D>` avec un :ref:`PrimitiveMesh<class_PrimitiveMesh>`. Déplacer un nœud CSG dans un autre nœud CSG a également un coût CPU important, ceci devrait donc être évité pendant le gameplay.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Prototyper des niveaux avec CSG <../tutorials/3d/csg_tools>`

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
