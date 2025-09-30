:github_url: hide

.. _class_StyleBoxTexture:

StyleBoxTexture
===============

**Hérite de :** :ref:`StyleBox<class_StyleBox>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A texture-based nine-patch :ref:`StyleBox<class_StyleBox>`.

.. rst-class:: classref-introduction-group

Description
-----------

A texture-based nine-patch :ref:`StyleBox<class_StyleBox>`, in a way similar to :ref:`NinePatchRect<class_NinePatchRect>`. This stylebox performs a 3×3 scaling of a texture, where only the center cell is fully stretched. This makes it possible to design bordered styles regardless of the stylebox's size.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` | :ref:`axis_stretch_horizontal<class_StyleBoxTexture_property_axis_stretch_horizontal>` | ``0``                 |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` | :ref:`axis_stretch_vertical<class_StyleBoxTexture_property_axis_stretch_vertical>`     | ``0``                 |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`draw_center<class_StyleBoxTexture_property_draw_center>`                         | ``true``              |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`expand_margin_bottom<class_StyleBoxTexture_property_expand_margin_bottom>`       | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`expand_margin_left<class_StyleBoxTexture_property_expand_margin_left>`           | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`expand_margin_right<class_StyleBoxTexture_property_expand_margin_right>`         | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`expand_margin_top<class_StyleBoxTexture_property_expand_margin_top>`             | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                                    | :ref:`modulate_color<class_StyleBoxTexture_property_modulate_color>`                   | ``Color(1, 1, 1, 1)`` |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Rect2<class_Rect2>`                                    | :ref:`region_rect<class_StyleBoxTexture_property_region_rect>`                         | ``Rect2(0, 0, 0, 0)`` |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>`                            | :ref:`texture<class_StyleBoxTexture_property_texture>`                                 |                       |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`texture_margin_bottom<class_StyleBoxTexture_property_texture_margin_bottom>`     | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`texture_margin_left<class_StyleBoxTexture_property_texture_margin_left>`         | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`texture_margin_right<class_StyleBoxTexture_property_texture_margin_right>`       | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                    | :ref:`texture_margin_top<class_StyleBoxTexture_property_texture_margin_top>`           | ``0.0``               |
   +--------------------------------------------------------------+----------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_expand_margin<class_StyleBoxTexture_method_get_expand_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                             |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_texture_margin<class_StyleBoxTexture_method_get_texture_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                           |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_expand_margin<class_StyleBoxTexture_method_set_expand_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )   |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_expand_margin_all<class_StyleBoxTexture_method_set_expand_margin_all>`\ (\ size\: :ref:`float<class_float>`\ )                                         |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_texture_margin<class_StyleBoxTexture_method_set_texture_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ ) |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_texture_margin_all<class_StyleBoxTexture_method_set_texture_margin_all>`\ (\ size\: :ref:`float<class_float>`\ )                                       |
   +---------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_StyleBoxTexture_AxisStretchMode:

.. rst-class:: classref-enumeration

enum **AxisStretchMode**: :ref:`🔗<enum_StyleBoxTexture_AxisStretchMode>`

.. _class_StyleBoxTexture_constant_AXIS_STRETCH_MODE_STRETCH:

.. rst-class:: classref-enumeration-constant

:ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` **AXIS_STRETCH_MODE_STRETCH** = ``0``

Étire la texture de la boîte de style. Cela entraîne une distorsion visible à moins que la taille de la texture ne corresponde parfaitement à la taille de la boîte de style.

.. _class_StyleBoxTexture_constant_AXIS_STRETCH_MODE_TILE:

.. rst-class:: classref-enumeration-constant

:ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` **AXIS_STRETCH_MODE_TILE** = ``1``

Repeats the stylebox's texture to match the stylebox's size according to the nine-patch system.

.. _class_StyleBoxTexture_constant_AXIS_STRETCH_MODE_TILE_FIT:

.. rst-class:: classref-enumeration-constant

:ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` **AXIS_STRETCH_MODE_TILE_FIT** = ``2``

Repeats the stylebox's texture to match the stylebox's size according to the nine-patch system. Unlike :ref:`AXIS_STRETCH_MODE_TILE<class_StyleBoxTexture_constant_AXIS_STRETCH_MODE_TILE>`, the texture may be slightly stretched to make the nine-patch texture tile seamlessly.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_StyleBoxTexture_property_axis_stretch_horizontal:

.. rst-class:: classref-property

:ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` **axis_stretch_horizontal** = ``0`` :ref:`🔗<class_StyleBoxTexture_property_axis_stretch_horizontal>`

.. rst-class:: classref-property-setget

- |void| **set_h_axis_stretch_mode**\ (\ value\: :ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>`\ )
- :ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` **get_h_axis_stretch_mode**\ (\ )

Controls how the stylebox's texture will be stretched or tiled horizontally.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_axis_stretch_vertical:

.. rst-class:: classref-property

:ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` **axis_stretch_vertical** = ``0`` :ref:`🔗<class_StyleBoxTexture_property_axis_stretch_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_v_axis_stretch_mode**\ (\ value\: :ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>`\ )
- :ref:`AxisStretchMode<enum_StyleBoxTexture_AxisStretchMode>` **get_v_axis_stretch_mode**\ (\ )

Controls how the stylebox's texture will be stretched or tiled vertically.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_draw_center:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draw_center** = ``true`` :ref:`🔗<class_StyleBoxTexture_property_draw_center>`

.. rst-class:: classref-property-setget

- |void| **set_draw_center**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_draw_center_enabled**\ (\ )

If ``true``, the nine-patch texture's center tile will be drawn.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_expand_margin_bottom:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_bottom** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_expand_margin_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Augmente la marge du bas de cette boite de style lors de l'affichage, pour qu'elle soit plus grande que demandé.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_expand_margin_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_left** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_expand_margin_left>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Augmente la marge gauche de cette boite de style lors de l'affichage, pour qu'elle soit plus grande que demandé.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_expand_margin_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_right** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_expand_margin_right>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Augmente la marge droite de cette boite de style lors de l'affichage, pour qu'elle soit plus grande que demandé.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_expand_margin_top:

.. rst-class:: classref-property

:ref:`float<class_float>` **expand_margin_top** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_expand_margin_top>`

.. rst-class:: classref-property-setget

- |void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Agrandit la marge supérieure de cette zone de style lors du dessin, la faisant être dessinée plus grande que demandé.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_modulate_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **modulate_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_StyleBoxTexture_property_modulate_color>`

.. rst-class:: classref-property-setget

- |void| **set_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_modulate**\ (\ )

Module la couleur de la texture lorsque cette boîte de style est dessinée.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_region_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **region_rect** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_StyleBoxTexture_property_region_rect>`

.. rst-class:: classref-property-setget

- |void| **set_region_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_region_rect**\ (\ )

The region to use from the :ref:`texture<class_StyleBoxTexture_property_texture>`.

This is equivalent to first wrapping the :ref:`texture<class_StyleBoxTexture_property_texture>` in an :ref:`AtlasTexture<class_AtlasTexture>` with the same region.

If empty (``Rect2(0, 0, 0, 0)``), the whole :ref:`texture<class_StyleBoxTexture_property_texture>` is used.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_StyleBoxTexture_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

La texture à utiliser pour l'affichage de cette boite de style.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_texture_margin_bottom:

.. rst-class:: classref-property

:ref:`float<class_float>` **texture_margin_bottom** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_texture_margin_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Augmente la marge inférieure de la boîte de texture en 3×3.

Une valeur plus élevée signifie qu'une plus grande partie de la texture source est considérée comme faisant partie de la bordure inférieure de la boîte en 3×3.

C'est aussi la valeur de repli utilisée pour :ref:`StyleBox.content_margin_bottom<class_StyleBox_property_content_margin_bottom>` si elle est négative.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_texture_margin_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **texture_margin_left** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_texture_margin_left>`

.. rst-class:: classref-property-setget

- |void| **set_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Augmente la marge gauche de la boîte de texture en 3×3.

Une valeur plus élevée signifie qu'une plus grande partie de la texture source est considérée comme faisant partie de la bordure gauche de la boîte 3×3.

C'est aussi la valeur de repli utilisée pour :ref:`StyleBox.content_margin_left<class_StyleBox_property_content_margin_left>` si elle est négative.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_texture_margin_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **texture_margin_right** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_texture_margin_right>`

.. rst-class:: classref-property-setget

- |void| **set_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Augmente la marge droite de la boîte de texture en 3×3.

Une valeur plus élevée signifie qu'une plus grande partie de la texture source est considérée comme faisant partie de la droite frontière de la boîte 3×3.

C'est aussi la valeur de repli utilisée pour :ref:`StyleBox.content_margin_right<class_StyleBox_property_content_margin_right>` si elle est négative.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_property_texture_margin_top:

.. rst-class:: classref-property

:ref:`float<class_float>` **texture_margin_top** = ``0.0`` :ref:`🔗<class_StyleBoxTexture_property_texture_margin_top>`

.. rst-class:: classref-property-setget

- |void| **set_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

Augmente la marge supérieure de la boîte de texture en 3×3.

Une valeur plus élevée signifie qu'une plus grande partie de la texture source est considérée comme faisant partie de la bordure supérieure de la boîte 3×3.

C'est aussi la valeur de repli utilisée pour :ref:`StyleBox.content_margin_top<class_StyleBox_property_content_margin_top>` si elle est négative.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_StyleBoxTexture_method_get_expand_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_StyleBoxTexture_method_get_expand_margin>`

Returns the expand margin size of the specified :ref:`Side<enum_@GlobalScope_Side>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_method_get_texture_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_StyleBoxTexture_method_get_texture_margin>`

Returns the margin size of the specified :ref:`Side<enum_@GlobalScope_Side>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_method_set_expand_margin:

.. rst-class:: classref-method

|void| **set_expand_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBoxTexture_method_set_expand_margin>`

Sets the expand margin to ``size`` pixels for the specified :ref:`Side<enum_@GlobalScope_Side>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_method_set_expand_margin_all:

.. rst-class:: classref-method

|void| **set_expand_margin_all**\ (\ size\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBoxTexture_method_set_expand_margin_all>`

Sets the expand margin to ``size`` pixels for all sides.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_method_set_texture_margin:

.. rst-class:: classref-method

|void| **set_texture_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, size\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBoxTexture_method_set_texture_margin>`

Sets the margin to ``size`` pixels for the specified :ref:`Side<enum_@GlobalScope_Side>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBoxTexture_method_set_texture_margin_all:

.. rst-class:: classref-method

|void| **set_texture_margin_all**\ (\ size\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBoxTexture_method_set_texture_margin_all>`

Sets the margin to ``size`` pixels for all sides.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
