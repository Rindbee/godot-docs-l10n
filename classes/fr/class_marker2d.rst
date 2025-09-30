:github_url: hide

.. _class_Marker2D:

Marker2D
========

**Hérite de :** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un marqueur dans l'éditeur pour une position 2D quelconque.

.. rst-class:: classref-introduction-group

Description
-----------

Generic 2D position hint for editing. It's just like a plain :ref:`Node2D<class_Node2D>`, but it displays as a cross in the 2D editor at all times. You can set the cross' visual size by using the gizmo in the 2D editor while the node is selected.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`gizmo_extents<class_Marker2D_property_gizmo_extents>` | ``10.0`` |
   +---------------------------+-------------------------------------------------------------+----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Marker2D_property_gizmo_extents:

.. rst-class:: classref-property

:ref:`float<class_float>` **gizmo_extents** = ``10.0`` :ref:`🔗<class_Marker2D_property_gizmo_extents>`

.. rst-class:: classref-property-setget

- |void| **set_gizmo_extents**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_gizmo_extents**\ (\ )

Size of the gizmo cross that appears in the editor.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
