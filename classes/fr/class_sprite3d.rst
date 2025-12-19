:github_url: hide

.. _class_Sprite3D:

Sprite3D
========

**Hérite de :** :ref:`SpriteBase3D<class_SpriteBase3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Nœud de sprite en 2D dans un monde en 3D.

.. rst-class:: classref-introduction-group

Description
-----------

A node that displays a 2D texture in a 3D environment. The texture displayed can be a region from a larger atlas texture, or a frame from a sprite sheet animation. See also :ref:`SpriteBase3D<class_SpriteBase3D>` where properties such as the billboard mode are defined.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`frame<class_Sprite3D_property_frame>`                   | ``0``                 |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`Vector2i<class_Vector2i>`   | :ref:`frame_coords<class_Sprite3D_property_frame_coords>`     | ``Vector2i(0, 0)``    |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`hframes<class_Sprite3D_property_hframes>`               | ``1``                 |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`           | :ref:`region_enabled<class_Sprite3D_property_region_enabled>` | ``false``             |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`Rect2<class_Rect2>`         | :ref:`region_rect<class_Sprite3D_property_region_rect>`       | ``Rect2(0, 0, 0, 0)`` |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>` | :ref:`texture<class_Sprite3D_property_texture>`               |                       |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`             | :ref:`vframes<class_Sprite3D_property_vframes>`               | ``1``                 |
   +-----------------------------------+---------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_Sprite3D_signal_frame_changed:

.. rst-class:: classref-signal

**frame_changed**\ (\ ) :ref:`🔗<class_Sprite3D_signal_frame_changed>`

Émis quand une :ref:`frame<class_Sprite3D_property_frame>` changes.

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_signal_texture_changed:

.. rst-class:: classref-signal

**texture_changed**\ (\ ) :ref:`🔗<class_Sprite3D_signal_texture_changed>`

Émis quand une :ref:`texture<class_Sprite3D_property_texture>` change.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Sprite3D_property_frame:

.. rst-class:: classref-property

:ref:`int<class_int>` **frame** = ``0`` :ref:`🔗<class_Sprite3D_property_frame>`

.. rst-class:: classref-property-setget

- |void| **set_frame**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_frame**\ (\ )

Trame actuelle à afficher à partir de la feuille de sprite. :ref:`hframes<class_Sprite3D_property_hframes>` ou :ref:`vframes<class_Sprite3D_property_vframes>` doivent être supérieurs à 1. Cette propriété est automatiquement rajustée lorsque :ref:`hframes<class_Sprite3D_property_hframes>` ou :ref:`vframes<class_Sprite3D_property_vframes>` sont modifiés pour garder le pointage sur la même trame visuelle (même colonne et rangée). Si c'est impossible, cette valeur est réinitialisée à ``0``.

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_property_frame_coords:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **frame_coords** = ``Vector2i(0, 0)`` :ref:`🔗<class_Sprite3D_property_frame_coords>`

.. rst-class:: classref-property-setget

- |void| **set_frame_coords**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_frame_coords**\ (\ )

Les coordonnées de la trame à afficher de la feuille de sprite. Il s'agit d'un raccourci de la propriété :ref:`frame<class_Sprite3D_property_frame>`. :ref:`hframes<class_Sprite3D_property_hframes>` ou :ref:`vframes<class_Sprite3D_property_vframes>` doivent être supérieurs à 1.

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_property_hframes:

.. rst-class:: classref-property

:ref:`int<class_int>` **hframes** = ``1`` :ref:`🔗<class_Sprite3D_property_hframes>`

.. rst-class:: classref-property-setget

- |void| **set_hframes**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_hframes**\ (\ )

The number of columns in the sprite sheet. When this property is changed, :ref:`frame<class_Sprite3D_property_frame>` is adjusted so that the same visual frame is maintained (same row and column). If that's impossible, :ref:`frame<class_Sprite3D_property_frame>` is reset to ``0``.

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_property_region_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **region_enabled** = ``false`` :ref:`🔗<class_Sprite3D_property_region_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_region_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_region_enabled**\ (\ )

Si ``true``, le sprite utilisera :ref:`region_rect<class_Sprite3D_property_region_rect>` et n'affichera que la partie spécifiée de sa texture.

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_property_region_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **region_rect** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_Sprite3D_property_region_rect>`

.. rst-class:: classref-property-setget

- |void| **set_region_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_region_rect**\ (\ )

La région de la texture atlas à afficher. :ref:`region_enabled<class_Sprite3D_property_region_enabled>` doit être ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_Sprite3D_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

L'objet :ref:`Texture2D<class_Texture2D>` à dessiner. Si :ref:`GeometryInstance3D.material_override<class_GeometryInstance3D_property_material_override>` est utilisé, cela sera redéfini. L'information de la taille est toujours utilisée.

.. rst-class:: classref-item-separator

----

.. _class_Sprite3D_property_vframes:

.. rst-class:: classref-property

:ref:`int<class_int>` **vframes** = ``1`` :ref:`🔗<class_Sprite3D_property_vframes>`

.. rst-class:: classref-property-setget

- |void| **set_vframes**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_vframes**\ (\ )

The number of rows in the sprite sheet. When this property is changed, :ref:`frame<class_Sprite3D_property_frame>` is adjusted so that the same visual frame is maintained (same row and column). If that's impossible, :ref:`frame<class_Sprite3D_property_frame>` is reset to ``0``.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
