:github_url: hide

.. _class_ProgressBar:

ProgressBar
===========

**Hérite de :** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un contrôle utilisé pour représenter visuellement un pourcentage.

.. rst-class:: classref-introduction-group

Description
-----------

Un contrôle utilisé pour représenter visuellement un pourcentage. Affiche le pourcentage de remplissage au centre. Peut également être utilisé pour afficher une progression indéterminée. Pour plus de modes de remplissage, utilisez :ref:`TextureProgressBar<class_TextureProgressBar>` à la place.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`editor_preview_indeterminate<class_ProgressBar_property_editor_preview_indeterminate>` |           |
   +-------------------------+----------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`   | :ref:`fill_mode<class_ProgressBar_property_fill_mode>`                                       | ``0``     |
   +-------------------------+----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`indeterminate<class_ProgressBar_property_indeterminate>`                               | ``false`` |
   +-------------------------+----------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`show_percentage<class_ProgressBar_property_show_percentage>`                           | ``true``  |
   +-------------------------+----------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Propriétés du thème
--------------------------------------

.. table::
   :widths: auto

   +---------------------------------+-----------------------------------------------------------------------------+--------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_color<class_ProgressBar_theme_color_font_color>`                 | ``Color(0.95, 0.95, 0.95, 1)`` |
   +---------------------------------+-----------------------------------------------------------------------------+--------------------------------+
   | :ref:`Color<class_Color>`       | :ref:`font_outline_color<class_ProgressBar_theme_color_font_outline_color>` | ``Color(0, 0, 0, 1)``          |
   +---------------------------------+-----------------------------------------------------------------------------+--------------------------------+
   | :ref:`int<class_int>`           | :ref:`outline_size<class_ProgressBar_theme_constant_outline_size>`          | ``0``                          |
   +---------------------------------+-----------------------------------------------------------------------------+--------------------------------+
   | :ref:`Font<class_Font>`         | :ref:`font<class_ProgressBar_theme_font_font>`                              |                                |
   +---------------------------------+-----------------------------------------------------------------------------+--------------------------------+
   | :ref:`int<class_int>`           | :ref:`font_size<class_ProgressBar_theme_font_size_font_size>`               |                                |
   +---------------------------------+-----------------------------------------------------------------------------+--------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`background<class_ProgressBar_theme_style_background>`                 |                                |
   +---------------------------------+-----------------------------------------------------------------------------+--------------------------------+
   | :ref:`StyleBox<class_StyleBox>` | :ref:`fill<class_ProgressBar_theme_style_fill>`                             |                                |
   +---------------------------------+-----------------------------------------------------------------------------+--------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_ProgressBar_FillMode:

.. rst-class:: classref-enumeration

enum **FillMode**: :ref:`🔗<enum_ProgressBar_FillMode>`

.. _class_ProgressBar_constant_FILL_BEGIN_TO_END:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_ProgressBar_FillMode>` **FILL_BEGIN_TO_END** = ``0``

La barre de progression se remplit du début à la fin horizontalement, selon la direction de la langue. Si :ref:`Control.is_layout_rtl()<class_Control_method_is_layout_rtl>` renvoie ``false``, elle se remplit de gauche à droite et s'il renvoie ``true``, elle se remplit de droite à gauche.

.. _class_ProgressBar_constant_FILL_END_TO_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_ProgressBar_FillMode>` **FILL_END_TO_BEGIN** = ``1``

La barre de progression se remplit de la fin au début horizontalement, selon la direction de la langue. Si :ref:`Control.is_layout_rtl()<class_Control_method_is_layout_rtl>` renvoie ``false``, elle se remplit de droite à gauche et s'il renvoie ``true``, elle se remplit de gauche à droite.

.. _class_ProgressBar_constant_FILL_TOP_TO_BOTTOM:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_ProgressBar_FillMode>` **FILL_TOP_TO_BOTTOM** = ``2``

La barre de progression se remplit de haut en bas.

.. _class_ProgressBar_constant_FILL_BOTTOM_TO_TOP:

.. rst-class:: classref-enumeration-constant

:ref:`FillMode<enum_ProgressBar_FillMode>` **FILL_BOTTOM_TO_TOP** = ``3``

La barre de progression se remplit de bas en haut.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ProgressBar_property_editor_preview_indeterminate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor_preview_indeterminate** :ref:`🔗<class_ProgressBar_property_editor_preview_indeterminate>`

.. rst-class:: classref-property-setget

- |void| **set_editor_preview_indeterminate**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editor_preview_indeterminate_enabled**\ (\ )

Si ``false``, l'animation :ref:`indeterminate<class_ProgressBar_property_indeterminate>` sera mise en pause dans l'éditeur.

.. rst-class:: classref-item-separator

----

.. _class_ProgressBar_property_fill_mode:

.. rst-class:: classref-property

:ref:`int<class_int>` **fill_mode** = ``0`` :ref:`🔗<class_ProgressBar_property_fill_mode>`

.. rst-class:: classref-property-setget

- |void| **set_fill_mode**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fill_mode**\ (\ )

La direction de remplissage. Voir :ref:`FillMode<enum_ProgressBar_FillMode>` pour les valeurs possibles.

.. rst-class:: classref-item-separator

----

.. _class_ProgressBar_property_indeterminate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **indeterminate** = ``false`` :ref:`🔗<class_ProgressBar_property_indeterminate>`

.. rst-class:: classref-property-setget

- |void| **set_indeterminate**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_indeterminate**\ (\ )

Lorsque défini à ``true``, la barre de progression indique que quelque chose se passe avec une animation, mais ne montre pas le pourcentage ou la valeur du remplissage.

.. rst-class:: classref-item-separator

----

.. _class_ProgressBar_property_show_percentage:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **show_percentage** = ``true`` :ref:`🔗<class_ProgressBar_property_show_percentage>`

.. rst-class:: classref-property-setget

- |void| **set_show_percentage**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_percentage_shown**\ (\ )

Si ``true``, le pourcentage de progression (de remplissage) est affiché dans la barre.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés du thème
------------------------------------------------------------------------

.. _class_ProgressBar_theme_color_font_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_color** = ``Color(0.95, 0.95, 0.95, 1)`` :ref:`🔗<class_ProgressBar_theme_color_font_color>`

La couleur du texte.

.. rst-class:: classref-item-separator

----

.. _class_ProgressBar_theme_color_font_outline_color:

.. rst-class:: classref-themeproperty

:ref:`Color<class_Color>` **font_outline_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_ProgressBar_theme_color_font_outline_color>`

La teinte du contour du texte de la **ProgressBar**.

.. rst-class:: classref-item-separator

----

.. _class_ProgressBar_theme_constant_outline_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **outline_size** = ``0`` :ref:`🔗<class_ProgressBar_theme_constant_outline_size>`

La taille du contour du texte.

\ **Note :** Si vous utilisez une police avec :ref:`FontFile.multichannel_signed_distance_field<class_FontFile_property_multichannel_signed_distance_field>` activé, sa propriété :ref:`FontFile.msdf_pixel_range<class_FontFile_property_msdf_pixel_range>` doit être définie à au moins *deux fois* la valeur de :ref:`outline_size<class_ProgressBar_theme_constant_outline_size>` pour que le rendu des contours soit correct. Sinon, le contour peut sembler coupé plus tôt que prévu.

.. rst-class:: classref-item-separator

----

.. _class_ProgressBar_theme_font_font:

.. rst-class:: classref-themeproperty

:ref:`Font<class_Font>` **font** :ref:`🔗<class_ProgressBar_theme_font_font>`

Police utilisée pour afficher le pourcentage de remplissage si :ref:`show_percentage<class_ProgressBar_property_show_percentage>` vaut ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ProgressBar_theme_font_size_font_size:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **font_size** :ref:`🔗<class_ProgressBar_theme_font_size_font_size>`

Taille de police utilisée pour afficher le pourcentage de remplissage si :ref:`show_percentage<class_ProgressBar_property_show_percentage>` vaut ``true``.

.. rst-class:: classref-item-separator

----

.. _class_ProgressBar_theme_style_background:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **background** :ref:`🔗<class_ProgressBar_theme_style_background>`

Le style de l’arrière-plan.

.. rst-class:: classref-item-separator

----

.. _class_ProgressBar_theme_style_fill:

.. rst-class:: classref-themeproperty

:ref:`StyleBox<class_StyleBox>` **fill** :ref:`🔗<class_ProgressBar_theme_style_fill>`

Le style de progression (c'est-à-dire la partie qui remplis la barre).

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
