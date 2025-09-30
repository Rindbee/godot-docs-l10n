:github_url: hide

.. _class_StyleBoxLine:

StyleBoxLine
============

**Hérite de :** :ref:`StyleBox<class_StyleBox>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A :ref:`StyleBox<class_StyleBox>` that displays a single line of a given color and thickness.

.. rst-class:: classref-introduction-group

Description
-----------

A :ref:`StyleBox<class_StyleBox>` that displays a single line of a given color and thickness. The line can be either horizontal or vertical. Useful for separators.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>` | :ref:`color<class_StyleBoxLine_property_color>`           | ``Color(0, 0, 0, 1)`` |
   +---------------------------+-----------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>` | :ref:`grow_begin<class_StyleBoxLine_property_grow_begin>` | ``1.0``               |
   +---------------------------+-----------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>` | :ref:`grow_end<class_StyleBoxLine_property_grow_end>`     | ``1.0``               |
   +---------------------------+-----------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`     | :ref:`thickness<class_StyleBoxLine_property_thickness>`   | ``1``                 |
   +---------------------------+-----------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`   | :ref:`vertical<class_StyleBoxLine_property_vertical>`     | ``false``             |
   +---------------------------+-----------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_StyleBoxLine_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_StyleBoxLine_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

La couleur de la ligne.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxLine_property_grow_begin:

.. rst-class:: classref-property

:ref:`float<class_float>` **grow_begin** = ``1.0`` :ref:`🔗<class_StyleBoxLine_property_grow_begin>`

.. rst-class:: classref-property-setget

- |void| **set_grow_begin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_grow_begin**\ (\ )

The number of pixels the line will extend before the **StyleBoxLine**'s bounds. If set to a negative value, the line will begin inside the **StyleBoxLine**'s bounds.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxLine_property_grow_end:

.. rst-class:: classref-property

:ref:`float<class_float>` **grow_end** = ``1.0`` :ref:`🔗<class_StyleBoxLine_property_grow_end>`

.. rst-class:: classref-property-setget

- |void| **set_grow_end**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_grow_end**\ (\ )

The number of pixels the line will extend past the **StyleBoxLine**'s bounds. If set to a negative value, the line will end inside the **StyleBoxLine**'s bounds.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxLine_property_thickness:

.. rst-class:: classref-property

:ref:`int<class_int>` **thickness** = ``1`` :ref:`🔗<class_StyleBoxLine_property_thickness>`

.. rst-class:: classref-property-setget

- |void| **set_thickness**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_thickness**\ (\ )

L'épaisseur de la ligne en pixels.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxLine_property_vertical:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vertical** = ``false`` :ref:`🔗<class_StyleBoxLine_property_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_vertical**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_vertical**\ (\ )

Si \ ``true``, la ligne sera verticale. Si ``false``, elle sera horizontale.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
