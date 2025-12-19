:github_url: hide

.. meta::
	:keywords: environment, envmap

.. _class_ReflectionProbe:

ReflectionProbe
===============

**Hérite de :** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Capture son environnement pour créer des réflexions rapides et précises depuis un point donné.

.. rst-class:: classref-introduction-group

Description
-----------

Captures its surroundings as a cubemap, and stores versions of it with increasing levels of blur to simulate different material roughnesses.

The **ReflectionProbe** is used to create high-quality reflections at a low performance cost (when :ref:`update_mode<class_ReflectionProbe_property_update_mode>` is :ref:`UPDATE_ONCE<class_ReflectionProbe_constant_UPDATE_ONCE>`). **ReflectionProbe**\ s can be blended together and with the rest of the scene smoothly. **ReflectionProbe**\ s can also be combined with :ref:`VoxelGI<class_VoxelGI>`, SDFGI (:ref:`Environment.sdfgi_enabled<class_Environment_property_sdfgi_enabled>`) and screen-space reflections (:ref:`Environment.ssr_enabled<class_Environment_property_ssr_enabled>`) to get more accurate reflections in specific areas. **ReflectionProbe**\ s render all objects within their :ref:`cull_mask<class_ReflectionProbe_property_cull_mask>`, so updating them can be quite expensive. It is best to update them once with the important static objects and then leave them as-is.

\ **Note:** Unlike :ref:`VoxelGI<class_VoxelGI>` and SDFGI, **ReflectionProbe**\ s only source their environment from a :ref:`WorldEnvironment<class_WorldEnvironment>` node. If you specify an :ref:`Environment<class_Environment>` resource within a :ref:`Camera3D<class_Camera3D>` node, it will be ignored by the **ReflectionProbe**. This can lead to incorrect lighting within the **ReflectionProbe**.

\ **Note:** When using the Mobile rendering method, only ``8`` reflection probes can be displayed on each mesh resource, while the Compatibility rendering method only supports up to ``2`` reflection probes on each mesh. Attempting to display more than ``8`` reflection probes on a single mesh resource using the Mobile renderer will result in reflection probes flickering in and out as the camera moves, while the Compatibility renderer will not render any additional probes if more than ``2`` reflection probes are being used.

\ **Note:** When using the Mobile rendering method, reflection probes will only correctly affect meshes whose visibility AABB intersects with the reflection probe's AABB. If using a shader to deform the mesh in a way that makes it go outside its AABB, :ref:`GeometryInstance3D.extra_cull_margin<class_GeometryInstance3D_property_extra_cull_margin>` must be increased on the mesh. Otherwise, the reflection probe may not be visible on the mesh.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Sondes de réflexion <../tutorials/3d/global_illumination/reflection_probes>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`Color<class_Color>`                            | :ref:`ambient_color<class_ReflectionProbe_property_ambient_color>`               | ``Color(0, 0, 0, 1)``   |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                            | :ref:`ambient_color_energy<class_ReflectionProbe_property_ambient_color_energy>` | ``1.0``                 |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` | :ref:`ambient_mode<class_ReflectionProbe_property_ambient_mode>`                 | ``1``                   |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                            | :ref:`blend_distance<class_ReflectionProbe_property_blend_distance>`             | ``1.0``                 |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                              | :ref:`box_projection<class_ReflectionProbe_property_box_projection>`             | ``false``               |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                | :ref:`cull_mask<class_ReflectionProbe_property_cull_mask>`                       | ``1048575``             |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                              | :ref:`enable_shadows<class_ReflectionProbe_property_enable_shadows>`             | ``false``               |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                            | :ref:`intensity<class_ReflectionProbe_property_intensity>`                       | ``1.0``                 |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                              | :ref:`interior<class_ReflectionProbe_property_interior>`                         | ``false``               |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                            | :ref:`max_distance<class_ReflectionProbe_property_max_distance>`                 | ``0.0``                 |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`float<class_float>`                            | :ref:`mesh_lod_threshold<class_ReflectionProbe_property_mesh_lod_threshold>`     | ``1.0``                 |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`Vector3<class_Vector3>`                        | :ref:`origin_offset<class_ReflectionProbe_property_origin_offset>`               | ``Vector3(0, 0, 0)``    |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                                | :ref:`reflection_mask<class_ReflectionProbe_property_reflection_mask>`           | ``1048575``             |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`Vector3<class_Vector3>`                        | :ref:`size<class_ReflectionProbe_property_size>`                                 | ``Vector3(20, 20, 20)`` |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+
   | :ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>`   | :ref:`update_mode<class_ReflectionProbe_property_update_mode>`                   | ``0``                   |
   +------------------------------------------------------+----------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_ReflectionProbe_UpdateMode:

.. rst-class:: classref-enumeration

enum **UpdateMode**: :ref:`🔗<enum_ReflectionProbe_UpdateMode>`

.. _class_ReflectionProbe_constant_UPDATE_ONCE:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>` **UPDATE_ONCE** = ``0``

Mettre à jour la sonde une fois lors de la prochaine trame (recommandé pour la plupart des objets). La radiance map correspondante sera générée sur les six trames suivantes. Cela prend plus de temps pour mettre à jour que :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>`, mais a un coût sur les performances inférieur et peut entraîner des réflexions de qualité supérieure. La ReflectionProbe est mise à jour lorsque sa transformation change, mais pas lorsque la géométrie voisine change. Vous pouvez forcer une **ReflectionProbe** à jour en déplaçant la **ReflectionProbe** légèrement dans n'importe quelle direction.

.. _class_ReflectionProbe_constant_UPDATE_ALWAYS:

.. rst-class:: classref-enumeration-constant

:ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>` **UPDATE_ALWAYS** = ``1``

Met à jour la sonde à chaque trame. Cela fournit de meilleurs résultats pour les objets dynamiques en mouvement rapide (comme les voitures). Cependant, cela a un coût sur les performances important. En raison du coût, il est recommandé d'utiliser seulement une ReflectionProbe avec :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` au maximum par scène. Pour tous les autres cas d'utilisation, utilisez :ref:`UPDATE_ONCE<class_ReflectionProbe_constant_UPDATE_ONCE>`.

.. rst-class:: classref-item-separator

----

.. _enum_ReflectionProbe_AmbientMode:

.. rst-class:: classref-enumeration

enum **AmbientMode**: :ref:`🔗<enum_ReflectionProbe_AmbientMode>`

.. _class_ReflectionProbe_constant_AMBIENT_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` **AMBIENT_DISABLED** = ``0``

Do not apply any ambient lighting inside the **ReflectionProbe**'s box defined by its :ref:`size<class_ReflectionProbe_property_size>`.

.. _class_ReflectionProbe_constant_AMBIENT_ENVIRONMENT:

.. rst-class:: classref-enumeration-constant

:ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` **AMBIENT_ENVIRONMENT** = ``1``

Apply automatically-sourced environment lighting inside the **ReflectionProbe**'s box defined by its :ref:`size<class_ReflectionProbe_property_size>`.

.. _class_ReflectionProbe_constant_AMBIENT_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` **AMBIENT_COLOR** = ``2``

Apply custom ambient lighting inside the **ReflectionProbe**'s box defined by its :ref:`size<class_ReflectionProbe_property_size>`. See :ref:`ambient_color<class_ReflectionProbe_property_ambient_color>` and :ref:`ambient_color_energy<class_ReflectionProbe_property_ambient_color_energy>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_ReflectionProbe_property_ambient_color:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **ambient_color** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_ReflectionProbe_property_ambient_color>`

.. rst-class:: classref-property-setget

- |void| **set_ambient_color**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_ambient_color**\ (\ )

La couleur ambiante personnalisée à utiliser dans la boîte de la **ReflectionProbe** définie par sa taille :ref:`size<class_ReflectionProbe_property_size>`. Seulement effectif si :ref:`ambient_mode<class_ReflectionProbe_property_ambient_mode>` vaut :ref:`AMBIENT_COLOR<class_ReflectionProbe_constant_AMBIENT_COLOR>`.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_ambient_color_energy:

.. rst-class:: classref-property

:ref:`float<class_float>` **ambient_color_energy** = ``1.0`` :ref:`🔗<class_ReflectionProbe_property_ambient_color_energy>`

.. rst-class:: classref-property-setget

- |void| **set_ambient_color_energy**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_ambient_color_energy**\ (\ )

L'énergie de la couleur ambiante personnalisée à utiliser dans la boîte de la **ReflectionProbe** définie par sa taille :ref:`size<class_ReflectionProbe_property_size>`. Seulement effective si :ref:`ambient_mode<class_ReflectionProbe_property_ambient_mode>` vaut :ref:`AMBIENT_COLOR<class_ReflectionProbe_constant_AMBIENT_COLOR>`.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_ambient_mode:

.. rst-class:: classref-property

:ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` **ambient_mode** = ``1`` :ref:`🔗<class_ReflectionProbe_property_ambient_mode>`

.. rst-class:: classref-property-setget

- |void| **set_ambient_mode**\ (\ value\: :ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>`\ )
- :ref:`AmbientMode<enum_ReflectionProbe_AmbientMode>` **get_ambient_mode**\ (\ )

La couleur ambiante personnalisée à utiliser dans la boîte de la **ReflectionProbe** définie par sa taille :ref:`size<class_ReflectionProbe_property_size>`. La couleur ambiante se mélangera en douceur avec d'autres **ReflectionProbe**\ s et le reste de la scène (à l'extérieur de la boîte de la **ReflectionProbe** définie par sa taille :ref:`size<class_ReflectionProbe_property_size>`).

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_blend_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **blend_distance** = ``1.0`` :ref:`🔗<class_ReflectionProbe_property_blend_distance>`

.. rst-class:: classref-property-setget

- |void| **set_blend_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_blend_distance**\ (\ )

Définit la distance en mètres sur laquelle une sonde se mélange avec la scène.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_box_projection:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **box_projection** = ``false`` :ref:`🔗<class_ReflectionProbe_property_box_projection>`

.. rst-class:: classref-property-setget

- |void| **set_enable_box_projection**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_box_projection_enabled**\ (\ )

Si ``true``, active la projection sur boîte. Cela rend les réflexions plus correctes dans les salles en forme de rectangle en décalant le centre de réflexion en fonction de l'emplacement de la caméra.

\ **Note :** Pour mieux s'adapter aux pièces en forme de rectangle qui ne sont pas alignées sur la grille, vous pouvez tourner le nœud **ReflectionProbe**.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_cull_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **cull_mask** = ``1048575`` :ref:`🔗<class_ReflectionProbe_property_cull_mask>`

.. rst-class:: classref-property-setget

- |void| **set_cull_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_cull_mask**\ (\ )

Sets the cull mask which determines what objects are drawn by this probe. Every :ref:`VisualInstance3D<class_VisualInstance3D>` with a layer included in this cull mask will be rendered by the probe. It is best to only include large objects which are likely to take up a lot of space in the reflection in order to save on rendering cost.

This can also be used to prevent an object from reflecting upon itself (for instance, a **ReflectionProbe** centered on a vehicle).

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_enable_shadows:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_shadows** = ``false`` :ref:`🔗<class_ReflectionProbe_property_enable_shadows>`

.. rst-class:: classref-property-setget

- |void| **set_enable_shadows**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **are_shadows_enabled**\ (\ )

If ``true``, computes shadows in the reflection probe. This makes the reflection probe slower to render; you may want to disable this if using the :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` :ref:`update_mode<class_ReflectionProbe_property_update_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_intensity:

.. rst-class:: classref-property

:ref:`float<class_float>` **intensity** = ``1.0`` :ref:`🔗<class_ReflectionProbe_property_intensity>`

.. rst-class:: classref-property-setget

- |void| **set_intensity**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_intensity**\ (\ )

Définit l'intensité de la réflexion. L'intensité modifie l'importance de l'effet de réflexion.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_interior:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **interior** = ``false`` :ref:`🔗<class_ReflectionProbe_property_interior>`

.. rst-class:: classref-property-setget

- |void| **set_as_interior**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_set_as_interior**\ (\ )

If ``true``, reflections will ignore sky contribution.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_max_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **max_distance** = ``0.0`` :ref:`🔗<class_ReflectionProbe_property_max_distance>`

.. rst-class:: classref-property-setget

- |void| **set_max_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max_distance**\ (\ )

The maximum distance away from the **ReflectionProbe** an object can be before it is culled. Decrease this to improve performance, especially when using the :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` :ref:`update_mode<class_ReflectionProbe_property_update_mode>`.

\ **Note:** The maximum reflection distance is always at least equal to the probe's extents. This means that decreasing :ref:`max_distance<class_ReflectionProbe_property_max_distance>` will not always cull objects from reflections, especially if the reflection probe's box defined by its :ref:`size<class_ReflectionProbe_property_size>` is already large.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_mesh_lod_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **mesh_lod_threshold** = ``1.0`` :ref:`🔗<class_ReflectionProbe_property_mesh_lod_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_mesh_lod_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_mesh_lod_threshold**\ (\ )

The automatic LOD bias to use for meshes rendered within the **ReflectionProbe** (this is analog to :ref:`Viewport.mesh_lod_threshold<class_Viewport_property_mesh_lod_threshold>`). Higher values will use less detailed versions of meshes that have LOD variations generated. If set to ``0.0``, automatic LOD is disabled. Increase :ref:`mesh_lod_threshold<class_ReflectionProbe_property_mesh_lod_threshold>` to improve performance at the cost of geometry detail, especially when using the :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>` :ref:`update_mode<class_ReflectionProbe_property_update_mode>`.

\ **Note:** :ref:`mesh_lod_threshold<class_ReflectionProbe_property_mesh_lod_threshold>` does not affect :ref:`GeometryInstance3D<class_GeometryInstance3D>` visibility ranges (also known as "manual" LOD or hierarchical LOD).

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_origin_offset:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **origin_offset** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_ReflectionProbe_property_origin_offset>`

.. rst-class:: classref-property-setget

- |void| **set_origin_offset**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_origin_offset**\ (\ )

Sets the origin offset to be used when this **ReflectionProbe** is in :ref:`box_projection<class_ReflectionProbe_property_box_projection>` mode. This can be set to a non-zero value to ensure a reflection fits a rectangle-shaped room, while reducing the number of objects that "get in the way" of the reflection.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_reflection_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **reflection_mask** = ``1048575`` :ref:`🔗<class_ReflectionProbe_property_reflection_mask>`

.. rst-class:: classref-property-setget

- |void| **set_reflection_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_reflection_mask**\ (\ )

Sets the reflection mask which determines what objects have reflections applied from this probe. Every :ref:`VisualInstance3D<class_VisualInstance3D>` with a layer included in this reflection mask will have reflections applied from this probe. See also :ref:`cull_mask<class_ReflectionProbe_property_cull_mask>`, which can be used to exclude objects from appearing in the reflection while still making them affected by the **ReflectionProbe**.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(20, 20, 20)`` :ref:`🔗<class_ReflectionProbe_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_size**\ (\ )

The size of the reflection probe. The larger the size, the more space covered by the probe, which will lower the perceived resolution. It is best to keep the size only as large as you need it.

\ **Note:** To better fit areas that are not aligned to the grid, you can rotate the **ReflectionProbe** node.

.. rst-class:: classref-item-separator

----

.. _class_ReflectionProbe_property_update_mode:

.. rst-class:: classref-property

:ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>` **update_mode** = ``0`` :ref:`🔗<class_ReflectionProbe_property_update_mode>`

.. rst-class:: classref-property-setget

- |void| **set_update_mode**\ (\ value\: :ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>`\ )
- :ref:`UpdateMode<enum_ReflectionProbe_UpdateMode>` **get_update_mode**\ (\ )

Définit la fréquence de mise à jour de la **ReflectionProbe**. Peut être :ref:`UPDATE_ONCE<class_ReflectionProbe_constant_UPDATE_ONCE>` ou :ref:`UPDATE_ALWAYS<class_ReflectionProbe_constant_UPDATE_ALWAYS>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
