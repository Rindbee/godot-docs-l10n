:github_url: hide

.. _class_GeometryInstance3D:

GeometryInstance3D
==================

**Hérite de :** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`CPUParticles3D<class_CPUParticles3D>`, :ref:`CSGShape3D<class_CSGShape3D>`, :ref:`GPUParticles3D<class_GPUParticles3D>`, :ref:`Label3D<class_Label3D>`, :ref:`MeshInstance3D<class_MeshInstance3D>`, :ref:`MultiMeshInstance3D<class_MultiMeshInstance3D>`, :ref:`SpriteBase3D<class_SpriteBase3D>`

Nœud de base pour les instances visuelles basées sur la géométrie.

.. rst-class:: classref-introduction-group

Description
-----------

Nœud de base pour les instances visuelles basées sur de la géométrie. Partage certaines fonctionnalités communes comme la visibilité et les matériaux personnalisés.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Portée de visibilité (Niveau de détail hiérarchique) <../tutorials/3d/visibility_ranges>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>`       | :ref:`cast_shadow<class_GeometryInstance3D_property_cast_shadow>`                                     | ``1``                      |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`AABB<class_AABB>`                                                         | :ref:`custom_aabb<class_GeometryInstance3D_property_custom_aabb>`                                     | ``AABB(0, 0, 0, 0, 0, 0)`` |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                                                       | :ref:`extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>`                         | ``0.0``                    |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>`                     | :ref:`gi_lightmap_scale<class_GeometryInstance3D_property_gi_lightmap_scale>`                         | ``0``                      |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                                                       | :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>`             | ``1.0``                    |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`GIMode<enum_GeometryInstance3D_GIMode>`                                   | :ref:`gi_mode<class_GeometryInstance3D_property_gi_mode>`                                             | ``1``                      |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`bool<class_bool>`                                                         | :ref:`ignore_occlusion_culling<class_GeometryInstance3D_property_ignore_occlusion_culling>`           | ``false``                  |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                                                       | :ref:`lod_bias<class_GeometryInstance3D_property_lod_bias>`                                           | ``1.0``                    |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Material<class_Material>`                                                 | :ref:`material_overlay<class_GeometryInstance3D_property_material_overlay>`                           |                            |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`Material<class_Material>`                                                 | :ref:`material_override<class_GeometryInstance3D_property_material_override>`                         |                            |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                                                       | :ref:`transparency<class_GeometryInstance3D_property_transparency>`                                   | ``0.0``                    |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                                                       | :ref:`visibility_range_begin<class_GeometryInstance3D_property_visibility_range_begin>`               | ``0.0``                    |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                                                       | :ref:`visibility_range_begin_margin<class_GeometryInstance3D_property_visibility_range_begin_margin>` | ``0.0``                    |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                                                       | :ref:`visibility_range_end<class_GeometryInstance3D_property_visibility_range_end>`                   | ``0.0``                    |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`float<class_float>`                                                       | :ref:`visibility_range_end_margin<class_GeometryInstance3D_property_visibility_range_end_margin>`     | ``0.0``                    |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+
   | :ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` | :ref:`visibility_range_fade_mode<class_GeometryInstance3D_property_visibility_range_fade_mode>`       | ``0``                      |
   +---------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------+----------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_instance_shader_parameter<class_GeometryInstance3D_method_get_instance_shader_parameter>`\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const|                                |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_instance_shader_parameter<class_GeometryInstance3D_method_set_instance_shader_parameter>`\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_GeometryInstance3D_ShadowCastingSetting:

.. rst-class:: classref-enumeration

enum **ShadowCastingSetting**: :ref:`🔗<enum_GeometryInstance3D_ShadowCastingSetting>`

.. _class_GeometryInstance3D_constant_SHADOW_CASTING_SETTING_OFF:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **SHADOW_CASTING_SETTING_OFF** = ``0``

Ne projettera aucune ombre. Utilisez ceci pour améliorer les performances des petites géométries qui ne vont probablement pas projeter des ombres notables (comme des débris).

.. _class_GeometryInstance3D_constant_SHADOW_CASTING_SETTING_ON:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **SHADOW_CASTING_SETTING_ON** = ``1``

Projettera des ombres de toutes les faces visibles dans la GeometryInstance3D.

Prendra en compte le culling, donc les faces non rendues ne seront pas prises en compte lors de la projection des ombres.

.. _class_GeometryInstance3D_constant_SHADOW_CASTING_SETTING_DOUBLE_SIDED:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **SHADOW_CASTING_SETTING_DOUBLE_SIDED** = ``2``

Projettera des ombres de toutes les faces visibles dans la GeometryInstance3D.

Ne prendra pas en compte le culling, donc toutes les faces seront prises en compte lors de la projection des ombres.

.. _class_GeometryInstance3D_constant_SHADOW_CASTING_SETTING_SHADOWS_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **SHADOW_CASTING_SETTING_SHADOWS_ONLY** = ``3``

Affichera uniquement les ombres projetées à partir de cet objet.

En d’autres termes, le mesh réel ne sera pas visible, seules les ombres projetées à partir du mesh le seront.

.. rst-class:: classref-item-separator

----

.. _enum_GeometryInstance3D_GIMode:

.. rst-class:: classref-enumeration

enum **GIMode**: :ref:`🔗<enum_GeometryInstance3D_GIMode>`

.. _class_GeometryInstance3D_constant_GI_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`GIMode<enum_GeometryInstance3D_GIMode>` **GI_MODE_DISABLED** = ``0``

Mode d'illumination globale désactivée. Utilisez le pour les objets dynamiques qui ne contribuent pas à l'illumination globale (comme des personnages). Lors de l'utilisation de :ref:`VoxelGI<class_VoxelGI>` et SDFGI, la géométrie *recevra* l'éclairage indirect et les réflexions, mais la géométrie ne sera pas considérée dans le calcul de l'illumination globale.

.. _class_GeometryInstance3D_constant_GI_MODE_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`GIMode<enum_GeometryInstance3D_GIMode>` **GI_MODE_STATIC** = ``1``

Mode d'illumination globale pré-calculée. Utilisez le pour les objets statiques qui contribuent à l'illumination globale (comme la géométrie de niveau). Ce mode d'illumination globale est efficace lorsque vous utilisez :ref:`VoxelGI<class_VoxelGI>`, SDFGI et :ref:`LightmapGI<class_LightmapGI>`.

.. _class_GeometryInstance3D_constant_GI_MODE_DYNAMIC:

.. rst-class:: classref-enumeration-constant

:ref:`GIMode<enum_GeometryInstance3D_GIMode>` **GI_MODE_DYNAMIC** = ``2``

Mode d'illumination globale dynamique. Utilisez le pour les objets dynamiques qui contribuent à l'illumination globale. Ce mode d'illumination globale n'est effectif qu'en utilisant :ref:`VoxelGI<class_VoxelGI>`, mais il a un impact de performance plus élevé que :ref:`GI_MODE_STATIC<class_GeometryInstance3D_constant_GI_MODE_STATIC>`. Lors de l'utilisation d'autres méthodes d'illumination globale, cela agira de la même manière que :ref:`GI_MODE_DISABLED<class_GeometryInstance3D_constant_GI_MODE_DISABLED>`. Lors de l'utilisation de :ref:`LightmapGI<class_LightmapGI>`, l'objet recevra un éclairage indirect à l'aide de sondes de lightmap au lieu d'utiliser la texture de lightmap pré-calculée.

.. rst-class:: classref-item-separator

----

.. _enum_GeometryInstance3D_LightmapScale:

.. rst-class:: classref-enumeration

enum **LightmapScale**: :ref:`🔗<enum_GeometryInstance3D_LightmapScale>`

.. _class_GeometryInstance3D_constant_LIGHTMAP_SCALE_1X:

.. rst-class:: classref-enumeration-constant

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **LIGHTMAP_SCALE_1X** = ``0``

**Obsolète :** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

La densité de texel standard pour le lightmapping avec :ref:`LightmapGI<class_LightmapGI>`.

.. _class_GeometryInstance3D_constant_LIGHTMAP_SCALE_2X:

.. rst-class:: classref-enumeration-constant

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **LIGHTMAP_SCALE_2X** = ``1``

**Obsolète :** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

Multiplie la densité de texel par 2× pour le lightmapping avec :ref:`LightmapGI<class_LightmapGI>`. Pour assurer une consistance en densité de texel, utilisez ceci lors de la mise à l'échelle d'un maillage par un facteur entre 1.5 et 3.0.

.. _class_GeometryInstance3D_constant_LIGHTMAP_SCALE_4X:

.. rst-class:: classref-enumeration-constant

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **LIGHTMAP_SCALE_4X** = ``2``

**Obsolète :** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

Multiplie la densité de texel par 4× pour le lightmapping avec :ref:`LightmapGI<class_LightmapGI>`. Pour assurer une consistance en densité de texel, utilisez ceci lors de la mise à l'échelle d'un maillage par un facteur entre 3.0 et 6.0.

.. _class_GeometryInstance3D_constant_LIGHTMAP_SCALE_8X:

.. rst-class:: classref-enumeration-constant

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **LIGHTMAP_SCALE_8X** = ``3``

**Obsolète :** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

Multiplie la densité de texel par 8× pour le lightmapping avec :ref:`LightmapGI<class_LightmapGI>`. Pour assurer une consistance en densité de texel, utilisez ceci lors de la mise à l'échelle d'un maillage par un facteur supérieur à 6.0.

.. _class_GeometryInstance3D_constant_LIGHTMAP_SCALE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **LIGHTMAP_SCALE_MAX** = ``4``

**Obsolète :** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

Représente la taille de l'énumération :ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>`.

.. rst-class:: classref-item-separator

----

.. _enum_GeometryInstance3D_VisibilityRangeFadeMode:

.. rst-class:: classref-enumeration

enum **VisibilityRangeFadeMode**: :ref:`🔗<enum_GeometryInstance3D_VisibilityRangeFadeMode>`

.. _class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` **VISIBILITY_RANGE_FADE_DISABLED** = ``0``

Ne va pas disparaître ni ses dépendances de visibilité, une hystérésis sera utilisée à la place. Il s'agit de l'approche la plus rapide de LOD manuel, mais elle peut entraîner des transitions de LOD remarquables en fonction de la façon dont les maillages LOD sont faites. Voir :ref:`visibility_range_begin<class_GeometryInstance3D_property_visibility_range_begin>` et :ref:`Node3D.visibility_parent<class_Node3D_property_visibility_parent>` pour plus d'informations.

.. _class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_SELF:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` **VISIBILITY_RANGE_FADE_SELF** = ``1``

Va disparaître en atteignant les limites de sa propre plage de visibilité. Ceci est plus lent que :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>`, mais peut fournir des transitions plus fluides. La plage de disparition est déterminée par :ref:`visibility_range_begin_margin<class_GeometryInstance3D_property_visibility_range_begin_margin>` et :ref:`visibility_range_end_margin<class_GeometryInstance3D_property_visibility_range_end_margin>`.

\ **Note :** Seulement supporté lors de l'utilisation de la méthode de rendu Forward+. Lors de l'utilisation de la méthode de rendu Mobile ou Compatibilité, ce mode agit comme :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>` mais avec l'hystérésis désactivée.

.. _class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DEPENDENCIES:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` **VISIBILITY_RANGE_FADE_DEPENDENCIES** = ``2``

Va faire apparaître ses dépendances de visibilité (voir :ref:`Node3D.visibility_parent<class_Node3D_property_visibility_parent>`) lorsqu'elle atteint les limites de sa propre plage de visibilité. Ceci est plus lent que :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>`, mais peut fournir des transitions plus fluides. La plage d'apparition est déterminée par :ref:`visibility_range_begin_margin<class_GeometryInstance3D_property_visibility_range_begin_margin>` et :ref:`visibility_range_end_margin<class_GeometryInstance3D_property_visibility_range_end_margin>`.

\ **Note :** Seulement supporté lors de l'utilisation de la méthode de rendu Forward+. Lors de l'utilisation de la méthode de rendu Mobile ou Compatiblité, ce mode agit comme :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>` mais avec l'hystérésis désactivée.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_GeometryInstance3D_property_cast_shadow:

.. rst-class:: classref-property

:ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **cast_shadow** = ``1`` :ref:`🔗<class_GeometryInstance3D_property_cast_shadow>`

.. rst-class:: classref-property-setget

- |void| **set_cast_shadows_setting**\ (\ value\: :ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>`\ )
- :ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **get_cast_shadows_setting**\ (\ )

The mode used to cast shadows from this instance.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_custom_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **custom_aabb** = ``AABB(0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_GeometryInstance3D_property_custom_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_custom_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_custom_aabb**\ (\ )

Redéfinit la boîte de délimitation de ce nœud avec une boîte personnalisée. Cela peut être utilisé pour éviter le re-calcul d':ref:`AABB<class_AABB>` coûteux qui se produit quand un squelette est utilisé avec un :ref:`MeshInstance3D<class_MeshInstance3D>` ou pour avoir un contrôle précis sur la boîte de délimitation de la :ref:`MeshInstance3D<class_MeshInstance3D>`. Pour utiliser l'AABB par défaut, définissez la valeur à une :ref:`AABB<class_AABB>` avec tous ses champs définis à ``0.0``. Pour éviter le frustum culling, définissez :ref:`custom_aabb<class_GeometryInstance3D_property_custom_aabb>` à une très grande AABB qui couvre votre monde de jeu entier comme ``AABB(-10000, -10000, -10000, 20000, 20000, 20000)``. Pour désactiver toutes les formes de culling (y compris l'occlusion culling), appelez :ref:`RenderingServer.instance_set_ignore_culling()<class_RenderingServer_method_instance_set_ignore_culling>` sur le :ref:`RID<class_RID>` de la **GeometryInstance3D**.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_extra_cull_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **extra_cull_margin** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_extra_cull_margin>`

.. rst-class:: classref-property-setget

- |void| **set_extra_cull_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_extra_cull_margin**\ (\ )

La distance supplémentaire ajoutée à la boîte de délimitation de la GeometryInstance3D (:ref:`AABB<class_AABB>`) pour augmenter sa boîte de cull.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_gi_lightmap_scale:

.. rst-class:: classref-property

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **gi_lightmap_scale** = ``0`` :ref:`🔗<class_GeometryInstance3D_property_gi_lightmap_scale>`

.. rst-class:: classref-property-setget

- |void| **set_lightmap_scale**\ (\ value\: :ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>`\ )
- :ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **get_lightmap_scale**\ (\ )

**Obsolète :** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

La densité de texel à utiliser pour le lightmapping dans :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_gi_lightmap_texel_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **gi_lightmap_texel_scale** = ``1.0`` :ref:`🔗<class_GeometryInstance3D_property_gi_lightmap_texel_scale>`

.. rst-class:: classref-property-setget

- |void| **set_lightmap_texel_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lightmap_texel_scale**\ (\ )

La densité de texel à utiliser pour le lightmapping dans :ref:`LightmapGI<class_LightmapGI>`. Les plus grandes valeurs d'échelle offrent une résolution plus élevée dans la lightmap, ce qui peut entraîner des ombres plus nettes pour les lumières qui ont à la fois de la lumière directe et indirecte pré-calculée. Cependant, des valeurs plus élevées augmenteront également l'espace pris par le maillage dans la texture de lightmap, ce qui augmente les exigences en mémoire, en stockage et en temps de calcul. Lors de l'utilisation d'un seul maillage à différentes échelles, envisagez d'ajuster cette valeur pour maintenir la densité de texel de la lightmap cohérente entre les maillages.

Par exemple, doubler :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` double la résolution de texture de la lightmap pour cet objet *sur chaque axe*, de sorte que cela *quadruple* le compte de texels.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_gi_mode:

.. rst-class:: classref-property

:ref:`GIMode<enum_GeometryInstance3D_GIMode>` **gi_mode** = ``1`` :ref:`🔗<class_GeometryInstance3D_property_gi_mode>`

.. rst-class:: classref-property-setget

- |void| **set_gi_mode**\ (\ value\: :ref:`GIMode<enum_GeometryInstance3D_GIMode>`\ )
- :ref:`GIMode<enum_GeometryInstance3D_GIMode>` **get_gi_mode**\ (\ )

Le mode d'illumination globale à utiliser pour la géométrie entière. Pour éviter des résultats incohérents, utilisez un mode qui correspond au but du maillage lors du gameplay (statique/dynamique).

\ **Note :** Le mode de pré-calcul des lumières affectera également le rendu de l'illumination globale. Voir :ref:`Light3D.light_bake_mode<class_Light3D_property_light_bake_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_ignore_occlusion_culling:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ignore_occlusion_culling** = ``false`` :ref:`🔗<class_GeometryInstance3D_property_ignore_occlusion_culling>`

.. rst-class:: classref-property-setget

- |void| **set_ignore_occlusion_culling**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ignoring_occlusion_culling**\ (\ )

Si ``true``, désactive l'occlusion culling pour cette instance. Utile pour les manipulateurs qui doivent être rendus même lorsque l'occlusion culling est utilisée.

\ **Note :** :ref:`ignore_occlusion_culling<class_GeometryInstance3D_property_ignore_occlusion_culling>` n'affecte pas le frustum culling (ce qui se passe quand un objet n'est pas visible compte tenu de l'angle de la caméra). Pour éviter le frustum culling, définissez :ref:`custom_aabb<class_GeometryInstance3D_property_custom_aabb>` à une très grande AABB qui couvre votre monde de jeu comme ``AABB(-10000, -10000, -10000, 20000, 20000, 20000)``.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_lod_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **lod_bias** = ``1.0`` :ref:`🔗<class_GeometryInstance3D_property_lod_bias>`

.. rst-class:: classref-property-setget

- |void| **set_lod_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lod_bias**\ (\ )

Change la vitesse de transition du maillage vers un niveau de détail inférieur. Une valeur de 0 forcera le maillage à son plus bas niveau de détail, une valeur de 1 utilisera les paramètres par défaut, et des valeurs plus grandes garderont le maillage dans un niveau de détail plus élevé à des distances plus lointaines.

Utile pour tester les transitions de niveau de détail dans l'éditeur.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_material_overlay:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material_overlay** :ref:`🔗<class_GeometryInstance3D_property_material_overlay>`

.. rst-class:: classref-property-setget

- |void| **set_material_overlay**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material_overlay**\ (\ )

The material overlay for the whole geometry.

If a material is assigned to this property, it will be rendered on top of any other active material for all the surfaces.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_material_override:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material_override** :ref:`🔗<class_GeometryInstance3D_property_material_override>`

.. rst-class:: classref-property-setget

- |void| **set_material_override**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material_override**\ (\ )

La redéfinition du matériau pour toute la géométrie.

Si un matériau est affecté à cette propriété, il sera utilisé au lieu de tout matériel défini dans n'importe quel emplacement de matériau du maillage.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_transparency:

.. rst-class:: classref-property

:ref:`float<class_float>` **transparency** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_transparency>`

.. rst-class:: classref-property-setget

- |void| **set_transparency**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_transparency**\ (\ )

La transparence appliquée à toute la géométrie (comme un multiplicateur de la transparence existante des matériaux). ``0.0`` est entièrement opaque, tandis que ``1.0`` est entièrement transparent. Les valeurs supérieures à ``0.0`` (exclusif) forceront les matériaux de la géométrie à passer par le pipeline de transparence, qui est plus lente à rendre et peut présenter des problèmes de rendu en raison d'un tri de transparence incorrect. Cependant, contrairement à l'utilisation d'un matériau transparent, définir :ref:`transparency<class_GeometryInstance3D_property_transparency>` à une valeur supérieure à ``0.0`` (exclusif) ne désactivera *pas* le rendu des ombres.

Dans les shaders spatiaux, ``1.0 - transparency`` est défini comme la valeur par défaut de l'``ALPHA`` intégré.

\ **Note :** :ref:`transparency<class_GeometryInstance3D_property_transparency>` est borné entre ``0.0`` et ``1.0``, de sorte que cette propriété ne peut pas être utilisée pour rendre des matériaux transparents plus opaques qu'ils ne le sont originellement.

\ **Note :** Seulement pris en charge lors de l'utilisation de la méthode de rendu Forward+. Lors de l'utilisation de la méthode de rendu Mobile ou Compatibilité, :ref:`transparency<class_GeometryInstance3D_property_transparency>` est ignorée et est considérée comme valant toujours ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_visibility_range_begin:

.. rst-class:: classref-property

:ref:`float<class_float>` **visibility_range_begin** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_visibility_range_begin>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_range_begin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_visibility_range_begin**\ (\ )

Distance de départ à laquelle la GeometryInstance3D sera visible, en prenant en compte :ref:`visibility_range_begin_margin<class_GeometryInstance3D_property_visibility_range_begin_margin>`. La valeur par défaut de 0 est utilisée pour désactiver la vérification de la plage.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_visibility_range_begin_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **visibility_range_begin_margin** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_visibility_range_begin_margin>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_range_begin_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_visibility_range_begin_margin**\ (\ )

Marge pour le seuil de visibilité :ref:`visibility_range_begin<class_GeometryInstance3D_property_visibility_range_begin>`. La GeometryInstance3D ne changera son état de visibilité que lorsqu'elle passera au-dessus ou en-dessous du seuil :ref:`visibility_range_begin<class_GeometryInstance3D_property_visibility_range_begin>` de cette quantité.

Si :ref:`visibility_range_fade_mode<class_GeometryInstance3D_property_visibility_range_fade_mode>` vaut :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>`, cela agit comme une distance d'hystérésis. Si :ref:`visibility_range_fade_mode<class_GeometryInstance3D_property_visibility_range_fade_mode>` vaut :ref:`VISIBILITY_RANGE_FADE_SELF<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_SELF>` ou :ref:`VISIBILITY_RANGE_FADE_DEPENDENCIES<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DEPENDENCIES>`, cela agit comme une distance de transition de disparition et doit être défini à une valeur supérieure à ``0.0`` pour que l'effet soit remarquable.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_visibility_range_end:

.. rst-class:: classref-property

:ref:`float<class_float>` **visibility_range_end** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_visibility_range_end>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_range_end**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_visibility_range_end**\ (\ )

Distance à laquelle la GeometryInstance3D sera cachée, en prenant en compte :ref:`visibility_range_end_margin<class_GeometryInstance3D_property_visibility_range_end_margin>`. La valeur par défaut de 0 est utilisée pour désactiver la vérification de la plage.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_visibility_range_end_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **visibility_range_end_margin** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_visibility_range_end_margin>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_range_end_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_visibility_range_end_margin**\ (\ )

Marge pour le seuil de visibilité :ref:`visibility_range_end<class_GeometryInstance3D_property_visibility_range_end>`. La GeometryInstance3D ne changera son état de visibilité que lorsqu'elle passera au-dessus ou en-dessous du seuil :ref:`visibility_range_end<class_GeometryInstance3D_property_visibility_range_end>` de cette quantité.

Si :ref:`visibility_range_fade_mode<class_GeometryInstance3D_property_visibility_range_fade_mode>` vaut :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>`, cela agit comme une distance d'hystérésis. Si :ref:`visibility_range_fade_mode<class_GeometryInstance3D_property_visibility_range_fade_mode>` vaut :ref:`VISIBILITY_RANGE_FADE_SELF<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_SELF>` ou :ref:`VISIBILITY_RANGE_FADE_DEPENDENCIES<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DEPENDENCIES>`, cela agit comme une distance de transition de disparition et doit être défini à une valeur supérieure à ``0.0`` pour que l'effet soit remarquable.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_visibility_range_fade_mode:

.. rst-class:: classref-property

:ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` **visibility_range_fade_mode** = ``0`` :ref:`🔗<class_GeometryInstance3D_property_visibility_range_fade_mode>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_range_fade_mode**\ (\ value\: :ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>`\ )
- :ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` **get_visibility_range_fade_mode**\ (\ )

Contrôle quelles instances disparaîtront lors de l'approche des limites de la plage de visibilité.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_GeometryInstance3D_method_get_instance_shader_parameter:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_instance_shader_parameter**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_GeometryInstance3D_method_get_instance_shader_parameter>`

Obtient la valeur d'un paramètre de shader défini sur cette instance.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_method_set_instance_shader_parameter:

.. rst-class:: classref-method

|void| **set_instance_shader_parameter**\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GeometryInstance3D_method_set_instance_shader_parameter>`

Définir la valeur d'un uniform de shader pour cette instance uniquement (`uniform par-instance <../tutorials/shaders/shader_reference/shading_language.html#per-instance-uniforms>`__). Voir aussi :ref:`ShaderMaterial.set_shader_parameter()<class_ShaderMaterial_method_set_shader_parameter>` pour attribuer un uniform sur toutes les instances en utilisant le même :ref:`ShaderMaterial<class_ShaderMaterial>`.

\ **Note :** Pour qu'un uniform de shader soit assignable selon l'instance, il *doit* être défini avec ``instance uniform ...`` plutôt que ``uniform ...`` dans le code du shader.

\ **Note :** ``name`` est sensible à la casse et doit correspondre exactement au nom de l'uniform dans le code (pas le nom capitalisé dans l'inspecteur).

\ **Note :** Les uniforms de shader par instance ne sont disponibles que dans les shaders Spatial et CanvasItem, mais pas pour les shaders de brouillard, de ciel ou de particules.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
