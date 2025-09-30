:github_url: hide

.. _class_AnimationNodeSync:

AnimationNodeSync
=================

**Hérite de :** :ref:`AnimationNode<class_AnimationNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité de:** :ref:`AnimationNodeAdd2<class_AnimationNodeAdd2>`, :ref:`AnimationNodeAdd3<class_AnimationNodeAdd3>`, :ref:`AnimationNodeBlend2<class_AnimationNodeBlend2>`, :ref:`AnimationNodeBlend3<class_AnimationNodeBlend3>`, :ref:`AnimationNodeOneShot<class_AnimationNodeOneShot>`, :ref:`AnimationNodeSub2<class_AnimationNodeSub2>`, :ref:`AnimationNodeTransition<class_AnimationNodeTransition>`

Classe de base pour les :ref:`AnimationNode<class_AnimationNode>`\ s avec plusieurs ports d'entrée qui doivent être synchronisés.

.. rst-class:: classref-introduction-group

Description
-----------

Un nœud d'animation utilisé pour combiner, fusionner ou mélanger deux ou plusieurs animations tout en les gardant synchronisées dans un :ref:`AnimationTree<class_AnimationTree>`.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utiliser les AnimationTree <../tutorials/animation/animation_tree>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`sync<class_AnimationNodeSync_property_sync>` | ``false`` |
   +-------------------------+----------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_AnimationNodeSync_property_sync:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **sync** = ``false`` :ref:`🔗<class_AnimationNodeSync_property_sync>`

.. rst-class:: classref-property-setget

- |void| **set_use_sync**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_sync**\ (\ )

Si ``false``, la trame des animations mélangées est arrêtée lorsque la valeur du mélange vaut ``0``.

Si ``true``, force les animations mélangées à avancer dans les trames.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
