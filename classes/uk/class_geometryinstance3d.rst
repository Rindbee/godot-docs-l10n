:github_url: hide

.. _class_GeometryInstance3D:

GeometryInstance3D
==================

**Успадковує:** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`CPUParticles3D<class_CPUParticles3D>`, :ref:`CSGShape3D<class_CSGShape3D>`, :ref:`GPUParticles3D<class_GPUParticles3D>`, :ref:`Label3D<class_Label3D>`, :ref:`MeshInstance3D<class_MeshInstance3D>`, :ref:`MultiMeshInstance3D<class_MultiMeshInstance3D>`, :ref:`SpriteBase3D<class_SpriteBase3D>`

Базовий вузол для візуальних екземплярів геометрії.

.. rst-class:: classref-introduction-group

Опис
--------

Базовий вузол для візуальних екземплярів геометрії. Відповідає деякі загальні функціональні можливості, такі як видимість та нестандартні матеріали.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Діапазони життєздатності (HLOD) <../tutorials/3d/visibility_ranges>`

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Методи
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

Переліки
----------------

.. _enum_GeometryInstance3D_ShadowCastingSetting:

.. rst-class:: classref-enumeration

enum **ShadowCastingSetting**: :ref:`🔗<enum_GeometryInstance3D_ShadowCastingSetting>`

.. _class_GeometryInstance3D_constant_SHADOW_CASTING_SETTING_OFF:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **SHADOW_CASTING_SETTING_OFF** = ``0``

Не кинуться будь-які тіні. Використовуйте це для поліпшення продуктивності для малих геометрій, які навряд чи зливати помітні тіні (наприклад, сміття).

.. _class_GeometryInstance3D_constant_SHADOW_CASTING_SETTING_ON:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **SHADOW_CASTING_SETTING_ON** = ``1``

Увімкнені тіні з усіх видимих граней в GeometryInstance3D.

Враховуючи, що обличчя не будуть враховуватися, коли тіньне лиття.

.. _class_GeometryInstance3D_constant_SHADOW_CASTING_SETTING_DOUBLE_SIDED:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **SHADOW_CASTING_SETTING_DOUBLE_SIDED** = ``2``

Увімкнені тіні з усіх видимих граней в GeometryInstance3D.

Не враховуйте, щоб всі обличчя будуть враховані при тіні.

.. _class_GeometryInstance3D_constant_SHADOW_CASTING_SETTING_SHADOWS_ONLY:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowCastingSetting<enum_GeometryInstance3D_ShadowCastingSetting>` **SHADOW_CASTING_SETTING_SHADOWS_ONLY** = ``3``

Покажуть лише тіні, які відкинули цей об'єкт.

Іншими словами, фактична сіточка не буде видно, тільки тіні, які відлиті з сітки будуть.

.. rst-class:: classref-item-separator

----

.. _enum_GeometryInstance3D_GIMode:

.. rst-class:: classref-enumeration

enum **GIMode**: :ref:`🔗<enum_GeometryInstance3D_GIMode>`

.. _class_GeometryInstance3D_constant_GI_MODE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`GIMode<enum_GeometryInstance3D_GIMode>` **GI_MODE_DISABLED** = ``0``

Вимкнено глобальний режим освітлення. Використовуйте для динамічних об'єктів, які не сприяють глобальному освітленню (наприклад, символи). При використанні :ref:`VoxelGI<class_VoxelGI>` і SDFGI геометрія буде *receive* непряме освітлення і відображення, але геометрія не буде розглядатися в GI випічці.

.. _class_GeometryInstance3D_constant_GI_MODE_STATIC:

.. rst-class:: classref-enumeration-constant

:ref:`GIMode<enum_GeometryInstance3D_GIMode>` **GI_MODE_STATIC** = ``1``

Запечена глобальна система освітлення. Використовуйте для статичних об'єктів, які сприяють глобальному освітленню (наприклад, геометрія рівня). Цей режим GI ефективний при використанні :ref:`VoxelGI<class_VoxelGI>`, SDFGI і :ref:`LightmapGI<class_LightmapGI>`.

.. _class_GeometryInstance3D_constant_GI_MODE_DYNAMIC:

.. rst-class:: classref-enumeration-constant

:ref:`GIMode<enum_GeometryInstance3D_GIMode>` **GI_MODE_DYNAMIC** = ``2``

Динамічний глобальний режим освітлення. Використовуйте для динамічних об'єктів, які сприяють глобальному освітленню. Цей GI режим ефективний при використанні :ref:`VoxelGI<class_VoxelGI>`, але він має більш високу продуктивність, ніж :ref:`GI_MODE_STATIC<class_GeometryInstance3D_constant_GI_MODE_STATIC>`. При використанні інших методів GI, це буде діяти так само, як :ref:`GI_MODE_DISABLED<class_GeometryInstance3D_constant_GI_MODE_DISABLED>`. При використанні :ref:`LightmapGI<class_LightmapGI>` об'єкт отримає непряме освітлення за допомогою Lightmap зон замість використання запечених текстур Lightmap.

.. rst-class:: classref-item-separator

----

.. _enum_GeometryInstance3D_LightmapScale:

.. rst-class:: classref-enumeration

enum **LightmapScale**: :ref:`🔗<enum_GeometryInstance3D_LightmapScale>`

.. _class_GeometryInstance3D_constant_LIGHTMAP_SCALE_1X:

.. rst-class:: classref-enumeration-constant

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **LIGHTMAP_SCALE_1X** = ``0``

**Застаріло:** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

Стандартна щільність текселя для освітлення :ref:`LightmapGI<class_LightmapGI>`.

.. _class_GeometryInstance3D_constant_LIGHTMAP_SCALE_2X:

.. rst-class:: classref-enumeration-constant

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **LIGHTMAP_SCALE_2X** = ``1``

**Застаріло:** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

Multiplies texel щільність на 2 × для освітлення :ref:`LightmapGI<class_LightmapGI>`. Для забезпечення консистенції в щільності текселя використовуйте це при обшивці сітки фактором від 1,5 до 3.0.

.. _class_GeometryInstance3D_constant_LIGHTMAP_SCALE_4X:

.. rst-class:: classref-enumeration-constant

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **LIGHTMAP_SCALE_4X** = ``2``

**Застаріло:** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

Multiplies texel щільність від 4 × для освітлення :ref:`LightmapGI<class_LightmapGI>`. Для забезпечення консистенції в щільності текселя використовуйте це при обшивці сітки фактором між 3.0 і 6.0.

.. _class_GeometryInstance3D_constant_LIGHTMAP_SCALE_8X:

.. rst-class:: classref-enumeration-constant

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **LIGHTMAP_SCALE_8X** = ``3``

**Застаріло:** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

Multiplies texel щільність від 8 × для освітлення :ref:`LightmapGI<class_LightmapGI>`. Для забезпечення консистенції в густині текселя використовуйте це при обшивці сітки за фактором більше 6,0.

.. _class_GeometryInstance3D_constant_LIGHTMAP_SCALE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **LIGHTMAP_SCALE_MAX** = ``4``

**Застаріло:** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

Представляє розмір :ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` enum.

.. rst-class:: classref-item-separator

----

.. _enum_GeometryInstance3D_VisibilityRangeFadeMode:

.. rst-class:: classref-enumeration

enum **VisibilityRangeFadeMode**: :ref:`🔗<enum_GeometryInstance3D_VisibilityRangeFadeMode>`

.. _class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` **VISIBILITY_RANGE_FADE_DISABLED** = ``0``

Не попадати себе, ані її видимість залежностей, гістерез буде використовуватися замість. Це найшвидший підхід до керівництва LOD, але це може призвести до помітних переходів LOD в залежності від того, як авторуються сітки LOD. Див. :ref:`visibility_range_begin<class_GeometryInstance3D_property_visibility_range_begin>` і :ref:`Node3D.visibility_parent<class_Node3D_property_visibility_parent>` для отримання додаткової інформації.

.. _class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_SELF:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` **VISIBILITY_RANGE_FADE_SELF** = ``1``

При досягненні лімітів власної видимості. Це повільніше, ніж :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>`, але це може забезпечити плавні переходи. Діапазон загартування визначається :ref:`visibility_range_begin_margin<class_GeometryInstance3D_property_visibility_range_begin_margin>` і :ref:`visibility_range_end_margin<class_GeometryInstance3D_property_visibility_range_end_margin>`.

\ **Примітка:** Тільки підтримується при використанні методу Forward+. При використанні методу мобільного або сумісного рендерингу, цей режим діє як :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>`, але з гістерезом вимкнено.

.. _class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DEPENDENCIES:

.. rst-class:: classref-enumeration-constant

:ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` **VISIBILITY_RANGE_FADE_DEPENDENCIES** = ``2``

Відповідає свою видимість залежностей (див. :ref:`Node3D.visibility_parent<class_Node3D_property_visibility_parent>`) при досягненні лімітів власної видимості. Це повільніше, ніж :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>`, але це може забезпечити плавні переходи. Діапазон загартування визначається :ref:`visibility_range_begin_margin<class_GeometryInstance3D_property_visibility_range_begin_margin>` і :ref:`visibility_range_end_margin<class_GeometryInstance3D_property_visibility_range_end_margin>`.

\ **Примітка:** Тільки підтримується при використанні методу Forward+. При використанні методу мобільного або сумісного рендерингу, цей режим діє як :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>`, але з гістерезом вимкнено.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

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

Надіславши межі цієї вершини за допомогою користувацького. Це може бути використана, щоб уникнути дорогих :ref:`AABB<class_AABB>` рекалькуляції, що відбувається, коли скелет використовується з :ref:`MeshInstance3D<class_MeshInstance3D>` або мати точний контроль над :ref:`MeshInstance3D<class_MeshInstance3D>` з обмеженим ящиком. Для використання за замовчуванням AABB, встановленого значення до :ref:`AABB<class_AABB>` з усіма полями, встановленими до ``0.0``. Щоб уникнути фрусу культування, встановити :ref:`custom_aabb<class_GeometryInstance3D_property_custom_aabb>` до дуже великого AABB, який охоплює весь світ гри, таких як ``AABB(-10000, -10000, -10000, 20000, 20000)``. Вимкніть всі форми культового (в тому числі оклюзійного культування), зателефонуйте :ref:`RenderingServer.instance_set_ignore_culling()<class_RenderingServer_method_instance_set_ignore_culling>` на **GeometryInstance3D** :ref:`RID<class_RID>`.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_extra_cull_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **extra_cull_margin** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_extra_cull_margin>`

.. rst-class:: classref-property-setget

- |void| **set_extra_cull_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_extra_cull_margin**\ (\ )

Додаткова відстань, додана до GeometryInstance3D, що межує з коробкою (:ref:`AABB<class_AABB>`) для збільшення її зчеплення.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_gi_lightmap_scale:

.. rst-class:: classref-property

:ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **gi_lightmap_scale** = ``0`` :ref:`🔗<class_GeometryInstance3D_property_gi_lightmap_scale>`

.. rst-class:: classref-property-setget

- |void| **set_lightmap_scale**\ (\ value\: :ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>`\ )
- :ref:`LightmapScale<enum_GeometryInstance3D_LightmapScale>` **get_lightmap_scale**\ (\ )

**Застаріло:** Use :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` instead.

Щільність текселів, яка використовується для відображення світла в :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_gi_lightmap_texel_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **gi_lightmap_texel_scale** = ``1.0`` :ref:`🔗<class_GeometryInstance3D_property_gi_lightmap_texel_scale>`

.. rst-class:: classref-property-setget

- |void| **set_lightmap_texel_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lightmap_texel_scale**\ (\ )

Щільність текселів, яка використовується для відображення світла в :ref:`LightmapGI<class_LightmapGI>`. Вищі значення масштабу забезпечують вищу роздільну здатність на карті освітлення, що може призвести до більш чітких тіней для джерел світла, які мають як пряме, так і непряме світло. Однак більші значення масштабу також збільшать простір, який займає сітка в текстурі карти освітлення, що збільшує вимоги до пам’яті, зберігання та часу випічки. Використовуючи одну сітку в різних масштабах, подумайте про коригування цього значення, щоб підтримувати однакову щільність текселів карти освітлення в усіх сітках.

Наприклад, подвоєння :ref:`gi_lightmap_texel_scale<class_GeometryInstance3D_property_gi_lightmap_texel_scale>` подвоює роздільну здатність текстури карти освітлення для цього об’єкта *на кожній осі*, тому кількість текселів *збільшиться в чотири рази*.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_gi_mode:

.. rst-class:: classref-property

:ref:`GIMode<enum_GeometryInstance3D_GIMode>` **gi_mode** = ``1`` :ref:`🔗<class_GeometryInstance3D_property_gi_mode>`

.. rst-class:: classref-property-setget

- |void| **set_gi_mode**\ (\ value\: :ref:`GIMode<enum_GeometryInstance3D_GIMode>`\ )
- :ref:`GIMode<enum_GeometryInstance3D_GIMode>` **get_gi_mode**\ (\ )

Режим глобального освітлення для використання всієї геометрії. Щоб уникнути невідповідних результатів, використовуйте режим, який відповідає меті сітки під час геймплей (статичний/динамічний).

\ **Примітка:** Режим випікання світла також впливає на глобальне освітлення. Див. :ref:`Light3D.light_bake_mode<class_Light3D_property_light_bake_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_ignore_occlusion_culling:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **ignore_occlusion_culling** = ``false`` :ref:`🔗<class_GeometryInstance3D_property_ignore_occlusion_culling>`

.. rst-class:: classref-property-setget

- |void| **set_ignore_occlusion_culling**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_ignoring_occlusion_culling**\ (\ )

Якщо ``true``, вимкнено оклюзійне скло для цього екземпляра. Корисно для гізмосу, які повинні бути передані навіть при оклюзії, які використовують.

\ **Примітка:** :ref:`ignore_occlusion_culling<class_GeometryInstance3D_property_ignore_occlusion_culling>` не впливає на фрустке культування (що відбувається, коли об'єкт не виділяє кут камери). Щоб уникнути фрусу культового, встановити :ref:`custom_aabb<class_GeometryInstance3D_property_custom_aabb>` до дуже великого AABB, який охоплює весь світ гри, таких як ``AABB(-10000, -10000, -10000, 20000, 20000)``.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_lod_bias:

.. rst-class:: classref-property

:ref:`float<class_float>` **lod_bias** = ``1.0`` :ref:`🔗<class_GeometryInstance3D_property_lod_bias>`

.. rst-class:: classref-property-setget

- |void| **set_lod_bias**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lod_bias**\ (\ )

Зміни, як швидко переходи сітки до нижнього рівня деталей. Значення 0 змусить сіточку на найнижчий рівень деталь, значення 1 буде використовувати параметри за замовчуванням, а більші значення будуть тримати сіточку в більш високому рівні деталей на далеких відстанях.

Корисне тестування рівня докладних переходів в редакторі.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_material_overlay:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material_overlay** :ref:`🔗<class_GeometryInstance3D_property_material_overlay>`

.. rst-class:: classref-property-setget

- |void| **set_material_overlay**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material_overlay**\ (\ )

Матеріал накладка для всієї геометрії.

Якщо матеріал присвоюється цій властивості, він буде продаватися поверх будь-якого іншого активного матеріалу для всіх поверхонь.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_material_override:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material_override** :ref:`🔗<class_GeometryInstance3D_property_material_override>`

.. rst-class:: classref-property-setget

- |void| **set_material_override**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material_override**\ (\ )

Матеріал перенаречений на всю геометрію.

Якщо матеріал присвоюється цьому об'єкту, він буде використовуватися замість будь-якого матеріалу, встановленого в будь-якому матеріалі.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_transparency:

.. rst-class:: classref-property

:ref:`float<class_float>` **transparency** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_transparency>`

.. rst-class:: classref-property-setget

- |void| **set_transparency**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_transparency**\ (\ )

Прозорість наноситься на всю геометрію (як мультиплікатор існуючої прозорості матеріалів). ``0.0`` повністю непрозора, а ``1.0`` повністю прозора. Цінності більше, ніж ``0.0`` (виключно) змусять матеріал геометрії, щоб пройти через прозорий трубопровод, який повільніше рендериться і може експонувати питання, що стосуються неправильної прозорості. Однак, на відміну від використання прозорого матеріалу, налаштування ``пам'ятна прозорість`` до значення більше, ніж ``0.0`` (exclusive) буде *не* вимкнено Shadow рендеринг.

У просторих шейдерах ``1.0 - прозорість `` встановлюється як значення за замовчуванням ``ALPHA`` вбудований.

\ **Примітка:** ``пам'ятна прозорість`` затискається між ``0.0`` і ``1.0``, тому ця властивість не може бути використана, щоб зробити прозорі матеріали більш опачними, ніж вони спочатку.

\ **Примітка:** Тільки підтримується при використанні методу рендерингу Forward+. При використанні методу мобільного або сумісного рендерингу :ref:`transparency<class_GeometryInstance3D_property_transparency>` ігнорується і вважається завжди ``0.0``.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_visibility_range_begin:

.. rst-class:: classref-property

:ref:`float<class_float>` **visibility_range_begin** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_visibility_range_begin>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_range_begin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_visibility_range_begin**\ (\ )

Початкова відстань, з якої буде видно GeometryInstance3D, також враховуючи :ref:`visibility_range_begin_margin<class_GeometryInstance3D_property_visibility_range_begin_margin>`. Значення за замовчуванням 0 використовується для вимкнення перевірки діапазону.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_visibility_range_begin_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **visibility_range_begin_margin** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_visibility_range_begin_margin>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_range_begin_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_visibility_range_begin_margin**\ (\ )

Маргін для :ref:`visibility_range_begin<class_GeometryInstance3D_property_visibility_range_begin>` поріг. ГеометріяInstance3 D буде змінювати свій стан видимості, коли він переходить або під :ref:`visibility_range_begin<class_GeometryInstance3D_property_visibility_range_begin>` поріг цієї суми.

Якщо :ref:`visibility_range_fade_mode<class_GeometryInstance3D_property_visibility_range_fade_mode>` є :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>`, це діє як дистанція гістерезу. Якщо :ref:`visibility_range_fade_mode<class_GeometryInstance3D_property_visibility_range_fade_mode>` є :ref:`VISIBILITY_RANGE_FADE_SELF<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_SELF>` або :ref:`VISIBILITY_RANGE_FADE_DEPENDENCIES<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DEPENDENCIES>`, це діє як відстань fade переходу і повинна бути встановлена до значення більше, ніж ``0.0`` для ефекту бути помітним.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_visibility_range_end:

.. rst-class:: classref-property

:ref:`float<class_float>` **visibility_range_end** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_visibility_range_end>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_range_end**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_visibility_range_end**\ (\ )

Відстань, з якої буде приховано GeometryInstance3D, також враховуючи :ref:`visibility_range_end_margin<class_GeometryInstance3D_property_visibility_range_end_margin>`. Значення за замовчуванням 0 використовується для вимкнення перевірки діапазону.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_visibility_range_end_margin:

.. rst-class:: classref-property

:ref:`float<class_float>` **visibility_range_end_margin** = ``0.0`` :ref:`🔗<class_GeometryInstance3D_property_visibility_range_end_margin>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_range_end_margin**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_visibility_range_end_margin**\ (\ )

Маргін для :ref:`visibility_range_end<class_GeometryInstance3D_property_visibility_range_end>` поріг. ГеометріяInstance3 D буде змінювати стан видимості, коли він переходить або під поріг :ref:`visibility_range_end<class_GeometryInstance3D_property_visibility_range_end>`.

Якщо :ref:`visibility_range_fade_mode<class_GeometryInstance3D_property_visibility_range_fade_mode>` є :ref:`VISIBILITY_RANGE_FADE_DISABLED<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DISABLED>`, це діє як дистанція гістерезу. Якщо :ref:`visibility_range_fade_mode<class_GeometryInstance3D_property_visibility_range_fade_mode>` є :ref:`VISIBILITY_RANGE_FADE_SELF<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_SELF>` або :ref:`VISIBILITY_RANGE_FADE_DEPENDENCIES<class_GeometryInstance3D_constant_VISIBILITY_RANGE_FADE_DEPENDENCIES>`, це діє як відстань fade переходу і повинна бути встановлена до значення більше, ніж ``0.0`` для ефекту бути помітним.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_property_visibility_range_fade_mode:

.. rst-class:: classref-property

:ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` **visibility_range_fade_mode** = ``0`` :ref:`🔗<class_GeometryInstance3D_property_visibility_range_fade_mode>`

.. rst-class:: classref-property-setget

- |void| **set_visibility_range_fade_mode**\ (\ value\: :ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>`\ )
- :ref:`VisibilityRangeFadeMode<enum_GeometryInstance3D_VisibilityRangeFadeMode>` **get_visibility_range_fade_mode**\ (\ )

Контролює, які екземпляри будуть зникати при наближенні до меж діапазону видимості.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_GeometryInstance3D_method_get_instance_shader_parameter:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_instance_shader_parameter**\ (\ name\: :ref:`StringName<class_StringName>`\ ) |const| :ref:`🔗<class_GeometryInstance3D_method_get_instance_shader_parameter>`

Отримайте значення параметра шейдера, встановленого на цьому екземплярі.

.. rst-class:: classref-item-separator

----

.. _class_GeometryInstance3D_method_set_instance_shader_parameter:

.. rst-class:: classref-method

|void| **set_instance_shader_parameter**\ (\ name\: :ref:`StringName<class_StringName>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_GeometryInstance3D_method_set_instance_shader_parameter>`

Встановіть значення шейдерної уніформи лише для цього екземпляра (`per-instance uniform <../tutorials/shaders/shader_reference/shading_language.html#per-instance-uniforms>`__). Дивіться також :ref:`ShaderMaterial.set_shader_parameter()<class_ShaderMaterial_method_set_shader_parameter>`, щоб призначити однорідність для всіх екземплярів, використовуючи той самий :ref:`ShaderMaterial<class_ShaderMaterial>`.

\ **Примітка.** Щоб уніформу шейдера можна було призначати окремо для кожного екземпляра, її *має* визначати ``instance uniform ...``, а не ``uniform ...`` у коді шейдера.

\ **Примітка:** ``name`` чутлива до регістру та має точно відповідати назві уніформи в коді (а не назві, написаній великими літерами в інспекторі).

\ **Примітка:** Уніформи шейдерів для кожного екземпляра доступні лише для шейдерів Spatial і CanvasItem, але не для шейдерів Fog, Sky або Particles.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
