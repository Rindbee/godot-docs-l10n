:github_url: hide

.. _class_CenterContainer:

CenterContainer
===============

**Hérite de :** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un conteneur qui maintient les contrôles enfants en son centre.

.. rst-class:: classref-introduction-group

Description
-----------

**CenterContainer** est un conteneur qui garde tous ses contrôles enfants en son centre à leur taille minimale.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Utilisation des conteneurs <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`use_top_left<class_CenterContainer_property_use_top_left>` | ``false`` |
   +-------------------------+------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_CenterContainer_property_use_top_left:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **use_top_left** = ``false`` :ref:`🔗<class_CenterContainer_property_use_top_left>`

.. rst-class:: classref-property-setget

- |void| **set_use_top_left**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_using_top_left**\ (\ )

Si ``true``, centre les enfants par rapport au coin supérieur gauche du **CenterContainer**).

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
