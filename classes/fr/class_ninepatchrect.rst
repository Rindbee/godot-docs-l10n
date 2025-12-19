:github_url: hide

.. _class_NinePatchRect:

NinePatchRect
=============

**Hérite de :** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un contrôle qui affiche une texture en gardant ses angles intacts, mais en répétant ses bords et son centre.

.. rst-class:: classref-introduction-group

Description
-----------

Aussi connu sous le nom de panneaux à 9 tranches (9-slice panels), **NinePatchRect** produit des panneaux propres de toute taille en fonction d'une petite texture. Pour ce faire, il divise la texture en une grille de 3×3. Lorsque vous redimensionnez le nœud, il répète les bords de la texture horizontalement ou verticalement, répète le centre sur les deux axes, et laisse les coins inchangés.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` | :ref:`axis_stretch_horizontal<class_NinePatchRect_property_axis_stretch_horizontal>` | ``0``                                                                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` | :ref:`axis_stretch_vertical<class_NinePatchRect_property_axis_stretch_vertical>`     | ``0``                                                                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                    | :ref:`draw_center<class_NinePatchRect_property_draw_center>`                         | ``true``                                                              |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`MouseFilter<enum_Control_MouseFilter>`               | mouse_filter                                                                         | ``2`` (overrides :ref:`Control<class_Control_property_mouse_filter>`) |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`int<class_int>`                                      | :ref:`patch_margin_bottom<class_NinePatchRect_property_patch_margin_bottom>`         | ``0``                                                                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`int<class_int>`                                      | :ref:`patch_margin_left<class_NinePatchRect_property_patch_margin_left>`             | ``0``                                                                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`int<class_int>`                                      | :ref:`patch_margin_right<class_NinePatchRect_property_patch_margin_right>`           | ``0``                                                                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`int<class_int>`                                      | :ref:`patch_margin_top<class_NinePatchRect_property_patch_margin_top>`               | ``0``                                                                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                                  | :ref:`region_rect<class_NinePatchRect_property_region_rect>`                         | ``Rect2(0, 0, 0, 0)``                                                 |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
   | :ref:`Texture2D<class_Texture2D>`                          | :ref:`texture<class_NinePatchRect_property_texture>`                                 |                                                                       |
   +------------------------------------------------------------+--------------------------------------------------------------------------------------+-----------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_patch_margin<class_NinePatchRect_method_get_patch_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                        |
   +-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                | :ref:`set_patch_margin<class_NinePatchRect_method_set_patch_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ ) |
   +-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signaux
--------------

.. _class_NinePatchRect_signal_texture_changed:

.. rst-class:: classref-signal

**texture_changed**\ (\ ) :ref:`🔗<class_NinePatchRect_signal_texture_changed>`

Émis quand la texture d'un nœud change.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_NinePatchRect_AxisStretchMode:

.. rst-class:: classref-enumeration

enum **AxisStretchMode**: :ref:`🔗<enum_NinePatchRect_AxisStretchMode>`

.. _class_NinePatchRect_constant_AXIS_STRETCH_MODE_STRETCH:

.. rst-class:: classref-enumeration-constant

:ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` **AXIS_STRETCH_MODE_STRETCH** = ``0``

Étire la texture du centre sur tout le NinePatchRect. Cela peut entraîner une distorsion de cette texture.

.. _class_NinePatchRect_constant_AXIS_STRETCH_MODE_TILE:

.. rst-class:: classref-enumeration-constant

:ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` **AXIS_STRETCH_MODE_TILE** = ``1``

Répète la texture du centre sur tout le NinePatchRect. Cela ne provoque aucune distorsion visible. La texture doit être sans raccord pour que cela fonctionne sans afficher d'artefacts entre les bords.

.. _class_NinePatchRect_constant_AXIS_STRETCH_MODE_TILE_FIT:

.. rst-class:: classref-enumeration-constant

:ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` **AXIS_STRETCH_MODE_TILE_FIT** = ``2``

Répète la texture centrale sur tout le NinePatchRect, mais étirera également la texture pour s'assurer que chaque tuile est visible entièrement. Cela peut causer une distorsion de la texture, mais moins que :ref:`AXIS_STRETCH_MODE_STRETCH<class_NinePatchRect_constant_AXIS_STRETCH_MODE_STRETCH>`. La texture doit être sans raccord pour que cela fonctionne sans afficher d'artefacts entre les bords.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_NinePatchRect_property_axis_stretch_horizontal:

.. rst-class:: classref-property

:ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` **axis_stretch_horizontal** = ``0`` :ref:`🔗<class_NinePatchRect_property_axis_stretch_horizontal>`

.. rst-class:: classref-property-setget

- |void| **set_h_axis_stretch_mode**\ (\ value\: :ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>`\ )
- :ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` **get_h_axis_stretch_mode**\ (\ )

Le mode d'étirement à utiliser pour l'étirement ou la répétition horizontale.

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_axis_stretch_vertical:

.. rst-class:: classref-property

:ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` **axis_stretch_vertical** = ``0`` :ref:`🔗<class_NinePatchRect_property_axis_stretch_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_v_axis_stretch_mode**\ (\ value\: :ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>`\ )
- :ref:`AxisStretchMode<enum_NinePatchRect_AxisStretchMode>` **get_v_axis_stretch_mode**\ (\ )

Le mode d'étirement à utiliser pour l'étirement ou la répétition verticale.

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_draw_center:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **draw_center** = ``true`` :ref:`🔗<class_NinePatchRect_property_draw_center>`

.. rst-class:: classref-property-setget

- |void| **set_draw_center**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_draw_center_enabled**\ (\ )

Si ``true``, dessine le centre du panneau. Sinon, ne dessine que les bordures des 9 parties.

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_patch_margin_bottom:

.. rst-class:: classref-property

:ref:`int<class_int>` **patch_margin_bottom** = ``0`` :ref:`🔗<class_NinePatchRect_property_patch_margin_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

La hauteur de la ligne du bas des 9 parties. Une marge de 16 signifie que les angles du bas des 9 parties et les côtés auront une hauteur de 16 pixels. Vous pouvez définir les 4 valeurs de marge individuellement pour créer des panneaux avec des bordures non uniformes.

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_patch_margin_left:

.. rst-class:: classref-property

:ref:`int<class_int>` **patch_margin_left** = ``0`` :ref:`🔗<class_NinePatchRect_property_patch_margin_left>`

.. rst-class:: classref-property-setget

- |void| **set_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

La largeur de la colonne gauche des 9 parties. Une marge de 16 signifie que les angles de gauche des 9 parties et les côtés auront une largeur de 16 pixels. Vous pouvez définir les 4 valeurs de marge individuellement pour créer des panneaux avec des bordures non uniformes.

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_patch_margin_right:

.. rst-class:: classref-property

:ref:`int<class_int>` **patch_margin_right** = ``0`` :ref:`🔗<class_NinePatchRect_property_patch_margin_right>`

.. rst-class:: classref-property-setget

- |void| **set_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

La largeur de la colonne droite de 9 parties. Une marge de 16 signifie que les angles de droite des 9 parties et le côté auront une largeur de 16 pixels. Vous pouvez définir les 4 valeurs de marge individuellement pour créer des panneaux avec des bordures non uniformes.

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_patch_margin_top:

.. rst-class:: classref-property

:ref:`int<class_int>` **patch_margin_top** = ``0`` :ref:`🔗<class_NinePatchRect_property_patch_margin_top>`

.. rst-class:: classref-property-setget

- |void| **set_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

La hauteur de la ligne du haut de 9 parties. Une marge de 16 signifie que les angles du haut des 9 parties et le côté auront une hauteur de 16 pixels. Vous pouvez définir les 4 valeurs de marge individuellement pour créer des panneaux avec des bordures non uniformes.

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_region_rect:

.. rst-class:: classref-property

:ref:`Rect2<class_Rect2>` **region_rect** = ``Rect2(0, 0, 0, 0)`` :ref:`🔗<class_NinePatchRect_property_region_rect>`

.. rst-class:: classref-property-setget

- |void| **set_region_rect**\ (\ value\: :ref:`Rect2<class_Rect2>`\ )
- :ref:`Rect2<class_Rect2>` **get_region_rect**\ (\ )

La région rectangulaire de la texture à utiliser. Si vous travaillez avec un atlas, utilisez cette propriété pour définir la zone à utiliser. Toutes les autres propriétés sont par rapport à celle-ci. Si le rectangle est vide, le NinePatchRect utilisera la texture dans son entièreté.

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_NinePatchRect_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

La ressource de texture du nœud.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_NinePatchRect_method_get_patch_margin:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_NinePatchRect_method_get_patch_margin>`

Renvoie la taille de la marge sur le côté :ref:`Side<enum_@GlobalScope_Side>` spécifié.

.. rst-class:: classref-item-separator

----

.. _class_NinePatchRect_method_set_patch_margin:

.. rst-class:: classref-method

|void| **set_patch_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, value\: :ref:`int<class_int>`\ ) :ref:`🔗<class_NinePatchRect_method_set_patch_margin>`

Définit la taille de la marge sur le côté :ref:`Side<enum_@GlobalScope_Side>` spécifié à ``value`` pixels.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
