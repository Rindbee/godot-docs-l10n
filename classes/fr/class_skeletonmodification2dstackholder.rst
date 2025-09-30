:github_url: hide

.. _class_SkeletonModification2DStackHolder:

SkeletonModification2DStackHolder
=================================

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`SkeletonModification2D<class_SkeletonModification2D>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une modification qui tient et exécute une :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`.

.. rst-class:: classref-introduction-group

Description
-----------

Ce :ref:`SkeletonModification2D<class_SkeletonModification2D>` tient une référence à une :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`, vous permettant d'utiliser plusieurs piles de modification sur un seul :ref:`Skeleton2D<class_Skeleton2D>`.

\ **Note :** Les modifications dans la :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` contenue ne seront exécutées que si leur mode d'exécution correspond au mode d'exécution du SkeletonModification2DStackHolder.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` | :ref:`get_held_modification_stack<class_SkeletonModification2DStackHolder_method_get_held_modification_stack>`\ (\ ) |const|                                                                                          |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                | :ref:`set_held_modification_stack<class_SkeletonModification2DStackHolder_method_set_held_modification_stack>`\ (\ held_modification_stack\: :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ ) |
   +-----------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_SkeletonModification2DStackHolder_method_get_held_modification_stack:

.. rst-class:: classref-method

:ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` **get_held_modification_stack**\ (\ ) |const| :ref:`🔗<class_SkeletonModification2DStackHolder_method_get_held_modification_stack>`

Renvoie la :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` que cette modification tient.

.. rst-class:: classref-item-separator

----

.. _class_SkeletonModification2DStackHolder_method_set_held_modification_stack:

.. rst-class:: classref-method

|void| **set_held_modification_stack**\ (\ held_modification_stack\: :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>`\ ) :ref:`🔗<class_SkeletonModification2DStackHolder_method_set_held_modification_stack>`

Sets the :ref:`SkeletonModificationStack2D<class_SkeletonModificationStack2D>` that this modification is holding. This modification stack will then be executed when this modification is executed.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
