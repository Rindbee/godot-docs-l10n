:github_url: hide

.. _class_GeometryInstance3D:

GeometryInstance3D
==================

**Наследует:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`CPUParticles3D<class_CPUParticles3D>`, :ref:`CSGShape3D<class_CSGShape3D>`, :ref:`GPUParticles3D<class_GPUParticles3D>`, :ref:`Label3D<class_Label3D>`, :ref:`MeshInstance3D<class_MeshInstance3D>`, :ref:`MultiMeshInstance3D<class_MultiMeshInstance3D>`, :ref:`SpriteBase3D<class_SpriteBase3D>`

Базовый узел для визуальных экземпляров на основе геометрии.

.. rst-class:: classref-introduction-group

Описание
----------------

Базовый узел для визуальных экземпляров на основе геометрии. Имеет некоторые общие функции, такие как видимость и пользовательские материалы.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Диапазоны видимости (HLOD) <../tutorials/3d/visibility_ranges>`

.. rst-class:: classref-reftable-group

Свойства
----------------

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

Методы
------------

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

Перечисления
------------------------

.. _enum_GeometryInstance3D_ShadowCastingSetting:

.. rst-class:: classref-enumeration

enum **ShadowCastingSetting**: :ref:`🔗<enum_GeometryInstance3D_ShadowCastingSetting>`

.. _class_GeometryInstance3D_constant_SHADOW_CASTING_SETTING_OFF:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **SHADOW_CASTING_SETTING_OFF** = ``0``

Не будет отбрасывать тени. Используйте это для улучшения производительности для мелкой геометрии, которая вряд ли будет отбрасывать заметные тени (например, мусор).

.. _class_GeometryInstance3D_constant_SHADOW_CASTING_SETTING_ON:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **SHADOW_CASTING_SETTING_ON** = ``1``

Будет отбрасывать тени от всех видимых граней в GeometryInstance3D.

Будет учитываться отбраковка, поэтому грани, которые не визуализируются, не будут учитываться при отбрасывании тени.

.. _class_GeometryInstance3D_constant_SHADOW_CASTING_SETTING_DOUBLE_SIDED:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **SHADOW_CASTING_SETTING_DOUBLE_SIDED** = ``2``

Будут отбрасывать тени от всех видимых граней в GeometryInstance3D.

Не будут учитываться отбраковки, поэтому при отбрасывании тени будут учитываться все грани.

.. _class_GeometryInstance3D_constant_SHADOW_CASTING_SETTING_SHADOWS_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **SHADOW_CASTING_SETTING_SHADOWS_ONLY** = ``3``

Покажет только тени, отбрасываемые этим объектом.

Другими словами, сама сетка не будет видна, будут видны только тени, отбрасываемые сеткой.

.. rst-class:: classref-item-separator

----

.. _enum_GeometryInstance3D_GIMode:

.. rst-class:: classref-enumeration

enum **GIMode**: :ref:`🔗<enum_GeometryInstance3D_GIMode>`

.. _class_GeometryInstance3D_constant_GI_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`GIMode<enum_GeometryInstance3D_GIMode>` **GI_MODE_DISABLED** = ``0``

Отключенный режим глобального освещения. Используйте для динамических объектов, которые не вносят вклад в глобальное освещение (например, персонажей). При использовании :ref:`VoxelGI<class_VoxelGI>` и SDFGI геометрия будет *получать* непрямое освещение и отражения, но геометрия не будет учитываться при запекании GI.

.. _class_GeometryInstance3D_constant_GI_MODE_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`GIMode<enum_GeometryInstance3D_GIMode>` **GI_MODE_STATIC** = ``1``

Режим запеченного глобального освещения. Используется для статических объектов, которые способствуют глобальному освещению (например, геометрия уровня). Этот режим GI эффективен при использовании :ref:`VoxelGI<class_VoxelGI>`, SDFGI и :ref:`LightmapGI<class_LightmapGI>`.

.. _class_GeometryInstance3D_constant_GI_MODE_DYNAMIC:

.. rst-class:: classref-enumeration-constant

:ref:`GIMode<enum_GeometryInstance3D_GIMode>` **GI_MODE_DYNAMIC** = ``2``

Режим динамического глобального освещения. Используется для динамических объектов, которые способствуют глобальному освещению. Этот режим GI эффективен только при использовании :ref:`VoxelGI<class_VoxelGI>`, но он оказывает большее влияние на производительность, чем :ref:`GI_MODE_STATIC<class_GeometryInstance3D_constant_GI_MODE_STATIC>`. При использовании других методов GI это будет действовать так же, как :ref:`GI_MODE_DISABLED<class_GeometryInstance3D_constant_GI_MODE_DISABLED>`. При использовании :ref:`LightmapGI<class_LightmapGI>` объект будет получать непрямое освещение с помощью зондов карты освещения вместо использования запеченной текстуры карты освещения.

.. rst-class:: classref-item-separator

----

.. _enum_GeometryInstance3D_LightmapScale:

.. rst-class:: classref-enumeration

enum **LightmapScale**: :ref:`🔗<enum_GeometryInstance3D_LightmapScale>`

.. _class_GeometryInstance3D_constant_LIGHTMAP_SCALE_1X:

.. rst-class:: classref-enumeration-constant

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **LIGHTMAP_SCALE_1X** = ``0``

**Устарело:** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

Стандартная плотность текселей для светового отображения с помощью :ref:`LightmapGI<class_LightmapGI>`.

.. _class_GeometryInstance3D_constant_LIGHTMAP_SCALE_2X:

.. rst-class:: classref-enumeration-constant

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **LIGHTMAP_SCALE_2X** = ``1``

**Устарело:** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

Умножает плотность текселей на 2× для отображения освещения с помощью :ref:`LightmapGI<class_LightmapGI>`. Чтобы обеспечить постоянство плотности текселей, используйте это при масштабировании сетки с коэффициентом от 1,5 до 3,0.

.. _class_GeometryInstance3D_constant_LIGHTMAP_SCALE_4X:

.. rst-class:: classref-enumeration-constant

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **LIGHTMAP_SCALE_4X** = ``2``

**Устарело:** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

Умножает плотность текселей на 4× для отображения освещения с помощью :ref:`LightmapGI<class_LightmapGI>`. Чтобы обеспечить постоянство плотности текселей, используйте это при масштабировании сетки с коэффициентом от 3,0 до 6,0.

.. _class_GeometryInstance3D_constant_LIGHTMAP_SCALE_8X:

.. rst-class:: classref-enumeration-constant

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **LIGHTMAP_SCALE_8X** = ``3``

**Устарело:** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

Умножает плотность текселей на 8× для отображения освещения с помощью :ref:`LightmapGI<class_LightmapGI>`. Чтобы обеспечить постоянство плотности текселей, используйте это при масштабировании сетки с коэффициентом больше 6,0.

.. _class_GeometryInstance3D_constant_LIGHTMAP_SCALE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **LIGHTMAP_SCALE_MAX** = ``4``

**Устарело:** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

Представляет размер перечисления :ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>`.

.. rst-class:: classref-item-separator

----

.. _enum_GeometryInstance3D_VisibilityRangeFadeMode:

.. rst-class:: classref-enumeration

enum **VisibilityRangeFadeMode**: :ref:`🔗<enum_GeometryInstance3D_VisibilityRangeFadeMode>`

.. _class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` **VISIBILITY_RANGE_FADE_DISABLED** = ``0``

Не будет затухать ни сам, ни его видимые зависимости, вместо этого будет использоваться гистерезис. Это самый быстрый подход к ручному LOD, но он может привести к заметным переходам LOD в зависимости от того, как созданы сетки LOD. Для получения дополнительной информации см. :ref:`vision_range_begin<class_GeometryInstance3D_property_vision_range_begin>` и :ref:`Node3D.visibility_parent<class_Node3D_property_visibility_parent>`.

.. _class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_SELF:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` **VISIBILITY_RANGE_FADE_SELF** = ``1``

Будет постепенно исчезать при достижении границ своего диапазона видимости. Это медленнее, чем :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>`, но может обеспечить более плавные переходы. Диапазон постепенного исчезновения определяется :ref:`vision_range_begin_margin<class_GeometryInstance3D_property_vision_range_begin_margin>` и :ref:`vision_range_end_margin<class_GeometryInstance3D_property_vision_range_end_margin>`.

\ **Примечание:** Поддерживается только при использовании метода рендеринга Forward+. При использовании метода рендеринга Mobile или Compatibility этот режим действует как :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>`, но с отключенным гистерезисом.

.. _class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DEPENDENCIES:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` **VISIBILITY_RANGE_FADE_DEPENDENCIES** = ``2``

Будет постепенно проявлять свои зависимости видимости (см. :ref:`Node3D.visibility_parent<class_Node3D_property_visibility_parent>`) при достижении границ своего собственного диапазона видимости. Это медленнее, чем :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>`, но может обеспечить более плавные переходы. Диапазон затухания определяется :ref:`vision_range_begin_margin<class_GeometryInstance3D_property_vision_range_begin_margin>` и :ref:`vision_range_end_margin<class_GeometryInstance3D_property_vision_range_end_margin>`.

\ **Примечание:** Поддерживается только при использовании метода рендеринга Forward+. При использовании метода рендеринга Mobile или Compatibility этот режим действует как :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>`, но с отключенным гистерезисом.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_GeometryInstance3D_property_cast_shadow:

.. rst-class:: classref-property

:ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **cast_shadow** = ``1`` :ref:`🔗<class_GeometryInstance3D_property_cast_shadow>`

.. rst-class:: classref-property-setget

- |void| **set_cast_shadows_setting**\ (\ value\: :ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>`\ )
- :ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **get_cast_shadows_setting**\ (\ )

Выбранный флаг отбрасывания тени.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_custom_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **custom_aabb** = ``AABB(0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_GeometryInstance3D_property_custom_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_custom_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_custom_aabb**\ (\ )

Переопределяет ограничивающий прямоугольник этого узла на пользовательский. Это можно использовать, чтобы избежать дорогостоящего пересчета :ref:`AABB<class_AABB>`, который происходит, когда скелет используется с :ref:`MeshInstance3D<class_MeshInstance3D>`, или чтобы иметь точный контроль над ограничивающим прямоугольником :ref:`MeshInstance3D<class_MeshInstance3D>`. Чтобы использовать AABB по умолчанию, установите значение :ref:`AABB<class_AABB>` со всеми полями, установленными на ``0.0``. Чтобы избежать отбраковки по усеченному контуру, установите :ref:`custom_aabb<class_GeometryInstance3D_property_custom_aabb>` на очень большой AABB, который охватывает весь ваш игровой мир, например ``AABB(-10000, -10000, -10000, 20000, 20000, 20000)``. Чтобы отключить все формы отсечения (включая отсечение окклюзии), вызовите :ref:`RenderingServer.instance_set_ignore_culling()<class_RenderingServer_method_instance_set_ignore_culling>` для :ref:`RID<class_RID>` **GeometryInstance3D**.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_extra_cull_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **extra_cull_margin** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_extra_cull_margin>`

.. rst-class:: classref-property-setget

- |void| **set_extra_cull_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_extra_cull_margin**\ (\ )

Дополнительное расстояние, добавленное к ограничивающему прямоугольнику GeometryInstance3D (:ref:`AABB<class_AABB>`) для увеличения его области отбраковки.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_gi_lightmap_scale:

.. rst-class:: classref-property

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **gi_lightmap_scale** = ``0`` :ref:`🔗<class_GeometryInstance3D_property_gi_lightmap_scale>`

.. rst-class:: classref-property-setget

- |void| **set_lightmap_scale**\ (\ value\: :ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>`\ )
- :ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **get_lightmap_scale**\ (\ )

**Устарело:** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

Плотность текселей, используемая для отображения освещения в :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_gi_lightmap_texel_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **gi_lightmap_texel_scale** = ``1.0`` :ref:`🔗<class_GeometryInstance3D_property_gi_lightmap_texel_scale>`

.. rst-class:: classref-property-setget

- |void| **set_lightmap_texel_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lightmap_texel_scale**\ (\ )

Плотность текселей для использования при отображении освещения в :ref:`LightmapGI<class_LightmapGI>`. Большие значения масштаба обеспечивают более высокое разрешение в карте освещения, что может привести к более резким теням для источников света, которые имеют как прямой, так и непрямой свет, запеченный. Однако большие значения масштаба также увеличат пространство, занимаемое сеткой в текстуре карты освещения, что увеличивает требования к памяти, хранению и времени запекания. При использовании одной сетки в разных масштабах рассмотрите возможность корректировки этого значения, чтобы сохранить плотность текселей карты освещения одинаковой для всех сеток.

Например, удвоение :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` удваивает разрешение текстуры карты освещения для этого объекта *на каждой оси*, поэтому это *учетверит* количество текселей.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_gi_mode:

.. rst-class:: classref-property

:ref:`GIMode<enum_GeometryInstance3D_GIMode>` **gi_mode** = ``1`` :ref:`🔗<class_GeometryInstance3D_property_gi_mode>`

.. rst-class:: classref-property-setget

- |void| **set_gi_mode**\ (\ value\: :ref:`GIMode<enum_GeometryInstance3D_GIMode>`\ )
- :ref:`GIMode<enum_GeometryInstance3D_GIMode>` **get_gi_mode**\ (\ )

Режим глобального освещения для использования во всей геометрии. Чтобы избежать непоследовательных результатов, используйте режим, который соответствует назначению сетки во время игры (статичный/динамичный).

\ **Примечание:** Режим запекания источников света также повлияет на рендеринг глобального освещения. См. :ref:`Light3D.light_bake_mode<class_Light3D_property_light_bake_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_ignore_occlusion_culling:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ignore_occlusion_culling** = ``false`` :ref:`🔗<class_GeometryInstance3D_property_ignore_occlusion_culling>`

.. rst-class:: classref-property-setget

- |void| **set_ignore_occlusion_culling**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ignoring_occlusion_culling**\ (\ )

Если ``true``, отключает отсечение окклюзии для этого экземпляра. Полезно для гизмо, которые должны быть визуализированы даже при использовании отсечения окклюзии.

\ **Примечание:** :ref:`ignore_occlusion_culling<class_GeometryInstance3D_property_ignore_occlusion_culling>` не влияет на отсечение усеченной пирамиды (что происходит, когда объект не виден из-за угла камеры). Чтобы избежать отсечения усеченной пирамиды, установите :ref:`custom_aabb<class_GeometryInstance3D_property_custom_aabb>` на очень большой AABB, который охватывает весь ваш игровой мир, например, ``AABB(-10000, -10000, -10000, 20000, 20000, 20000)``.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_lod_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **lod_bias** = ``1.0`` :ref:`🔗<class_GeometryInstance3D_property_lod_bias>`

.. rst-class:: classref-property-setget

- |void| **set_lod_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lod_bias**\ (\ )

Изменяет скорость перехода сетки на более низкий уровень детализации. Значение 0 принудительно переведет сетку на самый низкий уровень детализации, значение 1 будет использовать настройки по умолчанию, а более высокие значения будут поддерживать сетку на более высоком уровне детализации на более дальних расстояниях.

Полезно для тестирования переходов уровня детализации в редакторе.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_material_overlay:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material_overlay** :ref:`🔗<class_GeometryInstance3D_property_material_overlay>`

.. rst-class:: classref-property-setget

- |void| **set_material_overlay**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material_overlay**\ (\ )

Наложение материала на всю геометрию.

Если материал назначен этому свойству, он будет отображаться поверх любого другого активного материала для всех поверхностей.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_material_override:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material_override** :ref:`🔗<class_GeometryInstance3D_property_material_override>`

.. rst-class:: classref-property-setget

- |void| **set_material_override**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material_override**\ (\ )

Переопределение материала для всей геометрии.

Если этому свойству назначен материал, он будет использоваться вместо любого материала, установленного в любом слоте материала сетки.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_transparency:

.. rst-class:: classref-property

:ref:`float<class_float>` **transparency** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_transparency>`

.. rst-class:: classref-property-setget

- |void| **set_transparency**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_transparency**\ (\ )

Прозрачность, применяемая ко всей геометрии (как множитель существующей прозрачности материалов). ``0.0`` полностью непрозрачен, а ``1.0`` полностью прозрачен. Значения больше ``0.0`` (исключительно) заставят материалы геометрии проходить через прозрачный конвейер, который медленнее рендерится и может вызывать проблемы рендеринга из-за неправильной сортировки прозрачности. Однако, в отличие от использования прозрачного материала, установка :ref:`transparent<class_GeometryInstance3D_property_transparent>` на значение больше ``0.0`` (исключительно) *не* отключит рендеринг теней.

В пространственных (Spatial) шейдерах ``1.0 - transparent`` устанавливается как значение по умолчанию встроенного ``ALPHA``.

\ **Примечание:** :ref:`transparency<class_GeometryInstance3D_property_transparency>` ограничена между ``0.0`` и ``1.0``, поэтому это свойство нельзя использовать для того, чтобы сделать прозрачные материалы более непрозрачными, чем они есть изначально.

\ **Примечание:** Поддерживается только при использовании метода рендеринга Forward+. При использовании метода рендеринга Mobile или Compatibility :ref:`transparency<class_GeometryInstance3D_property_transparency>` игнорируется и всегда считается равной ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_visibility_range_begin:

.. rst-class:: classref-property

:ref:`float<class_float>` **visibility_range_begin** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_visibility_range_begin>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_range_begin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_visibility_range_begin**\ (\ )

Начальное расстояние, с которого GeometryInstance3D будет виден, принимая во внимание также :ref:`vision_range_begin_margin<class_GeometryInstance3D_property_vision_range_begin_margin>`. Значение по умолчанию 0 используется для отключения проверки диапазона.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_visibility_range_begin_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **visibility_range_begin_margin** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_visibility_range_begin_margin>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_range_begin_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_visibility_range_begin_margin**\ (\ )

Запас для порога :ref:`vision_range_begin<class_GeometryInstance3D_property_vision_range_begin>`. GeometryInstance3D изменит свое состояние видимости только тогда, когда оно превысит или упадет ниже порога :ref:`vision_range_begin<class_GeometryInstance3D_property_vision_range_begin>` на эту величину.

Если :ref:`vision_range_fade_mode<class_GeometryInstance3D_property_vision_range_fade_mode>` равно :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>`, это действует как расстояние гистерезиса. Если :ref:`vision_range_fade_mode<class_GeometryInstance3D_property_vision_range_fade_mode>` равно :ref:`VISIBILITY_RANGE_FADE_SELF<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_SELF>` или :ref:`VISIBILITY_RANGE_FADE_DEPENDENCIES<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DEPENDENCIES>`, это действует как расстояние перехода с затуханием и должно быть установлено на значение больше ``0.0``, чтобы эффект был заметен.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_visibility_range_end:

.. rst-class:: classref-property

:ref:`float<class_float>` **visibility_range_end** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_visibility_range_end>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_range_end**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_visibility_range_end**\ (\ )

Расстояние, с которого GeometryInstance3D будет скрыт, принимая во внимание также :ref:`vision_range_end_margin<class_GeometryInstance3D_property_vision_range_end_margin>`. Значение по умолчанию 0 используется для отключения проверки диапазона.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_visibility_range_end_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **visibility_range_end_margin** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_visibility_range_end_margin>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_range_end_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_visibility_range_end_margin**\ (\ )

Запас для порога :ref:`vision_range_end<class_GeometryInstance3D_property_vision_range_end>`. GeometryInstance3D изменит свое состояние видимости только тогда, когда оно превысит или упадет ниже порога :ref:`vision_range_end<class_GeometryInstance3D_property_vision_range_end>` на эту величину.

Если :ref:`vision_range_fade_mode<class_GeometryInstance3D_property_vision_range_fade_mode>` равно :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>`, это действует как расстояние гистерезиса. Если :ref:`vision_range_fade_mode<class_GeometryInstance3D_property_vision_range_fade_mode>` равно :ref:`VISIBILITY_RANGE_FADE_SELF<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_SELF>` или :ref:`VISIBILITY_RANGE_FADE_DEPENDENCIES<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DEPENDENCIES>`, это действует как расстояние перехода с затуханием и должно быть установлено на значение больше ``0.0``, чтобы эффект был заметен.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_visibility_range_fade_mode:

.. rst-class:: classref-property

:ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` **visibility_range_fade_mode** = ``0`` :ref:`🔗<class_GeometryInstance3D_property_visibility_range_fade_mode>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_range_fade_mode**\ (\ value\: :ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>`\ )
- :ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` **get_visibility_range_fade_mode**\ (\ )

Управляет тем, какие экземпляры будут исчезать при приближении к границам диапазона видимости.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_GeometryInstance3D_method_get_instance_shader_parameter:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_instance_shader_parameter**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_GeometryInstance3D_method_get_instance_shader_parameter>`

Получить значение параметра шейдера, установленное для данного экземпляра.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_method_set_instance_shader_parameter:

.. rst-class:: classref-method

|void| **set_instance_shader_parameter**\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GeometryInstance3D_method_set_instance_shader_parameter>`

Установите значение шейдерной униформы только для этого экземпляра (`per-instance униформа <../tutorials/shaders/shader_reference/shading_language.html#per-instance-uniforms>`__). См. также :ref:`ShaderMaterial.set_shader_parameter()<class_ShaderMaterial_method_set_shader_parameter>`, чтобы назначить униформу для всех экземпляров, использующих один и тот же :ref:`ShaderMaterial<class_ShaderMaterial>`.

\ **Примечание:** Чтобы шейдерную униформу можно было назначать для каждого экземпляра, она *должна* быть определена с помощью ``instance uniform ...``, а не ``uniform ...`` в коде шейдера.

\ **Примечание:** ``name`` чувствительна к регистру и должна точно соответствовать имени униформы в коде (а не заглавному имени в инспекторе).

\ **Примечание:** Униформы шейдера для каждого экземпляра доступны только в шейдерах Spatial и CanvasItem, но не для шейдеров Fog, Sky или Particles.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
