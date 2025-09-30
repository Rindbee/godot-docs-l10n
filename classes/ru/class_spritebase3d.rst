:github_url: hide

.. _class_SpriteBase3D:

SpriteBase3D
============

**Наследует:** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Наследуется от:** :ref:`AnimatedSprite3D<class_AnimatedSprite3D>`, :ref:`Sprite3D<class_Sprite3D>`

Узел 2D-спрайта в 3D-среде.

.. rst-class:: classref-introduction-group

Описание
----------------

Узел, который отображает информацию о 2D-текстуре в 3D-среде. См. также :ref:`Sprite3D<class_Sprite3D>`, где определены многие другие свойства.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                       | :ref:`alpha_antialiasing_edge<class_SpriteBase3D_property_alpha_antialiasing_edge>` | ``0.0``               |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>` | :ref:`alpha_antialiasing_mode<class_SpriteBase3D_property_alpha_antialiasing_mode>` | ``0``                 |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>`             | :ref:`alpha_cut<class_SpriteBase3D_property_alpha_cut>`                             | ``0``                 |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                       | :ref:`alpha_hash_scale<class_SpriteBase3D_property_alpha_hash_scale>`               | ``1.0``               |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                       | :ref:`alpha_scissor_threshold<class_SpriteBase3D_property_alpha_scissor_threshold>` | ``0.5``               |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Axis<enum_Vector3_Axis>`                                  | :ref:`axis<class_SpriteBase3D_property_axis>`                                       | ``2``                 |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>`         | :ref:`billboard<class_SpriteBase3D_property_billboard>`                             | ``0``                 |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`centered<class_SpriteBase3D_property_centered>`                               | ``true``              |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`double_sided<class_SpriteBase3D_property_double_sided>`                       | ``true``              |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`fixed_size<class_SpriteBase3D_property_fixed_size>`                           | ``false``             |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`flip_h<class_SpriteBase3D_property_flip_h>`                                   | ``false``             |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`flip_v<class_SpriteBase3D_property_flip_v>`                                   | ``false``             |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                                       | :ref:`modulate<class_SpriteBase3D_property_modulate>`                               | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`no_depth_test<class_SpriteBase3D_property_no_depth_test>`                     | ``false``             |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Vector2<class_Vector2>`                                   | :ref:`offset<class_SpriteBase3D_property_offset>`                                   | ``Vector2(0, 0)``     |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`                                       | :ref:`pixel_size<class_SpriteBase3D_property_pixel_size>`                           | ``0.01``              |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`                                           | :ref:`render_priority<class_SpriteBase3D_property_render_priority>`                 | ``0``                 |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`shaded<class_SpriteBase3D_property_shaded>`                                   | ``false``             |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>`         | :ref:`texture_filter<class_SpriteBase3D_property_texture_filter>`                   | ``3``                 |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                         | :ref:`transparent<class_SpriteBase3D_property_transparent>`                         | ``true``              |
   +-----------------------------------------------------------------+-------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TriangleMesh<class_TriangleMesh>` | :ref:`generate_triangle_mesh<class_SpriteBase3D_method_generate_triangle_mesh>`\ (\ ) |const|                                                                |
   +-----------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                 | :ref:`get_draw_flag<class_SpriteBase3D_method_get_draw_flag>`\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const|                            |
   +-----------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`               | :ref:`get_item_rect<class_SpriteBase3D_method_get_item_rect>`\ (\ ) |const|                                                                                  |
   +-----------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                  | :ref:`set_draw_flag<class_SpriteBase3D_method_set_draw_flag>`\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_SpriteBase3D_DrawFlags:

.. rst-class:: classref-enumeration

enum **DrawFlags**: :ref:`🔗<enum_SpriteBase3D_DrawFlags>`

.. _class_SpriteBase3D_constant_FLAG_TRANSPARENT:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` **FLAG_TRANSPARENT** = ``0``

Если задано, прозрачность текстуры используются, чтобы сделать эти части спрайта невидимыми.

.. _class_SpriteBase3D_constant_FLAG_SHADED:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` **FLAG_SHADED** = ``1``

Если установлено, то освещение в окружающей среде влияет на спрайт.

.. _class_SpriteBase3D_constant_FLAG_DOUBLE_SIDED:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` **FLAG_DOUBLE_SIDED** = ``2``

Если установлено, то текстура видна и сзади. Если нет, то текстура не видна, если смотреть сзади.

.. _class_SpriteBase3D_constant_FLAG_DISABLE_DEPTH_TEST:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` **FLAG_DISABLE_DEPTH_TEST** = ``3``

Отключает тест глубины, поэтому этот объект рисуется поверх всех остальных. Однако объекты, рисуемые после него в порядке рисования, могут его перекрывать.

.. _class_SpriteBase3D_constant_FLAG_FIXED_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` **FLAG_FIXED_SIZE** = ``4``

Метка масштабируется по глубине, поэтому на экране она всегда отображается одинакового размера.

.. _class_SpriteBase3D_constant_FLAG_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>` **FLAG_MAX** = ``5``

Представляет размер перечисления :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`.

.. rst-class:: classref-item-separator

----

.. _enum_SpriteBase3D_AlphaCutMode:

.. rst-class:: classref-enumeration

enum **AlphaCutMode**: :ref:`🔗<enum_SpriteBase3D_AlphaCutMode>`

.. _class_SpriteBase3D_constant_ALPHA_CUT_DISABLED:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>` **ALPHA_CUT_DISABLED** = ``0``

Этот режим выполняет стандартное альфа-смешивание. Он может отображать полупрозрачные области, но проблемы с сортировкой прозрачности могут быть видны, когда накладываются несколько прозрачных материалов.

.. _class_SpriteBase3D_constant_ALPHA_CUT_DISCARD:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>` **ALPHA_CUT_DISCARD** = ``1``

Этот режим допускает только полностью прозрачные или полностью непрозрачные пиксели. Резкие края будут видны, если не включена какая-либо форма сглаживания экранного пространства (см. :ref:`ProjectSettings.rendering/anti_aliasing/quality/screen_space_aa<class_ProjectSettings_property_rendering/anti_aliasing/quality/screen_space_aa>`). С другой стороны, этот режим не страдает от проблем с сортировкой прозрачности, когда накладываются несколько прозрачных материалов. Этот режим также известен как *альфа-тестирование* или *1-битная прозрачность*.

.. _class_SpriteBase3D_constant_ALPHA_CUT_OPAQUE_PREPASS:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>` **ALPHA_CUT_OPAQUE_PREPASS** = ``2``

Этот режим рисует полностью непрозрачные пиксели в предварительном проходе глубины. Это медленнее, чем :ref:`ALPHA_CUT_DISABLED<class_SpriteBase3D_constant_ALPHA_CUT_DISABLED>` или :ref:`ALPHA_CUT_DISCARD<class_SpriteBase3D_constant_ALPHA_CUT_DISCARD>`, но позволяет отображать полупрозрачные области и сглаживать края при использовании правильной сортировки.

.. _class_SpriteBase3D_constant_ALPHA_CUT_HASH:

.. rst-class:: classref-enumeration-constant

:ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>` **ALPHA_CUT_HASH** = ``3``

В этом режиме отрисовка отсекает все значения ниже пространственно-детерминированного порога, остальные остаются непрозрачными.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_SpriteBase3D_property_alpha_antialiasing_edge:

.. rst-class:: classref-property

:ref:`float<class_float>` **alpha_antialiasing_edge** = ``0.0`` :ref:`🔗<class_SpriteBase3D_property_alpha_antialiasing_edge>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_antialiasing_edge**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_alpha_antialiasing_edge**\ (\ )

Порог, при котором к альфа-каналу будет применено сглаживание.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_alpha_antialiasing_mode:

.. rst-class:: classref-property

:ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>` **alpha_antialiasing_mode** = ``0`` :ref:`🔗<class_SpriteBase3D_property_alpha_antialiasing_mode>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_antialiasing**\ (\ value\: :ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>`\ )
- :ref:`AlphaAntiAliasing<enum_BaseMaterial3D_AlphaAntiAliasing>` **get_alpha_antialiasing**\ (\ )

Тип применяемого альфа-сглаживания.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_alpha_cut:

.. rst-class:: classref-property

:ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>` **alpha_cut** = ``0`` :ref:`🔗<class_SpriteBase3D_property_alpha_cut>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_cut_mode**\ (\ value\: :ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>`\ )
- :ref:`AlphaCutMode<enum_SpriteBase3D_AlphaCutMode>` **get_alpha_cut_mode**\ (\ )

Режим альфа-резки, используемый для спрайта.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_alpha_hash_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **alpha_hash_scale** = ``1.0`` :ref:`🔗<class_SpriteBase3D_property_alpha_hash_scale>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_hash_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_alpha_hash_scale**\ (\ )

Масштаб хеширования для Alpha Hash. Рекомендуемые значения между ``0`` и ``2``.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_alpha_scissor_threshold:

.. rst-class:: classref-property

:ref:`float<class_float>` **alpha_scissor_threshold** = ``0.5`` :ref:`🔗<class_SpriteBase3D_property_alpha_scissor_threshold>`

.. rst-class:: classref-property-setget

- |void| **set_alpha_scissor_threshold**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_alpha_scissor_threshold**\ (\ )

Порог, при котором альфа-ножницы будут отбрасывать значения.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_axis:

.. rst-class:: classref-property

:ref:`Axis<enum_Vector3_Axis>` **axis** = ``2`` :ref:`🔗<class_SpriteBase3D_property_axis>`

.. rst-class:: classref-property-setget

- |void| **set_axis**\ (\ value\: :ref:`Axis<enum_Vector3_Axis>`\ )
- :ref:`Axis<enum_Vector3_Axis>` **get_axis**\ (\ )

Направление, в котором обращена лицевая сторона текстуры.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_billboard:

.. rst-class:: classref-property

:ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>` **billboard** = ``0`` :ref:`🔗<class_SpriteBase3D_property_billboard>`

.. rst-class:: classref-property-setget

- |void| **set_billboard_mode**\ (\ value\: :ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>`\ )
- :ref:`BillboardMode<enum_BaseMaterial3D_BillboardMode>` **get_billboard_mode**\ (\ )

Режим билборда для использования со спрайтом.

\ **Примечание:** Когда билбординг включен и материал также отбрасывает тени, билборды будут обращены **к** камере в сцене при рендеринге теней. В сценах с несколькими камерами предполагаемая тень не может быть определена, и это приведет к неопределенному поведению. Подробности см. в `GitHub Pull Request #72638 <https://github.com/godotengine/godot/pull/72638>`__.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_centered:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **centered** = ``true`` :ref:`🔗<class_SpriteBase3D_property_centered>`

.. rst-class:: classref-property-setget

- |void| **set_centered**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_centered**\ (\ )

Если ``true``, текстура будет центрирована.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_double_sided:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **double_sided** = ``true`` :ref:`🔗<class_SpriteBase3D_property_double_sided>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const|

Если ``true``, текстуру можно увидеть и сзади, если ``false``, она невидима, если смотреть на нее сзади.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_fixed_size:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **fixed_size** = ``false`` :ref:`🔗<class_SpriteBase3D_property_fixed_size>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const|

Если ``true``, текстура отображается с тем же размером, независимо от расстояния. Размер текстуры на экране такой же, как если бы камера находилась на расстоянии ``1.0`` единиц от начала текстуры, независимо от фактического расстояния от камеры. Поле зрения :ref:`Camera3D<class_Camera3D>` (или :ref:`Camera3D.size<class_Camera3D_property_size>` в ортогональном/усеченном режиме) по-прежнему влияет на размер отрисовываемого спрайта.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_flip_h:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_h** = ``false`` :ref:`🔗<class_SpriteBase3D_property_flip_h>`

.. rst-class:: classref-property-setget

- |void| **set_flip_h**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_h**\ (\ )

Если ``true``, текстура отражена по горизонтали.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_flip_v:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_v** = ``false`` :ref:`🔗<class_SpriteBase3D_property_flip_v>`

.. rst-class:: classref-property-setget

- |void| **set_flip_v**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_flipped_v**\ (\ )

Если ``true``, текстура отражена по вертикали.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_modulate:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **modulate** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_SpriteBase3D_property_modulate>`

.. rst-class:: classref-property-setget

- |void| **set_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_modulate**\ (\ )

Значение цвета, используемое для *умножения* цветов текстуры. Может использоваться для придания цвета настроению или для имитации цвета окружающего света.

\ **Примечание:** В отличие от :ref:`CanvasItem.modulate<class_CanvasItem_property_modulate>` для 2D, цвета со значениями выше ``1.0`` (сверхяркий) не поддерживаются.

\ **Примечание:** Если :ref:`GeometryInstance3D.material_override<class_GeometryInstance3D_property_material_override>` определен в **SpriteBase3D**, переопределение материала должно быть настроено на учет цветов вершин для альбедо. В противном случае цвет, определенный в :ref:`modulate<class_SpriteBase3D_property_modulate>`, будет проигнорирован. Для :ref:`BaseMaterial3D<class_BaseMaterial3D>`, :ref:`BaseMaterial3D.vertex_color_use_as_albedo<class_BaseMaterial3D_property_vertex_color_use_as_albedo>` должен быть ``true``. Для :ref:`ShaderMaterial<class_ShaderMaterial>` ``ALBEDO *= COLOR.rgb;`` необходимо вставить в функцию шейдера ``fragment()``.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_no_depth_test:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **no_depth_test** = ``false`` :ref:`🔗<class_SpriteBase3D_property_no_depth_test>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const|

Если ``true``, проверка глубины отключена, и объект будет отрисован в порядке рендеринга.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_offset:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **offset** = ``Vector2(0, 0)`` :ref:`🔗<class_SpriteBase3D_property_offset>`

.. rst-class:: classref-property-setget

- |void| **set_offset**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_offset**\ (\ )

Смещение отрисовки текстуры.

\ **Примечание:** При увеличении :ref:`offset<class_SpriteBase3D_property_offset>`.y в Sprite3D спрайт перемещается вверх в мировом пространстве (т. е. +Y вверх).

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_pixel_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **pixel_size** = ``0.01`` :ref:`🔗<class_SpriteBase3D_property_pixel_size>`

.. rst-class:: classref-property-setget

- |void| **set_pixel_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_pixel_size**\ (\ )

Размер ширины одного пикселя спрайта для его масштабирования в 3D.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_render_priority:

.. rst-class:: classref-property

:ref:`int<class_int>` **render_priority** = ``0`` :ref:`🔗<class_SpriteBase3D_property_render_priority>`

.. rst-class:: classref-property-setget

- |void| **set_render_priority**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_render_priority**\ (\ )

Устанавливает приоритет рендеринга для спрайта. Объекты с более высоким приоритетом будут сортироваться перед объектами с более низким приоритетом.

\ **Примечание:** Это применимо только в том случае, если :ref:`alpha_cut<class_SpriteBase3D_property_alpha_cut>` установлен на :ref:`ALPHA_CUT_DISABLED<class_SpriteBase3D_constant_ALPHA_CUT_DISABLED>` (значение по умолчанию).

\ **Примечание:** Это применимо только к сортировке прозрачных объектов. Это не повлияет на то, как прозрачные объекты сортируются относительно непрозрачных объектов. Это связано с тем, что непрозрачные объекты не сортируются, в то время как прозрачные объекты сортируются сзади вперед (в зависимости от приоритета).

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_shaded:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **shaded** = ``false`` :ref:`🔗<class_SpriteBase3D_property_shaded>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const|

Если ``true``, :ref:`Light3D<class_Light3D>` в :ref:`Environment<class_Environment>` оказывает влияние на спрайт.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_texture_filter:

.. rst-class:: classref-property

:ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>` **texture_filter** = ``3`` :ref:`🔗<class_SpriteBase3D_property_texture_filter>`

.. rst-class:: classref-property-setget

- |void| **set_texture_filter**\ (\ value\: :ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>`\ )
- :ref:`TextureFilter<enum_BaseMaterial3D_TextureFilter>` **get_texture_filter**\ (\ )

Флаги фильтра для текстуры.

\ **Примечание:** Линейная фильтрация может вызывать артефакты по краям, которые особенно заметны на непрозрачных текстурах. Чтобы этого не произошло, используйте текстуры с прозрачными или идентичными цветами по краям.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_property_transparent:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **transparent** = ``true`` :ref:`🔗<class_SpriteBase3D_property_transparent>`

.. rst-class:: classref-property-setget

- |void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const|

Если ``true``, прозрачность текстуры используются, чтобы сделать эти части спрайта невидимыми.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_SpriteBase3D_method_generate_triangle_mesh:

.. rst-class:: classref-method

:ref:`TriangleMesh<class_TriangleMesh>` **generate_triangle_mesh**\ (\ ) |const| :ref:`🔗<class_SpriteBase3D_method_generate_triangle_mesh>`

Возвращает :ref:`TriangleMesh<class_TriangleMesh>` с вершинами спрайта, соответствующими его текущей конфигурации (например, :ref:`axis<class_SpriteBase3D_property_axis>` и :ref:`pixel_size<class_SpriteBase3D_property_pixel_size>`).

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_method_get_draw_flag:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`\ ) |const| :ref:`🔗<class_SpriteBase3D_method_get_draw_flag>`

Возвращает значение указанного флага.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_method_get_item_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_item_rect**\ (\ ) |const| :ref:`🔗<class_SpriteBase3D_method_get_item_rect>`

Возвращает прямоугольник, представляющий этот спрайт.

.. rst-class:: classref-item-separator

----

.. _class_SpriteBase3D_method_set_draw_flag:

.. rst-class:: classref-method

|void| **set_draw_flag**\ (\ flag\: :ref:`DrawFlags<enum_SpriteBase3D_DrawFlags>`, enabled\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_SpriteBase3D_method_set_draw_flag>`

Если ``true``, указанный флаг будет включен.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
