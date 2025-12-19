:github_url: hide

.. _class_Light3D:

Light3D
=======

**Hérite de :** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`DirectionalLight3D<class_DirectionalLight3D>`, :ref:`OmniLight3D<class_OmniLight3D>`, :ref:`SpotLight3D<class_SpotLight3D>`

Fourni une classe commune aux différents types de nœuds de lumière.

.. rst-class:: classref-introduction-group

Description
-----------

Light3D est la classe de base *abstraite* pour les nœuds de lumière. Puisque elle ne peut être instanciée, elle devrait pas être utilisée directement. D'autres types de nœuds de lumière héritent d'elle. Light3D contient les variables et paramètres communs utilisés pour l'éclairage.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Lumières et ombres 3D <../tutorials/3d/lights_and_shadows>`

- :doc:`Truquer l’illumination globale <../tutorials/3d/global_illumination/faking_global_illumination>`

- `Démo de tir à la troisième personne (TPS) <https://godotengine.org/asset-library/asset/2710>`__

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`distance_fade_begin<class_Light3D_property_distance_fade_begin>`                 | ``40.0``              |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                | :ref:`distance_fade_enabled<class_Light3D_property_distance_fade_enabled>`             | ``false``             |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`distance_fade_length<class_Light3D_property_distance_fade_length>`               | ``10.0``              |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`distance_fade_shadow<class_Light3D_property_distance_fade_shadow>`               | ``50.0``              |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                | :ref:`editor_only<class_Light3D_property_editor_only>`                                 | ``false``             |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_angular_distance<class_Light3D_property_light_angular_distance>`           | ``0.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`BakeMode<enum_Light3D_BakeMode>` | :ref:`light_bake_mode<class_Light3D_property_light_bake_mode>`                         | ``2``                 |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`              | :ref:`light_color<class_Light3D_property_light_color>`                                 | ``Color(1, 1, 1, 1)`` |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                  | :ref:`light_cull_mask<class_Light3D_property_light_cull_mask>`                         | ``4294967295``        |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_energy<class_Light3D_property_light_energy>`                               | ``1.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_indirect_energy<class_Light3D_property_light_indirect_energy>`             | ``1.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_intensity_lumens<class_Light3D_property_light_intensity_lumens>`           |                       |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_intensity_lux<class_Light3D_property_light_intensity_lux>`                 |                       |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                | :ref:`light_negative<class_Light3D_property_light_negative>`                           | ``false``             |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Texture2D<class_Texture2D>`      | :ref:`light_projector<class_Light3D_property_light_projector>`                         |                       |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_size<class_Light3D_property_light_size>`                                   | ``0.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_specular<class_Light3D_property_light_specular>`                           | ``1.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_temperature<class_Light3D_property_light_temperature>`                     |                       |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`light_volumetric_fog_energy<class_Light3D_property_light_volumetric_fog_energy>` | ``1.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`shadow_bias<class_Light3D_property_shadow_bias>`                                 | ``0.1``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`shadow_blur<class_Light3D_property_shadow_blur>`                                 | ``1.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                  | :ref:`shadow_caster_mask<class_Light3D_property_shadow_caster_mask>`                   | ``4294967295``        |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                | :ref:`shadow_enabled<class_Light3D_property_shadow_enabled>`                           | ``false``             |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`shadow_normal_bias<class_Light3D_property_shadow_normal_bias>`                   | ``2.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`shadow_opacity<class_Light3D_property_shadow_opacity>`                           | ``1.0``               |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                | :ref:`shadow_reverse_cull_face<class_Light3D_property_shadow_reverse_cull_face>`       | ``false``             |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`              | :ref:`shadow_transmittance_bias<class_Light3D_property_shadow_transmittance_bias>`     | ``0.05``              |
   +----------------------------------------+----------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>` | :ref:`get_correlated_color<class_Light3D_method_get_correlated_color>`\ (\ ) |const|                                                |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`get_param<class_Light3D_method_get_param>`\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|                            |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                    | :ref:`set_param<class_Light3D_method_set_param>`\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ ) |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_Light3D_Param:

.. rst-class:: classref-enumeration

enum **Param**: :ref:`🔗<enum_Light3D_Param>`

.. _class_Light3D_constant_PARAM_ENERGY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_ENERGY** = ``0``

La constante pour accéder à :ref:`light_energy<class_Light3D_property_light_energy>`.

.. _class_Light3D_constant_PARAM_INDIRECT_ENERGY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_INDIRECT_ENERGY** = ``1``

La constante pour accéder à :ref:`light_indirect_energy<class_Light3D_property_light_indirect_energy>`.

.. _class_Light3D_constant_PARAM_VOLUMETRIC_FOG_ENERGY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_VOLUMETRIC_FOG_ENERGY** = ``2``

Constante pour accéder à :ref:`light_volumetric_fog_energy<class_Light3D_property_light_volumetric_fog_energy>`.

.. _class_Light3D_constant_PARAM_SPECULAR:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SPECULAR** = ``3``

La constante pour accéder à :ref:`light_specular<class_Light3D_property_light_specular>`.

.. _class_Light3D_constant_PARAM_RANGE:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_RANGE** = ``4``

Constante pour accéder à :ref:`OmniLight3D.omni_range<class_OmniLight3D_property_omni_range>` ou :ref:`SpotLight3D.spot_range<class_SpotLight3D_property_spot_range>`.

.. _class_Light3D_constant_PARAM_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SIZE** = ``5``

La constante pour accéder à :ref:`light_size<class_Light3D_property_light_size>`.

.. _class_Light3D_constant_PARAM_ATTENUATION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_ATTENUATION** = ``6``

Constante pour accéder à :ref:`OmniLight3D.omni_attenuation<class_OmniLight3D_property_omni_attenuation>` ou :ref:`SpotLight3D.spot_attenuation<class_SpotLight3D_property_spot_attenuation>`.

.. _class_Light3D_constant_PARAM_SPOT_ANGLE:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SPOT_ANGLE** = ``7``

Constante pour accéder à :ref:`SpotLight3D.spot_angle<class_SpotLight3D_property_spot_angle>`.

.. _class_Light3D_constant_PARAM_SPOT_ATTENUATION:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SPOT_ATTENUATION** = ``8``

Constante pour accéder à :ref:`SpotLight3D.spot_angle_attenuation<class_SpotLight3D_property_spot_angle_attenuation>`.

.. _class_Light3D_constant_PARAM_SHADOW_MAX_DISTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_MAX_DISTANCE** = ``9``

Constante pour accéder à :ref:`DirectionalLight3D.directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>`.

.. _class_Light3D_constant_PARAM_SHADOW_SPLIT_1_OFFSET:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_SPLIT_1_OFFSET** = ``10``

Constante pour accéder à :ref:`DirectionalLight3D.directional_shadow_split_1<class_DirectionalLight3D_property_directional_shadow_split_1>`.

.. _class_Light3D_constant_PARAM_SHADOW_SPLIT_2_OFFSET:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_SPLIT_2_OFFSET** = ``11``

Constante pour accéder à :ref:`DirectionalLight3D.directional_shadow_split_2<class_DirectionalLight3D_property_directional_shadow_split_2>`.

.. _class_Light3D_constant_PARAM_SHADOW_SPLIT_3_OFFSET:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_SPLIT_3_OFFSET** = ``12``

Constante pour accéder à :ref:`DirectionalLight3D.directional_shadow_split_3<class_DirectionalLight3D_property_directional_shadow_split_3>`.

.. _class_Light3D_constant_PARAM_SHADOW_FADE_START:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_FADE_START** = ``13``

Constante pour accéder à :ref:`DirectionalLight3D.directional_shadow_fade_start<class_DirectionalLight3D_property_directional_shadow_fade_start>`.

.. _class_Light3D_constant_PARAM_SHADOW_NORMAL_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_NORMAL_BIAS** = ``14``

Constante pour accéder à :ref:`shadow_normal_bias<class_Light3D_property_shadow_normal_bias>`.

.. _class_Light3D_constant_PARAM_SHADOW_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_BIAS** = ``15``

La constante pour accéder à :ref:`shadow_bias<class_Light3D_property_shadow_bias>`.

.. _class_Light3D_constant_PARAM_SHADOW_PANCAKE_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_PANCAKE_SIZE** = ``16``

Constante pour accéder à :ref:`DirectionalLight3D.directional_shadow_pancake_size<class_DirectionalLight3D_property_directional_shadow_pancake_size>`.

.. _class_Light3D_constant_PARAM_SHADOW_OPACITY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_OPACITY** = ``17``

Constante pour accéder à :ref:`shadow_opacity<class_Light3D_property_shadow_opacity>`.

.. _class_Light3D_constant_PARAM_SHADOW_BLUR:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_SHADOW_BLUR** = ``18``

Constante pour accéder à :ref:`shadow_blur<class_Light3D_property_shadow_blur>`.

.. _class_Light3D_constant_PARAM_TRANSMITTANCE_BIAS:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_TRANSMITTANCE_BIAS** = ``19``

Constante pour accéder à :ref:`shadow_transmittance_bias<class_Light3D_property_shadow_transmittance_bias>`.

.. _class_Light3D_constant_PARAM_INTENSITY:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_INTENSITY** = ``20``

Constante pour accéder à :ref:`light_intensity_lumens<class_Light3D_property_light_intensity_lumens>` et :ref:`light_intensity_lux<class_Light3D_property_light_intensity_lux>`. Seulement utilisé lorsque :ref:`ProjectSettings.rendering/lights_and_shadows/use_physical_light_units<class_ProjectSettings_property_rendering/lights_and_shadows/use_physical_light_units>` vaut ``true``.

.. _class_Light3D_constant_PARAM_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Param<enum_Light3D_Param>` **PARAM_MAX** = ``21``

Représente la taille de l'énumération :ref:`Param<enum_Light3D_Param>`.

.. rst-class:: classref-item-separator

----

.. _enum_Light3D_BakeMode:

.. rst-class:: classref-enumeration

enum **BakeMode**: :ref:`🔗<enum_Light3D_BakeMode>`

.. _class_Light3D_constant_BAKE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`BakeMode<enum_Light3D_BakeMode>` **BAKE_DISABLED** = ``0``

La lumière est ignorée lors du pré-calcul. Il s'agit du mode le plus rapide, mais la lumière ne sera pas prise en compte lors du pré-calcul de l'illumination globale. Ce mode devrait généralement être utilisé pour les lumières dynamiques qui changent rapidement, car l'effet de l'illumination globale est moins visible sur ces lumières.

\ **Note :** Cacher une lumière n'affecte *pas* le pré-calcul des :ref:`LightmapGI<class_LightmapGI>`. Cacher une lumière affectera toujours le pré-calcul des :ref:`VoxelGI<class_VoxelGI>` et SDFGI (voir :ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`).

.. _class_Light3D_constant_BAKE_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`BakeMode<enum_Light3D_BakeMode>` **BAKE_STATIC** = ``1``

La lumière est prise en compte dans le pré-calcul statique (:ref:`VoxelGI<class_VoxelGI>`, :ref:`LightmapGI<class_LightmapGI>`, SDFGI (:ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`). La lumière peut être déplacée ou modifiée, mais son illumination globale ne sera pas mise à jour en temps réel. Ceci est adapté aux changements subtils (comme des torches vacillantes), mais généralement pas aux grands changements tels que l'allumer ou éteindre une lumière.

\ **Note :** La lumière n'est pas pré-calculée dans :ref:`LightmapGI<class_LightmapGI>` si :ref:`editor_only<class_Light3D_property_editor_only>` vaut ``true``.

.. _class_Light3D_constant_BAKE_DYNAMIC:

.. rst-class:: classref-enumeration-constant

:ref:`BakeMode<enum_Light3D_BakeMode>` **BAKE_DYNAMIC** = ``2``

La lumière est prise en compte dans le pré-calcul dynamique (:ref:`VoxelGI<class_VoxelGI>` et SDFGI (:ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`) seulement). La lumière peut être déplacée ou modifiée avec la mise à jour de l'illumination globale en temps réel. L'apparence de l'illumination globale de la lumière sera légèrement différente par rapport à :ref:`BAKE_STATIC<class_Light3D_constant_BAKE_STATIC>`. Cela a un coût de performance plus élevé par rapport à :ref:`BAKE_STATIC<class_Light3D_constant_BAKE_STATIC>`. Lors de l'utilisation du SDFGI, la vitesse de mise à jour des lumières dynamiques est affectée par :ref:`ProjectSettings.rendering/global_illumination/sdfgi/frames_to_update_lights<class_ProjectSettings_property_rendering/global_illumination/sdfgi/frames_to_update_lights>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_Light3D_property_distance_fade_begin:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance_fade_begin** = ``40.0`` :ref:`🔗<class_Light3D_property_distance_fade_begin>`

.. rst-class:: classref-property-setget

- |void| **set_distance_fade_begin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance_fade_begin**\ (\ )

La distance à la caméra à partir de laquelle la lumière commence à disparaître (en unités 3D).

\ **Note :** Seulement effective pour :ref:`OmniLight3D<class_OmniLight3D>` et :ref:`SpotLight3D<class_SpotLight3D>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_distance_fade_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **distance_fade_enabled** = ``false`` :ref:`🔗<class_Light3D_property_distance_fade_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enable_distance_fade**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_distance_fade_enabled**\ (\ )

Si ``true``, la lumière disparaîtra en douceur lorsqu'elle est loin de la :ref:`Camera3D<class_Camera3D>` active, à partir de :ref:`distance_fade_begin<class_Light3D_property_distance_fade_begin>`. Cela agit comme une forme de niveau de détail (LOD). La lumière disparaîtra sur :ref:`distance_fade_begin<class_Light3D_property_distance_fade_begin>` + :ref:`distance_fade_length<class_Light3D_property_distance_fade_length>`, après quoi elle sera coupée et ne sera pas envoyée au shader du tout. Utilisez ceci pour réduire le nombre de lumières actives dans une scène et ainsi améliorer les performances.

\ **Note :** Seulement effectif pour :ref:`OmniLight3D<class_OmniLight3D>` et :ref:`SpotLight3D<class_SpotLight3D>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_distance_fade_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance_fade_length** = ``10.0`` :ref:`🔗<class_Light3D_property_distance_fade_length>`

.. rst-class:: classref-property-setget

- |void| **set_distance_fade_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance_fade_length**\ (\ )

Distance sur laquelle la lumière et son ombre s'effacent. L'énergie de la lumière et l'opacité de l'ombre sont progressivement réduites sur cette distance et sont complètement invisibles à la fin.

\ **Note :** Seulement effectif pour :ref:`OmniLight3D<class_OmniLight3D>` et :ref:`SpotLight3D<class_SpotLight3D>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_distance_fade_shadow:

.. rst-class:: classref-property

:ref:`float<class_float>` **distance_fade_shadow** = ``50.0`` :ref:`🔗<class_Light3D_property_distance_fade_shadow>`

.. rst-class:: classref-property-setget

- |void| **set_distance_fade_shadow**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_distance_fade_shadow**\ (\ )

La distance de la caméra à partir de laquelle l'ombre de la lumière est coupée (en unités 3D). Définissez ceci à une valeur inférieure à :ref:`distance_fade_begin<class_Light3D_property_distance_fade_begin>` + :ref:`distance_fade_length<class_Light3D_property_distance_fade_length>` pour améliorer encore les performances, car le rendu des ombres est souvent plus cher que le rendu de la lumière elle-même.

\ **Note :** Seulement effectif pour :ref:`OmniLight3D<class_OmniLight3D>` et :ref:`SpotLight3D<class_SpotLight3D>`, et seulement lorsque :ref:`shadow_enabled<class_Light3D_property_shadow_enabled>` vaut ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_editor_only:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **editor_only** = ``false`` :ref:`🔗<class_Light3D_property_editor_only>`

.. rst-class:: classref-property-setget

- |void| **set_editor_only**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_editor_only**\ (\ )

Si ``true``, la lumière n'apparaît que dans l'éditeur et ne sera pas visible durant l'exécution. Si ``true``, la lumière ne sera jamais pré-calculée dans :ref:`LightmapGI<class_LightmapGI>` indépendamment de son :ref:`light_bake_mode<class_Light3D_property_light_bake_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_angular_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_angular_distance** = ``0.0`` :ref:`🔗<class_Light3D_property_light_angular_distance>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

La taille angulaire de la lumière en degrés. Augmenter cela rendra les ombres plus douces à de plus grandes distances (également appelées PCSS : Percentage-Closer Soft Shadows, litt. "ombres douces en pourcentage de proximité"). Seulement disponible pour les :ref:`DirectionalLight3D<class_DirectionalLight3D>`\ s. Pour référence, le Soleil de la Terre est à environ ``0.5``. Augmenter cette valeur au-dessus de ``0.0`` pour les lumières avec des ombres activées aura un coût de performance notable en raison du PCSS.

\ **Note :** :ref:`light_angular_distance<class_Light3D_property_light_angular_distance>` n'est pas affecté par :ref:`Node3D.scale<class_Node3D_property_scale>` (l'échelle de la lumière ou l'échelle de ses parents).

\ **Note :** Les PCSS pour les lumières directionnelles ne sont seulement supportés que dans les méthodes de rendu Forward+, pas Mobile ou Compatibilité.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_bake_mode:

.. rst-class:: classref-property

:ref:`BakeMode<enum_Light3D_BakeMode>` **light_bake_mode** = ``2`` :ref:`🔗<class_Light3D_property_light_bake_mode>`

.. rst-class:: classref-property-setget

- |void| **set_bake_mode**\ (\ value\: :ref:`BakeMode<enum_Light3D_BakeMode>`\ )
- :ref:`BakeMode<enum_Light3D_BakeMode>` **get_bake_mode**\ (\ )

Le mode de pré-calcul de la lumière. Cela affectera les techniques d'éclairage global qui ont un effet sur le rendu de la lumière.

\ **Note :** Le mode d'éclairage global des maillages affectera également le rendu de l'éclairage global. Voir :ref:`GeometryInstance3D.gi_mode<class_GeometryInstance3D_property_gi_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **light_color** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_Light3D_property_light_color>`

.. rst-class:: classref-property-setget

- |void| **set_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_color**\ (\ )

La couleur de la lumière dans l'espace de couleur sRGB non-linéaire. Une couleur *sur-brillante* peut être utilisée pour un résultant équivalent à augmenter l'énergie :ref:`light_energy<class_Light3D_property_light_energy>` de la lumière.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **light_cull_mask** = ``4294967295`` :ref:`🔗<class_Light3D_property_light_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

La lumière affectera les objets dans les calques sélectionnés.

\ **Note :** Le masque de light cull est ignoré par :ref:`VoxelGI<class_VoxelGI>`, SDFGI, :ref:`LightmapGI<class_LightmapGI>`, et le brouillard volumétrique. Ceux-ci rendront toujours la lumière en ignorant le masque de cull. Voir aussi :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_energy** = ``1.0`` :ref:`🔗<class_Light3D_property_light_energy>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

Le multiplicateur de force de la lumière (ce n'est pas une unité physique). Pour :ref:`OmniLight3D<class_OmniLight3D>` et :ref:`SpotLight3D<class_SpotLight3D>`, changer cette valeur ne changera que l'intensité de la couleur de la lumière, et non le rayon de la lumière.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_indirect_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_indirect_energy** = ``1.0`` :ref:`🔗<class_Light3D_property_light_indirect_energy>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

Multiplicateur secondaire utilisé avec la lumière indirecte (rebonds de la lumière). Utilisé avec :ref:`VoxelGI<class_VoxelGI>` et SDFGI (voir :ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`).

\ **Note :** Cette propriété est ignorée si :ref:`light_energy<class_Light3D_property_light_energy>` est égal à ``0.0``, car la lumière ne sera pas présente du tout dans le shader GI.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_intensity_lumens:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_intensity_lumens** :ref:`🔗<class_Light3D_property_light_intensity_lumens>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

Utilisé par les lumières positionnelles (:ref:`OmniLight3D<class_OmniLight3D>` et :ref:`SpotLight3D<class_SpotLight3D>`) lorsque :ref:`ProjectSettings.rendering/lights_and_shadows/use_physical_light_units<class_ProjectSettings_property_rendering/lights_and_shadows/use_physical_light_units>` vaut ``true``. Définit l'intensité de la source de lumière mesurée en lumens. Les lumens sont une mesure du flux lumineux, qui est la quantité totale de lumière visible émise par une source lumineuse par unité de temps.

Pour les :ref:`SpotLight3D<class_SpotLight3D>`\ s, nous supposons que la zone à l'extérieur du cône visible est entourée d'un matériau absorbant parfaitement la lumière. Par conséquent, la luminosité apparente de la zone du cône ne change pas à mesure que le cône augmente et diminue en taille.

Une ampoule typique de maison peut aller d'environ 600 lumens à 1 200 lumens, une bougie est d'environ 13 lumens, tandis qu'une lumière de rue peut être d'environ 60 000 lumens.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_intensity_lux:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_intensity_lux** :ref:`🔗<class_Light3D_property_light_intensity_lux>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

Utilisé par les :ref:`DirectionalLight3D<class_DirectionalLight3D>`\ s lorsque :ref:`ProjectSettings.rendering/lights_and_shadows/use_physical_light_units<class_ProjectSettings_property_rendering/lights_and_shadows/use_physical_light_units>` vaut ``true``. Définit l'intensité de la source lumineuse mesurée en lux. Le lux est une mesure du flux lumineux par zone unitaire, il est égal à un lumen par mètre carré. Le lux est la mesure de combien de lumière frappe une surface à un moment donné.

Sur une journée ensoleillée claire, une surface en plein soleil peut être d'environ 100 000 lux, une pièce typique dans une maison peut être d'environ 50 lux, tandis que le sol éclairé par la lumière peut être d'environ 0,1 lux.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_negative:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **light_negative** = ``false`` :ref:`🔗<class_Light3D_property_light_negative>`

.. rst-class:: classref-property-setget

- |void| **set_negative**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_negative**\ (\ )

Si ``true``, l'effet de la lumière est inversé, assombrissant les zones et lançant des ombres lumineuses.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_projector:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **light_projector** :ref:`🔗<class_Light3D_property_light_projector>`

.. rst-class:: classref-property-setget

- |void| **set_projector**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_projector**\ (\ )

:ref:`Texture2D<class_Texture2D>` projetée par la lumière. :ref:`shadow_enabled<class_Light3D_property_shadow_enabled>` doit être activé pour que le projecteur fonctionne. Les projecteurs de lumière font apparaître la lumière comme si elle brillait à travers un objet coloré mais transparent, presque comme la lumière brillant à travers du verre teinté.

\ **Note :** Contrairement à :ref:`BaseMaterial3D<class_BaseMaterial3D>` dont le mode de filtrage peut être ajusté selon le matériau, le mode de filtrage pour les textures de projecteurs de lumière est défini globalement avec :ref:`ProjectSettings.rendering/textures/light_projectors/filter<class_ProjectSettings_property_rendering/textures/light_projectors/filter>`.

\ **Note :** Les textures de projecteurs de lumière ne sont supportées que dans les méthodes de rendu Forward+ et Mobile, pas Compatibilité.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_size** = ``0.0`` :ref:`🔗<class_Light3D_property_light_size>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

La taille de la lumière en unités de Godot. Seulement disponible pour les :ref:`OmniLight3D<class_OmniLight3D>`\ s et :ref:`SpotLight3D<class_SpotLight3D>`\ s. Augmenter cette valeur fera que la lumière disparaîtra plus lentement et que les ombres apparaîtront plus floues (également appelées PCSS : Percentage-Closer Soft Shadows, litt. "ombres douces en pourcentage de proximité"). Cela peut être utilisé pour simuler des lumières de zone dans une certaine mesure. Augmenter cette valeur au-dessus de ``0.0`` pour les lumières avec des ombres activées aura un coût de performance notable en raison des PCSS.

\ **Note :** :ref:`light_size<class_Light3D_property_light_size>` n'est pas affecté par :ref:`Node3D.scale<class_Node3D_property_scale>` (l'échelle de la lumière ou l'échelle de ses parents).

\ **Note :** Les PCSS pour les lumières positionnelles ne sont seulement supportés que dans les méthodes de rendu Forward+ et Mobile, pas Compatibilité.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_specular:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_specular** = ``1.0`` :ref:`🔗<class_Light3D_property_light_specular>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

L'intensité du reflet spéculaire dans les objets touchés par la lumière. Avec ``0``, la lumière devient une lumière purement diffuse. Si ça n'est pas une émission pré-calculée, cela peut être utilisé pour éviter des reflets irréalistes lorsqu'on place des lumières au-dessus d'une surface émise.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_temperature:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_temperature** :ref:`🔗<class_Light3D_property_light_temperature>`

.. rst-class:: classref-property-setget

- |void| **set_temperature**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_temperature**\ (\ )

Définit la température de couleur de la source lumineuse, mesurée en Kelvin. Ceci est utilisé pour calculer une température de couleur corrélée qui teinte la :ref:`light_color<class_Light3D_property_light_color>`.

Le soleil sur une journée nuageuse est à environ 6500 Kelvin, sur une journée ensoleillée, il est entre 5500 à 6000 Kelvin, et sur un jour ensoleillé au lever du soleil ou au coucher du soleil, il va jusqu'à environ 1850 Kelvin.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_light_volumetric_fog_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **light_volumetric_fog_energy** = ``1.0`` :ref:`🔗<class_Light3D_property_light_volumetric_fog_energy>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

Multiplicateur secondaire multiplié avec :ref:`light_energy<class_Light3D_property_light_energy>` puis utilisé avec le brouillard volumique de l':ref:`Environment<class_Environment>` (si activé). S'il est défini à ``0.0``, le calcul du brouillard volumétrique sera ignoré pour cette lumière, ce qui peut améliorer les performances pour de grandes quantités de lumières lorsque le brouillard volumétrique est activé.

\ **Note :** Pour empêcher les effets de lumière dynamiques à courte durée de mal interagir avec le brouillard volumétrique, les lumières utilisées dans ces effets devraient avoir :ref:`light_volumetric_fog_energy<class_Light3D_property_light_volumetric_fog_energy>` défini à ``0.0`` à moins que :ref:`Environment.volumetric_fog_temporal_reprojection_enabled<class_Environment_property_volumetric_fog_temporal_reprojection_enabled>` ne soit désactivé (ou que la quantité de reprojection soit fortement diminuée).

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **shadow_bias** = ``0.1`` :ref:`🔗<class_Light3D_property_shadow_bias>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

Utilisé pour ajuster l'apparence de l'ombre. Une valeur trop petite résulte au auto-ombrage (« shadow acne »), et quqand trop grande, ça provoque des ombres séparées de l'objet qui crée l'ombre (« peter-panning »). Réglez selon les besoins.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_blur:

.. rst-class:: classref-property

:ref:`float<class_float>` **shadow_blur** = ``1.0`` :ref:`🔗<class_Light3D_property_shadow_blur>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

Floute les bords de l'ombre. Peut être utilisé pour cacher des artéfacts de pixels dans des shadow maps à basse résolution. Une haute valeur peut impacter la performance, faire apparaître les ombres granuleuses et peut causer d'autres artéfacts indésirables. Essayez de la garder le plus près possible de la valeur par défaut.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_caster_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **shadow_caster_mask** = ``4294967295`` :ref:`🔗<class_Light3D_property_shadow_caster_mask>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_caster_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_shadow_caster_mask**\ (\ )

La lumière ne projettera des ombres qu'en utilisant les objets des couches sélectionnées.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shadow_enabled** = ``false`` :ref:`🔗<class_Light3D_property_shadow_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_shadow**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **has_shadow**\ (\ )

Si ``true``, la lumière projettera des ombres en temps réel. Cela a un coût en performances important. N'activez le rendu des ombres que quand il fait une différence notable dans l'apparence de la scène, et envisagez d'utiliser :ref:`distance_fade_enabled<class_Light3D_property_distance_fade_enabled>` pour cacher la lumière si elle est loin de la :ref:`Camera3D<class_Camera3D>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_normal_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **shadow_normal_bias** = ``2.0`` :ref:`🔗<class_Light3D_property_shadow_normal_bias>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

Décale la recherche dans la lightmap par la normale de l'objet. Cela peut être utilisé pour réduire les artefacts d'auto-shadowing (litt. "auto-ombrage") sans utiliser :ref:`shadow_bias<class_Light3D_property_shadow_bias>`. En pratique, cette valeur devrait être ajustée en même temps que :ref:`shadow_bias<class_Light3D_property_shadow_bias>` pour réduire autant que possible les artéfacts.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_opacity:

.. rst-class:: classref-property

:ref:`float<class_float>` **shadow_opacity** = ``1.0`` :ref:`🔗<class_Light3D_property_shadow_opacity>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

L'opacité à utiliser pour rendre la shadow map de la lumière. Les valeurs inférieures à ``1.0`` font apparaître la lumière à travers les ombres. Cela peut être utilisé pour truquer l'éclairage global avec un coût de performance faible.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_reverse_cull_face:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shadow_reverse_cull_face** = ``false`` :ref:`🔗<class_Light3D_property_shadow_reverse_cull_face>`

.. rst-class:: classref-property-setget

- |void| **set_shadow_reverse_cull_face**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_shadow_reverse_cull_face**\ (\ )

Si ``true``, inverse le backface culling du maillage. Cela peut être utile lorsque vous avez un maillage plat qui a une lumière derrière lui. Si vous avez besoin de projeter une ombre sur les deux côtés du maillage, définissez le maillage pour utiliser des ombres double-faces avec :ref:`GeometryInstance3D.SHADOW_CASTING_SETTING_DOUBLE_SIDED<class_GeometryInstance3D_constant_SHADOW_CASTING_SETTING_DOUBLE_SIDED>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_property_shadow_transmittance_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **shadow_transmittance_bias** = ``0.05`` :ref:`🔗<class_Light3D_property_shadow_transmittance_bias>`

.. rst-class:: classref-property-setget

- |void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const|

.. container:: contribute

	There is currently no description for this property. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Light3D_method_get_correlated_color:

.. rst-class:: classref-method

:ref:`Color<class_Color>` **get_correlated_color**\ (\ ) |const| :ref:`🔗<class_Light3D_method_get_correlated_color>`

Renvoie la :ref:`Color<class_Color>` d'un corps noir idéalisé à la température de lumière :ref:`light_temperature<class_Light3D_property_light_temperature>` donnée. Cette valeur est calculée en interne en fonction de la :ref:`light_temperature<class_Light3D_property_light_temperature>`. Cette :ref:`Color<class_Color>` est multipliée par :ref:`light_color<class_Light3D_property_light_color>` avant d'être envoyée au :ref:`RenderingServer<class_RenderingServer>`.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_method_get_param:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`\ ) |const| :ref:`🔗<class_Light3D_method_get_param>`

Renvoie la valeur du paramètre :ref:`Param<enum_Light3D_Param>` spécifié.

.. rst-class:: classref-item-separator

----

.. _class_Light3D_method_set_param:

.. rst-class:: classref-method

|void| **set_param**\ (\ param\: :ref:`Param<enum_Light3D_Param>`, value\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Light3D_method_set_param>`

Définit la valeur du paramètre :ref:`Param<enum_Light3D_Param>` spécifié.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
