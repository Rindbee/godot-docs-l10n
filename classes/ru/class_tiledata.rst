:github_url: hide

.. _class_TileData:

TileData
========

**Наследует:** :ref:`Object<class_Object>`

Настройки для одного тайла в :ref:`TileSet<class_TileSet>`.

.. rst-class:: classref-introduction-group

Описание
----------------

Объект **TileData** представляет отдельный тайл в :ref:`TileSet<class_TileSet>`. Обычно он редактируется с помощью редактора тайлсетов, но может быть изменён во время выполнения с помощью :ref:`TileMapLayer._tile_data_runtime_update()<class_TileMapLayer_private_method__tile_data_runtime_update>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`         | :ref:`flip_h<class_TileData_property_flip_h>`                 | ``false``             |
   +---------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`         | :ref:`flip_v<class_TileData_property_flip_v>`                 | ``false``             |
   +---------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`Material<class_Material>` | :ref:`material<class_TileData_property_material>`             |                       |
   +---------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`       | :ref:`modulate<class_TileData_property_modulate>`             | ``Color(1, 1, 1, 1)`` |
   +---------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`       | :ref:`probability<class_TileData_property_probability>`       | ``1.0``               |
   +---------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`           | :ref:`terrain<class_TileData_property_terrain>`               | ``-1``                |
   +---------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`           | :ref:`terrain_set<class_TileData_property_terrain_set>`       | ``-1``                |
   +---------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`texture_origin<class_TileData_property_texture_origin>` | ``Vector2i(0, 0)``    |
   +---------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`         | :ref:`transpose<class_TileData_property_transpose>`           | ``false``             |
   +---------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`           | :ref:`y_sort_origin<class_TileData_property_y_sort_origin>`   | ``0``                 |
   +---------------------------------+---------------------------------------------------------------+-----------------------+
   | :ref:`int<class_int>`           | :ref:`z_index<class_TileData_property_z_index>`               | ``0``                 |
   +---------------------------------+---------------------------------------------------------------+-----------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_collision_polygon<class_TileData_method_add_collision_polygon>`\ (\ layer_id\: :ref:`int<class_int>`\ )                                                                                                                                                                               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_occluder_polygon<class_TileData_method_add_occluder_polygon>`\ (\ layer_id\: :ref:`int<class_int>`\ )                                                                                                                                                                                 |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_collision_polygon_one_way_margin<class_TileData_method_get_collision_polygon_one_way_margin>`\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) |const|                                                                                                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>` | :ref:`get_collision_polygon_points<class_TileData_method_get_collision_polygon_points>`\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) |const|                                                                                                                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_collision_polygons_count<class_TileData_method_get_collision_polygons_count>`\ (\ layer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                         |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                           | :ref:`get_constant_angular_velocity<class_TileData_method_get_constant_angular_velocity>`\ (\ layer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                       |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`                       | :ref:`get_constant_linear_velocity<class_TileData_method_get_constant_linear_velocity>`\ (\ layer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                         |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                       | :ref:`get_custom_data<class_TileData_method_get_custom_data>`\ (\ layer_name\: :ref:`String<class_String>`\ ) |const|                                                                                                                                                                           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                       | :ref:`get_custom_data_by_layer_id<class_TileData_method_get_custom_data_by_layer_id>`\ (\ layer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`NavigationPolygon<class_NavigationPolygon>`   | :ref:`get_navigation_polygon<class_TileData_method_get_navigation_polygon>`\ (\ layer_id\: :ref:`int<class_int>`, flip_h\: :ref:`bool<class_bool>` = false, flip_v\: :ref:`bool<class_bool>` = false, transpose\: :ref:`bool<class_bool>` = false\ ) |const|                                    |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`   | :ref:`get_occluder<class_TileData_method_get_occluder>`\ (\ layer_id\: :ref:`int<class_int>`, flip_h\: :ref:`bool<class_bool>` = false, flip_v\: :ref:`bool<class_bool>` = false, transpose\: :ref:`bool<class_bool>` = false\ ) |const|                                                        |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`   | :ref:`get_occluder_polygon<class_TileData_method_get_occluder_polygon>`\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, flip_h\: :ref:`bool<class_bool>` = false, flip_v\: :ref:`bool<class_bool>` = false, transpose\: :ref:`bool<class_bool>` = false\ ) |const| |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_occluder_polygons_count<class_TileData_method_get_occluder_polygons_count>`\ (\ layer_id\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_terrain_peering_bit<class_TileData_method_get_terrain_peering_bit>`\ (\ peering_bit\: :ref:`CellNeighbor<enum_TileSet_CellNeighbor>`\ ) |const|                                                                                                                                       |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`has_custom_data<class_TileData_method_has_custom_data>`\ (\ layer_name\: :ref:`String<class_String>`\ ) |const|                                                                                                                                                                           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_collision_polygon_one_way<class_TileData_method_is_collision_polygon_one_way>`\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) |const|                                                                                                                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`is_valid_terrain_peering_bit<class_TileData_method_is_valid_terrain_peering_bit>`\ (\ peering_bit\: :ref:`CellNeighbor<enum_TileSet_CellNeighbor>`\ ) |const|                                                                                                                             |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`remove_collision_polygon<class_TileData_method_remove_collision_polygon>`\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ )                                                                                                                                  |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`remove_occluder_polygon<class_TileData_method_remove_occluder_polygon>`\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ )                                                                                                                                    |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_collision_polygon_one_way<class_TileData_method_set_collision_polygon_one_way>`\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, one_way\: :ref:`bool<class_bool>`\ )                                                                                     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_collision_polygon_one_way_margin<class_TileData_method_set_collision_polygon_one_way_margin>`\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, one_way_margin\: :ref:`float<class_float>`\ )                                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_collision_polygon_points<class_TileData_method_set_collision_polygon_points>`\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )                                                           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_collision_polygons_count<class_TileData_method_set_collision_polygons_count>`\ (\ layer_id\: :ref:`int<class_int>`, polygons_count\: :ref:`int<class_int>`\ )                                                                                                                         |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_constant_angular_velocity<class_TileData_method_set_constant_angular_velocity>`\ (\ layer_id\: :ref:`int<class_int>`, velocity\: :ref:`float<class_float>`\ )                                                                                                                         |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_constant_linear_velocity<class_TileData_method_set_constant_linear_velocity>`\ (\ layer_id\: :ref:`int<class_int>`, velocity\: :ref:`Vector2<class_Vector2>`\ )                                                                                                                       |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_custom_data<class_TileData_method_set_custom_data>`\ (\ layer_name\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                                                                            |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_custom_data_by_layer_id<class_TileData_method_set_custom_data_by_layer_id>`\ (\ layer_id\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`\ )                                                                                                                            |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_navigation_polygon<class_TileData_method_set_navigation_polygon>`\ (\ layer_id\: :ref:`int<class_int>`, navigation_polygon\: :ref:`NavigationPolygon<class_NavigationPolygon>`\ )                                                                                                     |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_occluder<class_TileData_method_set_occluder>`\ (\ layer_id\: :ref:`int<class_int>`, occluder_polygon\: :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`\ )                                                                                                                           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_occluder_polygon<class_TileData_method_set_occluder_polygon>`\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, polygon\: :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`\ )                                                                             |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_occluder_polygons_count<class_TileData_method_set_occluder_polygons_count>`\ (\ layer_id\: :ref:`int<class_int>`, polygons_count\: :ref:`int<class_int>`\ )                                                                                                                           |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_terrain_peering_bit<class_TileData_method_set_terrain_peering_bit>`\ (\ peering_bit\: :ref:`CellNeighbor<enum_TileSet_CellNeighbor>`, terrain\: :ref:`int<class_int>`\ )                                                                                                              |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_TileData_signal_changed:

.. rst-class:: classref-signal

**changed**\ (\ ) :ref:`🔗<class_TileData_signal_changed>`

Выдается при изменении любого из свойств.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_TileData_property_flip_h:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_h** = ``false`` :ref:`🔗<class_TileData_property_flip_h>`

.. rst-class:: classref-property-setget

- |void| **set_flip_h**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flip_h**\ (\ )

Если ``true``, текстура тайла будет перевернута по горизонтали.

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_flip_v:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **flip_v** = ``false`` :ref:`🔗<class_TileData_property_flip_v>`

.. rst-class:: classref-property-setget

- |void| **set_flip_v**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_flip_v**\ (\ )

Если ``true``, текстура тайла будет перевернута по вертикали.

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_TileData_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

:ref:`Material<class_Material>` для использования с этим **TileData**. Это может быть :ref:`CanvasItemMaterial<class_CanvasItemMaterial>` для использования шейдера по умолчанию или :ref:`ShaderMaterial<class_ShaderMaterial>` для использования пользовательского шейдера.

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_modulate:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **modulate** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_TileData_property_modulate>`

.. rst-class:: classref-property-setget

- |void| **set_modulate**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_modulate**\ (\ )

Цветовая модуляция тайла.

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_probability:

.. rst-class:: classref-property

:ref:`float<class_float>` **probability** = ``1.0`` :ref:`🔗<class_TileData_property_probability>`

.. rst-class:: classref-property-setget

- |void| **set_probability**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_probability**\ (\ )

Относительная вероятность выбора этого тайла при рисовании шаблона из случайных тайлов.

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_terrain:

.. rst-class:: classref-property

:ref:`int<class_int>` **terrain** = ``-1`` :ref:`🔗<class_TileData_property_terrain>`

.. rst-class:: classref-property-setget

- |void| **set_terrain**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_terrain**\ (\ )

Идентификатор ландшафта из набора ландшафта, который использует тайл.

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_terrain_set:

.. rst-class:: classref-property

:ref:`int<class_int>` **terrain_set** = ``-1`` :ref:`🔗<class_TileData_property_terrain_set>`

.. rst-class:: classref-property-setget

- |void| **set_terrain_set**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_terrain_set**\ (\ )

Идентификатор набора ландшафта, который использует тайл.

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_texture_origin:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **texture_origin** = ``Vector2i(0, 0)`` :ref:`🔗<class_TileData_property_texture_origin>`

.. rst-class:: classref-property-setget

- |void| **set_texture_origin**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_texture_origin**\ (\ )

Смещает позицию, где отображается тайл.

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_transpose:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **transpose** = ``false`` :ref:`🔗<class_TileData_property_transpose>`

.. rst-class:: classref-property-setget

- |void| **set_transpose**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_transpose**\ (\ )

Если ``true``, тайл будет отображаться транспонированным, т. е. с поменянными местами горизонтальной и вертикальной текстурой UV.

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_y_sort_origin:

.. rst-class:: classref-property

:ref:`int<class_int>` **y_sort_origin** = ``0`` :ref:`🔗<class_TileData_property_y_sort_origin>`

.. rst-class:: classref-property-setget

- |void| **set_y_sort_origin**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_y_sort_origin**\ (\ )

Вертикальная точка тайла, используемая для определения порядка сортировки по оси Y.

.. rst-class:: classref-item-separator

----

.. _class_TileData_property_z_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **z_index** = ``0`` :ref:`🔗<class_TileData_property_z_index>`

.. rst-class:: classref-property-setget

- |void| **set_z_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_z_index**\ (\ )

Индекс порядка этого тайла относительно :ref:`TileMapLayer<class_TileMapLayer>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_TileData_method_add_collision_polygon:

.. rst-class:: classref-method

|void| **add_collision_polygon**\ (\ layer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_add_collision_polygon>`

Добавляет полигон столкновения к тайлу на указанном физическом слое TileSet.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_add_occluder_polygon:

.. rst-class:: classref-method

|void| **add_occluder_polygon**\ (\ layer_id\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_add_occluder_polygon>`

Добавляет многоугольник окклюзии к тайлу на слое окклюзии TileSet с индексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_collision_polygon_one_way_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_collision_polygon_one_way_margin**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_collision_polygon_one_way_margin>`

Возвращает одностороннее поле (для односторонних платформ) полигона с индексом ``polygon_index`` для физического слоя TileSet с индексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_collision_polygon_points:

.. rst-class:: classref-method

:ref:`PackedVector2Array<class_PackedVector2Array>` **get_collision_polygon_points**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_collision_polygon_points>`

Возвращает точки полигона с индексом ``polygon_index`` для физического слоя TileSet с индексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_collision_polygons_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_collision_polygons_count**\ (\ layer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_collision_polygons_count>`

Возвращает количество полигонов тайла для физического слоя TileSet с индексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_constant_angular_velocity:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_constant_angular_velocity**\ (\ layer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_constant_angular_velocity>`

Возвращает постоянную угловую скорость, применяемую к объектам при столкновении с этим тайлом.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_constant_linear_velocity:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_constant_linear_velocity**\ (\ layer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_constant_linear_velocity>`

Возвращает постоянную линейную скорость, применяемую к объектам при столкновении с этим тайлом.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_custom_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_custom_data**\ (\ layer_name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TileData_method_get_custom_data>`

Возвращает пользовательское значение данных для пользовательского слоя данных с именем ``layer_name``. Чтобы проверить, существует ли пользовательский слой данных, используйте :ref:`has_custom_data()<class_TileData_method_has_custom_data>`.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_custom_data_by_layer_id:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_custom_data_by_layer_id**\ (\ layer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_custom_data_by_layer_id>`

Возвращает пользовательское значение данных для пользовательского слоя данных с индексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_navigation_polygon:

.. rst-class:: classref-method

:ref:`NavigationPolygon<class_NavigationPolygon>` **get_navigation_polygon**\ (\ layer_id\: :ref:`int<class_int>`, flip_h\: :ref:`bool<class_bool>` = false, flip_v\: :ref:`bool<class_bool>` = false, transpose\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_TileData_method_get_navigation_polygon>`

Возвращает навигационный полигон тайла для навигационного слоя TileSet с индексом ``layer_id``.

\ ``flip_h``, ``flip_v`` и ``transpose`` позволяют преобразовать возвращаемый полигон.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_occluder:

.. rst-class:: classref-method

:ref:`OccluderPolygon2D<class_OccluderPolygon2D>` **get_occluder**\ (\ layer_id\: :ref:`int<class_int>`, flip_h\: :ref:`bool<class_bool>` = false, flip_v\: :ref:`bool<class_bool>` = false, transpose\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_TileData_method_get_occluder>`

**Устарело:** Use :ref:`get_occluder_polygon()<class_TileData_method_get_occluder_polygon>` instead.

Возвращает окклюдерный полигон тайла для слоя окклюзии TileSet с индексом ``layer_id``.

\ ``flip_h``, ``flip_v`` и ``transpose`` позволяют преобразовать возвращаемый полигон.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_occluder_polygon:

.. rst-class:: classref-method

:ref:`OccluderPolygon2D<class_OccluderPolygon2D>` **get_occluder_polygon**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, flip_h\: :ref:`bool<class_bool>` = false, flip_v\: :ref:`bool<class_bool>` = false, transpose\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_TileData_method_get_occluder_polygon>`

Возвращает многоугольник окклюдера с индексом ``polygon_index`` из слоя окклюзии TileSet с индексом ``layer_id``. 

Параметры ``flip_h``, ``flip_v`` и ``transpose`` могут быть ``true`` для преобразования возвращаемого многоугольника.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_occluder_polygons_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_occluder_polygons_count**\ (\ layer_id\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_get_occluder_polygons_count>`

Возвращает количество окклюдерных полигонов тайла в слое окклюзии TileSet с индексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_get_terrain_peering_bit:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_terrain_peering_bit**\ (\ peering_bit\: :ref:`CellNeighbor<enum_TileSet_CellNeighbor>`\ ) |const| :ref:`🔗<class_TileData_method_get_terrain_peering_bit>`

Возвращает бит ландшафа тайла для заданного направления ``peering_bit``. Для проверки корректности направления используйте :ref:`is_valid_terrain_peering_bit()<class_TileData_method_is_valid_terrain_peering_bit>`.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_has_custom_data:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_custom_data**\ (\ layer_name\: :ref:`String<class_String>`\ ) |const| :ref:`🔗<class_TileData_method_has_custom_data>`

Возвращает информацию о существовании пользовательского слоя данных с именем ``layer_name``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_is_collision_polygon_one_way:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_collision_polygon_one_way**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TileData_method_is_collision_polygon_one_way>`

Возвращает информацию о том, включены ли односторонние столкновения для полигона с индексом ``polygon_index`` для физического слоя TileSet с индексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_is_valid_terrain_peering_bit:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_valid_terrain_peering_bit**\ (\ peering_bit\: :ref:`CellNeighbor<enum_TileSet_CellNeighbor>`\ ) |const| :ref:`🔗<class_TileData_method_is_valid_terrain_peering_bit>`

Возвращает, является ли заданное направление ``peering_bit`` допустимым для этого тайла.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_remove_collision_polygon:

.. rst-class:: classref-method

|void| **remove_collision_polygon**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_remove_collision_polygon>`

Удаляет полигон с индексом ``polygon_index`` для физического слоя TileSet с индексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_remove_occluder_polygon:

.. rst-class:: classref-method

|void| **remove_occluder_polygon**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_remove_occluder_polygon>`

Удаляет полигон с индексом ``polygon_index`` для слоя окклюзии TileSet с индексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_collision_polygon_one_way:

.. rst-class:: classref-method

|void| **set_collision_polygon_one_way**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, one_way\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_TileData_method_set_collision_polygon_one_way>`

Включает/отключает односторонние столкновения на полигоне с индексом ``polygon_index`` для физического слоя TileSet с индексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_collision_polygon_one_way_margin:

.. rst-class:: classref-method

|void| **set_collision_polygon_one_way_margin**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, one_way_margin\: :ref:`float<class_float>`\ ) :ref:`🔗<class_TileData_method_set_collision_polygon_one_way_margin>`

Устанавливает одностороннюю границу (для односторонних платформ) полигона с индексом ``polygon_index`` для физического слоя TileSet с индексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_collision_polygon_points:

.. rst-class:: classref-method

|void| **set_collision_polygon_points**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, polygon\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_TileData_method_set_collision_polygon_points>`

Устанавливает точки полигона с индексом ``polygon_index`` для физического слоя TileSet с индексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_collision_polygons_count:

.. rst-class:: classref-method

|void| **set_collision_polygons_count**\ (\ layer_id\: :ref:`int<class_int>`, polygons_count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_set_collision_polygons_count>`

Устанавливает количество полигонов для физического слоя TileSet с индексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_constant_angular_velocity:

.. rst-class:: classref-method

|void| **set_constant_angular_velocity**\ (\ layer_id\: :ref:`int<class_int>`, velocity\: :ref:`float<class_float>`\ ) :ref:`🔗<class_TileData_method_set_constant_angular_velocity>`

Устанавливает постоянную угловую скорость. Не вращает тайл. Эта угловая скорость применяется к объектам, сталкивающимся с этим тайлом.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_constant_linear_velocity:

.. rst-class:: classref-method

|void| **set_constant_linear_velocity**\ (\ layer_id\: :ref:`int<class_int>`, velocity\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_TileData_method_set_constant_linear_velocity>`

Устанавливает постоянную линейную скорость. Не перемещает тайл. Эта линейная скорость применяется к объектам, сталкивающимся с этим тайлом. Это полезно для создания конвейерных лент.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_custom_data:

.. rst-class:: classref-method

|void| **set_custom_data**\ (\ layer_name\: :ref:`String<class_String>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_TileData_method_set_custom_data>`

Устанавливает пользовательское значение данных тайла для пользовательского слоя данных TileSet с именем ``layer_name``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_custom_data_by_layer_id:

.. rst-class:: classref-method

|void| **set_custom_data_by_layer_id**\ (\ layer_id\: :ref:`int<class_int>`, value\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_TileData_method_set_custom_data_by_layer_id>`

Устанавливает пользовательское значение данных тайла для пользовательского слоя данных TileSet с индексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_navigation_polygon:

.. rst-class:: classref-method

|void| **set_navigation_polygon**\ (\ layer_id\: :ref:`int<class_int>`, navigation_polygon\: :ref:`NavigationPolygon<class_NavigationPolygon>`\ ) :ref:`🔗<class_TileData_method_set_navigation_polygon>`

Устанавливает навигационный полигон для навигационного слоя TileSet с индексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_occluder:

.. rst-class:: classref-method

|void| **set_occluder**\ (\ layer_id\: :ref:`int<class_int>`, occluder_polygon\: :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`\ ) :ref:`🔗<class_TileData_method_set_occluder>`

**Устарело:** Use :ref:`set_occluder_polygon()<class_TileData_method_set_occluder_polygon>` instead.

Устанавливает окклюдер для слоя окклюзии TileSet с индексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_occluder_polygon:

.. rst-class:: classref-method

|void| **set_occluder_polygon**\ (\ layer_id\: :ref:`int<class_int>`, polygon_index\: :ref:`int<class_int>`, polygon\: :ref:`OccluderPolygon2D<class_OccluderPolygon2D>`\ ) :ref:`🔗<class_TileData_method_set_occluder_polygon>`

Устанавливает окклюдер для полигона с индексом ``polygon_index`` в слое окклюзии TileSet с индексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_occluder_polygons_count:

.. rst-class:: classref-method

|void| **set_occluder_polygons_count**\ (\ layer_id\: :ref:`int<class_int>`, polygons_count\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_set_occluder_polygons_count>`

Устанавливает количество полигонов окклюдера в слое окклюзии TileSet с индексом ``layer_id``.

.. rst-class:: classref-item-separator

----

.. _class_TileData_method_set_terrain_peering_bit:

.. rst-class:: classref-method

|void| **set_terrain_peering_bit**\ (\ peering_bit\: :ref:`CellNeighbor<enum_TileSet_CellNeighbor>`, terrain\: :ref:`int<class_int>`\ ) :ref:`🔗<class_TileData_method_set_terrain_peering_bit>`

Устанавливает бит ландшафта тайла для заданного направления ``peering_bit``. Для проверки корректности направления используйте :ref:`is_valid_terrain_peering_bit()<class_TileData_method_is_valid_terrain_peering_bit>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
