:github_url: hide

.. _class_Light2D:

Light2D
=======

**Hérite de :** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`DirectionalLight2D<class_DirectionalLight2D>`, :ref:`PointLight2D<class_PointLight2D>`

Projette de la lumière dans un environnement 2D.

.. rst-class:: classref-introduction-group

Description
-----------

Projette de la lumière dans un environnement 2D. Une lumière est définie avec une couleur, une valeur d'énergie, un mode (voir les constantes), et divers autres paramètres (concernant la portée et les ombres).

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Les lumières et ombres 2D <../tutorials/2d/2d_lights_and_shadows>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`BlendMode<enum_Light2D_BlendMode>`       | :ref:`blend_mode<class_Light2D_property_blend_mode>`                       | ``0``                 |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                      | :ref:`color<class_Light2D_property_color>`                                 | ``Color(1, 1, 1, 1)`` |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                        | :ref:`editor_only<class_Light2D_property_editor_only>`                     | ``false``             |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                        | :ref:`enabled<class_Light2D_property_enabled>`                             | ``true``              |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                      | :ref:`energy<class_Light2D_property_energy>`                               | ``1.0``               |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                          | :ref:`range_item_cull_mask<class_Light2D_property_range_item_cull_mask>`   | ``1``                 |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                          | :ref:`range_layer_max<class_Light2D_property_range_layer_max>`             | ``0``                 |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                          | :ref:`range_layer_min<class_Light2D_property_range_layer_min>`             | ``0``                 |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                          | :ref:`range_z_max<class_Light2D_property_range_z_max>`                     | ``1024``              |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                          | :ref:`range_z_min<class_Light2D_property_range_z_min>`                     | ``-1024``             |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                      | :ref:`shadow_color<class_Light2D_property_shadow_color>`                   | ``Color(0, 0, 0, 0)`` |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                        | :ref:`shadow_enabled<class_Light2D_property_shadow_enabled>`               | ``false``             |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`ShadowFilter<enum_Light2D_ShadowFilter>` | :ref:`shadow_filter<class_Light2D_property_shadow_filter>`                 | ``0``                 |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                      | :ref:`shadow_filter_smooth<class_Light2D_property_shadow_filter_smooth>`   | ``0.0``               |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                          | :ref:`shadow_item_cull_mask<class_Light2D_property_shadow_item_cull_mask>` | ``1``                 |
   +------------------------------------------------+----------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_height<class_Light2D_method_get_height>`\ (\ ) |const|                             |
   +---------------------------+----------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_height<class_Light2D_method_set_height>`\ (\ height\: :ref:`float<class_float>`\ ) |
   +---------------------------+----------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_Light2D_ShadowFilter:

.. rst-class:: classref-enumeration

enum **ShadowFilter**: :ref:`🔗<enum_Light2D_ShadowFilter>`

.. _class_Light2D_constant_SHADOW_FILTER_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowFilter<enum_Light2D_ShadowFilter>` **SHADOW_FILTER_NONE** = ``0``

Aucun filtre ne s'applique à la carte des ombres. Cela fournit des bords d'ombre nets et est le plus rapide à rendre. Voir :ref:`shadow_filter<class_Light2D_property_shadow_filter>`.

.. _class_Light2D_constant_SHADOW_FILTER_PCF5:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowFilter<enum_Light2D_ShadowFilter>` **SHADOW_FILTER_PCF5** = ``1``

Percentage closer filtering (5 samples) applies to the shadow map. This is slower compared to hard shadow rendering. See :ref:`shadow_filter<class_Light2D_property_shadow_filter>`.

.. _class_Light2D_constant_SHADOW_FILTER_PCF13:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowFilter<enum_Light2D_ShadowFilter>` **SHADOW_FILTER_PCF13** = ``2``

Percentage closer filtering (13 samples) applies to the shadow map. This is the slowest shadow filtering mode, and should be used sparingly. See :ref:`shadow_filter<class_Light2D_property_shadow_filter>`.

.. rst-class:: classref-item-separator

----

.. _enum_Light2D_BlendMode:

.. rst-class:: classref-enumeration

enum **BlendMode**: :ref:`🔗<enum_Light2D_BlendMode>`

.. _class_Light2D_constant_BLEND_MODE_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_Light2D_BlendMode>` **BLEND_MODE_ADD** = ``0``

Ajoute la valeur des pixels correspondant à la Light2D aux valeurs des pixels sous elle. C'est le comportement classique des lumières.

.. _class_Light2D_constant_BLEND_MODE_SUB:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_Light2D_BlendMode>` **BLEND_MODE_SUB** = ``1``

Soustrait la valeur des pixels correspondant à la Light2D aux valeurs des pixels sous elle, ce qui entraîne un effet de lumière inversé.

.. _class_Light2D_constant_BLEND_MODE_MIX:

.. rst-class:: classref-enumeration-constant

:ref:`BlendMode<enum_Light2D_BlendMode>` **BLEND_MODE_MIX** = ``2``

Mélange la valeur des pixels correspondant à la Light2D aux valeurs des pixels sous elle, via une interpolation linéaire.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Light2D_property_blend_mode:

.. rst-class:: classref-property

:ref:`BlendMode<enum_Light2D_BlendMode>` **blend_mode** = ``0`` :ref:`🔗<class_Light2D_property_blend_mode>`

.. rst-class:: classref-property-setget

- |void| **set_blend_mode**\ (\ value\: :ref:`BlendMode<enum_Light2D_BlendMode>`\ )
- :ref:`BlendMode<enum_Light2D_BlendMode>` **get_blend_mode**\ (\ )

Le mode de mélange de la Light2D.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Light2D_property_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

La :ref:`Color<class_Color>` de Light2D.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_editor_only:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor_only** = ``false`` :ref:`🔗<class_Light2D_property_editor_only>`

.. rst-class:: classref-property-setget

- |void| **set_editor_only**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editor_only**\ (\ )

Si ``true``, la Light2D n’apparaîtra que lors de l'édition de la scène.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``true`` :ref:`🔗<class_Light2D_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Si ``true``, la Light2D émettra de la lumière.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **energy** = ``1.0`` :ref:`🔗<class_Light2D_property_energy>`

.. rst-class:: classref-property-setget

- |void| **set_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_energy**\ (\ )

L'énergie de la Light2D. Plus la valeur est élevée, plus la lumière est forte.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_range_item_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **range_item_cull_mask** = ``1`` :ref:`🔗<class_Light2D_property_range_item_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_item_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_item_cull_mask**\ (\ )

Le masque de couche. Seuls les objets ayant un :ref:`CanvasItem.light_mask<class_CanvasItem_property_light_mask>` correspondant seront affectés par la Light2D. Voir aussi :ref:`shadow_item_cull_mask<class_Light2D_property_shadow_item_cull_mask>`, qui affecte les objets qui peuvent projeter des ombres.

\ **Note :** :ref:`range_item_cull_mask<class_Light2D_property_range_item_cull_mask>` est ignoré par :ref:`DirectionalLight2D<class_DirectionalLight2D>`, qui illumine toujours un nœud 2D indépendamment du :ref:`CanvasItem.light_mask<class_CanvasItem_property_light_mask>` du nœud 2D.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_range_layer_max:

.. rst-class:: classref-property

:ref:`int<class_int>` **range_layer_max** = ``0`` :ref:`🔗<class_Light2D_property_range_layer_max>`

.. rst-class:: classref-property-setget

- |void| **set_layer_range_max**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_layer_range_max**\ (\ )

La niveau de calque maximum pour qu'un objet soit éclairé par la Light2D.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_range_layer_min:

.. rst-class:: classref-property

:ref:`int<class_int>` **range_layer_min** = ``0`` :ref:`🔗<class_Light2D_property_range_layer_min>`

.. rst-class:: classref-property-setget

- |void| **set_layer_range_min**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_layer_range_min**\ (\ )

La niveau de calque minimum pour qu'un objet soit éclairé par la Light2D.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_range_z_max:

.. rst-class:: classref-property

:ref:`int<class_int>` **range_z_max** = ``1024`` :ref:`🔗<class_Light2D_property_range_z_max>`

.. rst-class:: classref-property-setget

- |void| **set_z_range_max**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_z_range_max**\ (\ )

La valeur ``z`` maximale pour que les objets soient affectés pour les Light2D.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_range_z_min:

.. rst-class:: classref-property

:ref:`int<class_int>` **range_z_min** = ``-1024`` :ref:`🔗<class_Light2D_property_range_z_min>`

.. rst-class:: classref-property-setget

- |void| **set_z_range_min**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_z_range_min**\ (\ )

La valeur ``z`` minimale pour que les objets soient affectés pour les Light2D.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_shadow_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **shadow_color** = ``Color(0, 0, 0, 0)`` :ref:`🔗<class_Light2D_property_shadow_color>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_shadow_color**\ (\ )

La :ref:`Color<class_Color>` de l'ombre affichée par la Light2D.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_shadow_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shadow_enabled** = ``false`` :ref:`🔗<class_Light2D_property_shadow_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_shadow_enabled**\ (\ )

Si ``true``, la Light2D affichera les ombres.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_shadow_filter:

.. rst-class:: classref-property

:ref:`ShadowFilter<enum_Light2D_ShadowFilter>` **shadow_filter** = ``0`` :ref:`🔗<class_Light2D_property_shadow_filter>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_filter**\ (\ value\: :ref:`ShadowFilter<enum_Light2D_ShadowFilter>`\ )
- :ref:`ShadowFilter<enum_Light2D_ShadowFilter>` **get_shadow_filter**\ (\ )

Type de filtrage des ombres.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_shadow_filter_smooth:

.. rst-class:: classref-property

:ref:`float<class_float>` **shadow_filter_smooth** = ``0.0`` :ref:`🔗<class_Light2D_property_shadow_filter_smooth>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_smooth**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_shadow_smooth**\ (\ )

Valeur de lissage pour les ombres. Des valeurs plus élevées entraîneront des ombres plus douces, au prix de stries visibles qui peuvent apparaître dans le rendu des ombres. :ref:`shadow_filter_smooth<class_Light2D_property_shadow_filter_smooth>` a seulement un effet si :ref:`shadow_filter<class_Light2D_property_shadow_filter>` vaut :ref:`SHADOW_FILTER_PCF5<class_Light2D_constant_SHADOW_FILTER_PCF5>` ou :ref:`SHADOW_FILTER_PCF13<class_Light2D_constant_SHADOW_FILTER_PCF13>`.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_property_shadow_item_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **shadow_item_cull_mask** = ``1`` :ref:`🔗<class_Light2D_property_shadow_item_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_item_shadow_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_item_shadow_cull_mask**\ (\ )

Le masque des ombres. Utilisé avec :ref:`LightOccluder2D<class_LightOccluder2D>` pour projeter des ombres. Seuls les occulteurs avec un masque de lumière :ref:`CanvasItem.light_mask<class_CanvasItem_property_light_mask>` correspondant projetteront des ombres. Voir aussi :ref:`range_item_cull_mask<class_Light2D_property_range_item_cull_mask>`, qui affecte les objets qui peuvent *recevoir* la lumière.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Light2D_method_get_height:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_height**\ (\ ) |const| :ref:`🔗<class_Light2D_method_get_height>`

Renvoie la hauteur de la lumière, qui est utilisée dans les normal maps 2D. Voir :ref:`PointLight2D.height<class_PointLight2D_property_height>` et :ref:`DirectionalLight2D.height<class_DirectionalLight2D_property_height>`.

.. rst-class:: classref-item-separator

----

.. _class_Light2D_method_set_height:

.. rst-class:: classref-method

|void| **set_height**\ (\ height\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Light2D_method_set_height>`

Définit la hauteur de la lumière, qui est utilisée dans les normal maps 2D. Voir :ref:`PointLight2D.height<class_PointLight2D_property_height>` et :ref:`DirectionalLight2D.height<class_DirectionalLight2D_property_height>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
