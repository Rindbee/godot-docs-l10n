:github_url: hide

.. _class_LightmapGIData:

LightmapGIData
==============

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Содержит запеченную карту освещения и данные динамического зондирования объектов для :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-introduction-group

Описание
----------------

**LightmapGIData** содержит запеченную карту освещения и данные динамического зондирования объектов для :ref:`LightmapGI<class_LightmapGI>`. Он заменяется каждый раз, когда карты освещения запекаются в :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------+--------+
   | :ref:`TextureLayered<class_TextureLayered>`                              | :ref:`light_texture<class_LightmapGIData_property_light_texture>`             |        |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`\[:ref:`TextureLayered<class_TextureLayered>`\] | :ref:`lightmap_textures<class_LightmapGIData_property_lightmap_textures>`     | ``[]`` |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------+--------+
   | :ref:`Array<class_Array>`\[:ref:`TextureLayered<class_TextureLayered>`\] | :ref:`shadowmask_textures<class_LightmapGIData_property_shadowmask_textures>` | ``[]`` |
   +--------------------------------------------------------------------------+-------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`add_user<class_LightmapGIData_method_add_user>`\ (\ path\: :ref:`NodePath<class_NodePath>`, uv_scale\: :ref:`Rect2<class_Rect2>`, slice_index\: :ref:`int<class_int>`, sub_instance\: :ref:`int<class_int>`\ ) |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`clear_users<class_LightmapGIData_method_clear_users>`\ (\ )                                                                                                                                                    |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`get_user_count<class_LightmapGIData_method_get_user_count>`\ (\ ) |const|                                                                                                                                      |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`get_user_path<class_LightmapGIData_method_get_user_path>`\ (\ user_idx\: :ref:`int<class_int>`\ ) |const|                                                                                                      |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`is_using_spherical_harmonics<class_LightmapGIData_method_is_using_spherical_harmonics>`\ (\ ) |const|                                                                                                          |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                          | :ref:`set_uses_spherical_harmonics<class_LightmapGIData_method_set_uses_spherical_harmonics>`\ (\ uses_spherical_harmonics\: :ref:`bool<class_bool>`\ )                                                              |
   +---------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_LightmapGIData_ShadowmaskMode:

.. rst-class:: classref-enumeration

enum **ShadowmaskMode**: :ref:`🔗<enum_LightmapGIData_ShadowmaskMode>`

.. _class_LightmapGIData_constant_SHADOWMASK_MODE_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>` **SHADOWMASK_MODE_NONE** = ``0``

Shadowmasking отключен. При запекании световых карт не будет создана текстура shadowmask. Существующие текстуры shadowmask будут удалены при запекании.

.. _class_LightmapGIData_constant_SHADOWMASK_MODE_REPLACE:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>` **SHADOWMASK_MODE_REPLACE** = ``1``

Shadowmasking включен. Направленные тени, которые находятся за пределами :ref:`DirectionalLight3D.directional_shadow_max_distance<class_DirectionalLight3D_property_directional_shadow_max_distance>`, будут визуализированы с использованием текстуры shadowmask. Тени, которые находятся внутри диапазона, будут визуализированы исключительно с использованием теней в реальном времени. Этот режим позволяет получать более точные тени в реальном времени вблизи, без потенциального эффекта «размазывания», который может возникнуть при использовании карт освещения с большим размером текселя )texel (. Недостатком является то, что при быстром движении камеры переход между освещением в реальном времени и теневой маской может быть очевиден. Кроме того, объекты, у которых есть только тени, запеченные в теневой маске (и нет теней в реальном времени), не будут отображать никаких теней вблизи.

.. _class_LightmapGIData_constant_SHADOWMASK_MODE_OVERLAY:

.. rst-class:: classref-enumeration-constant

:ref:`ShadowmaskMode<enum_LightmapGIData_ShadowmaskMode>` **SHADOWMASK_MODE_OVERLAY** = ``2``

Shadowmasking включен. Направленные тени будут визуализироваться с тенями в реальном времени, наложенными поверх текстуры теневой маски. Этот режим обеспечивает более плавные переходы теней при быстром движении камеры за счет потенциального эффекта размазывания направленных теней, которые находятся близко (из-за того, что тень в реальном времени смешивается с теневой маской низкого разрешения). Объекты, у которых есть только тени, запеченные в теневой маске (и нет теней в реальном времени), будут сохранять свои тени близко.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_LightmapGIData_property_light_texture:

.. rst-class:: classref-property

:ref:`TextureLayered<class_TextureLayered>` **light_texture** :ref:`🔗<class_LightmapGIData_property_light_texture>`

.. rst-class:: classref-property-setget

- |void| **set_light_texture**\ (\ value\: :ref:`TextureLayered<class_TextureLayered>`\ )
- :ref:`TextureLayered<class_TextureLayered>` **get_light_texture**\ (\ )

**Устарело:** The lightmap atlas can now contain multiple textures. See :ref:`lightmap_textures<class_LightmapGIData_property_lightmap_textures>`.

Текстура атласа световой карты, созданная с помощью lightmapper.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGIData_property_lightmap_textures:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`TextureLayered<class_TextureLayered>`\] **lightmap_textures** = ``[]`` :ref:`🔗<class_LightmapGIData_property_lightmap_textures>`

.. rst-class:: classref-property-setget

- |void| **set_lightmap_textures**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`TextureLayered<class_TextureLayered>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`TextureLayered<class_TextureLayered>`\] **get_lightmap_textures**\ (\ )

Текстуры атласа световых карт, созданные с помощью lightmapper.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGIData_property_shadowmask_textures:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`TextureLayered<class_TextureLayered>`\] **shadowmask_textures** = ``[]`` :ref:`🔗<class_LightmapGIData_property_shadowmask_textures>`

.. rst-class:: classref-property-setget

- |void| **set_shadowmask_textures**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`TextureLayered<class_TextureLayered>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`TextureLayered<class_TextureLayered>`\] **get_shadowmask_textures**\ (\ )

Текстуры атласа теневой маски, созданные с помощью светового картографа.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_LightmapGIData_method_add_user:

.. rst-class:: classref-method

|void| **add_user**\ (\ path\: :ref:`NodePath<class_NodePath>`, uv_scale\: :ref:`Rect2<class_Rect2>`, slice_index\: :ref:`int<class_int>`, sub_instance\: :ref:`int<class_int>`\ ) :ref:`🔗<class_LightmapGIData_method_add_user>`

Добавляет объект, который считается запеченным в этом **LightmapGIData**.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGIData_method_clear_users:

.. rst-class:: classref-method

|void| **clear_users**\ (\ ) :ref:`🔗<class_LightmapGIData_method_clear_users>`

Добавляет объект, который считается запеченным в этом **LightmapGIData**.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGIData_method_get_user_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_user_count**\ (\ ) |const| :ref:`🔗<class_LightmapGIData_method_get_user_count>`

Возвращает количество объектов, которые считаются запеченными в этом **LightmapGIData**.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGIData_method_get_user_path:

.. rst-class:: classref-method

:ref:`NodePath<class_NodePath>` **get_user_path**\ (\ user_idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_LightmapGIData_method_get_user_path>`

Возвращает :ref:`NodePath<class_NodePath>` запеченного объекта по индексу ``user_idx``.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGIData_method_is_using_spherical_harmonics:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_using_spherical_harmonics**\ (\ ) |const| :ref:`🔗<class_LightmapGIData_method_is_using_spherical_harmonics>`

Если ``true``, карты освещения запекались с информацией о направлении. См. также :ref:`LightmapGI.directional<class_LightmapGI_property_directional>`.

.. rst-class:: classref-item-separator

----

.. _class_LightmapGIData_method_set_uses_spherical_harmonics:

.. rst-class:: classref-method

|void| **set_uses_spherical_harmonics**\ (\ uses_spherical_harmonics\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_LightmapGIData_method_set_uses_spherical_harmonics>`

Если ``uses_spherical_harmonics`` равен ``true``, то движок обрабатывает данные карты освещения так, как будто они были запечены с информацией о направлении.

\ **Примечание:** Изменение этого значения на уже запеченных картах освещения не приведет к их повторному запеканию. Это означает, что внешний вид материала будет выглядеть некорректно, пока карты освещения не будут запечены снова, в этом случае заданное здесь значение отбрасывается, поскольку весь ресурс **LightmapGIData** заменяется картографом освещения.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
