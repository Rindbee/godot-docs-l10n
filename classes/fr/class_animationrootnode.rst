:github_url: hide

.. _class_AnimationRootNode:

AnimationRootNode
=================

**Hérite de :** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`AnimationNodeAnimation<class_AnimationNodeAnimation>`, :ref:`AnimationNodeBlendSpace1D<class_AnimationNodeBlendSpace1D>`, :ref:`AnimationNodeBlendSpace2D<class_AnimationNodeBlendSpace2D>`, :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>`, :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>`

Classe de base pour les :ref:`AnimationNode<class_AnimationNode>`\ s qui détiennent une ou plusieurs animations composites. Habituellement utilisé pour :ref:`AnimationTree.tree_root<class_AnimationTree_property_tree_root>`.

.. rst-class:: classref-introduction-group

Description
-----------

**AnimationRootNode** est une classe de base pour les :ref:`AnimationNode<class_AnimationNode>`\ s qui contiennent une animation complète. Une animation complète se réfère à la sortie d'un :ref:`AnimationNodeOutput<class_AnimationNodeOutput>` dans un :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` ou la sortie d'un autre **AnimationRootNode**. Utilisé pour :ref:`AnimationTree.tree_root<class_AnimationTree_property_tree_root>` ou dans d'autres **AnimationRootNode**\ s.

Les exemples de nœuds racine intégrés incluent :ref:`AnimationNodeBlendTree<class_AnimationNodeBlendTree>` (permet de mélanger des nœuds entre eux avec plusieurs modes), :ref:`AnimationNodeStateMachine<class_AnimationNodeStateMachine>` (permet de configurer le mélange et les transitions entre des nœuds en utilisant un automate), :ref:`AnimationNodeBlendSpace2D<class_AnimationNodeBlendSpace2D>` (permet un mélange linéaire entre **trois** :ref:`AnimationNode<class_AnimationNode>`\ s), :ref:`AnimationNodeBlendSpace1D<class_AnimationNodeBlendSpace1D>` (permet un mélange linéaire seulement entre **deux** :ref:`AnimationNode<class_AnimationNode>`\ s).

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utiliser les AnimationTree <../tutorials/animation/animation_tree>`

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
