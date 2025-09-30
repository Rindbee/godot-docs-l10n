:github_url: hide

.. _class_AnimationNodeSub2:

AnimationNodeSub2
=================

**Hérite de :** :ref:`AnimationNodeSync<class_AnimationNodeSync>` **<** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Mélange deux animations de manière soustractive à l'intérieur d'un :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`.

.. rst-class:: classref-introduction-group

Description
-----------

Une ressource à ajouter à un :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`. Mélange deux animations de manière soustractive selon un montant donné.

Ce nœud d'animation est généralement utilisé pour des pré-calculs pour annuler toute pose supplémentaire de l'animation pour la source d'animation "add" dans :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>` ou :ref:`AnimationNodeAdd3<class_AnimationNodeAdd3>`.

En général, la valeur de mélange devrait être dans l'intervalle ``[0.0, 1.0]``, mais les valeurs en dehors de cette plage peuvent être utilisées pour des animations amplifiées ou inversées.

\ **Note :** Ce calcul est différent de l'utilisation d'une valeur négative dans :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>`, puisque les matrices de transformation ne satisfont pas la loi commutative. **AnimationNodeSub2** multiplie la matrice de transformation de l'animation inversée du côté gauche, tandis qu'un :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>` négatif la multiplie du côté droit.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`AnimationTree <../tutorials/animation/animation_tree>`

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
