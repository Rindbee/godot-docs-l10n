:github_url: hide

.. _class_NavigationMesh:

NavigationMesh
==============

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Навигационная сетка, определяющая проходимую территорию и препятствия.

.. rst-class:: classref-introduction-group

Описание
----------------

Навигационная сетка представляет собой набор полигонов, которые определяют, по каким областям среды можно перемещатся, чтобы помочь агентам находить путь в сложных пространствах.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование NavigationMeshes <../tutorials/navigation/navigation_using_navigationmeshes>`

- `Демонстрация 3D-навигации <https://godotengine.org/asset-library/asset/2743>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`agent_height<class_NavigationMesh_property_agent_height>`                                         | ``1.5``                             |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`agent_max_climb<class_NavigationMesh_property_agent_max_climb>`                                   | ``0.25``                            |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`agent_max_slope<class_NavigationMesh_property_agent_max_slope>`                                   | ``45.0``                            |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`agent_radius<class_NavigationMesh_property_agent_radius>`                                         | ``0.5``                             |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`border_size<class_NavigationMesh_property_border_size>`                                           | ``0.0``                             |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`cell_height<class_NavigationMesh_property_cell_height>`                                           | ``0.25``                            |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`cell_size<class_NavigationMesh_property_cell_size>`                                               | ``0.25``                            |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`detail_sample_distance<class_NavigationMesh_property_detail_sample_distance>`                     | ``6.0``                             |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`detail_sample_max_error<class_NavigationMesh_property_detail_sample_max_error>`                   | ``1.0``                             |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`edge_max_error<class_NavigationMesh_property_edge_max_error>`                                     | ``1.3``                             |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`edge_max_length<class_NavigationMesh_property_edge_max_length>`                                   | ``0.0``                             |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`AABB<class_AABB>`                                             | :ref:`filter_baking_aabb<class_NavigationMesh_property_filter_baking_aabb>`                             | ``AABB(0, 0, 0, 0, 0, 0)``          |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                       | :ref:`filter_baking_aabb_offset<class_NavigationMesh_property_filter_baking_aabb_offset>`               | ``Vector3(0, 0, 0)``                |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`filter_ledge_spans<class_NavigationMesh_property_filter_ledge_spans>`                             | ``false``                           |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`filter_low_hanging_obstacles<class_NavigationMesh_property_filter_low_hanging_obstacles>`         | ``false``                           |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`bool<class_bool>`                                             | :ref:`filter_walkable_low_height_spans<class_NavigationMesh_property_filter_walkable_low_height_spans>` | ``false``                           |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`int<class_int>`                                               | :ref:`geometry_collision_mask<class_NavigationMesh_property_geometry_collision_mask>`                   | ``4294967295``                      |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>`   | :ref:`geometry_parsed_geometry_type<class_NavigationMesh_property_geometry_parsed_geometry_type>`       | ``2``                               |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>`   | :ref:`geometry_source_geometry_mode<class_NavigationMesh_property_geometry_source_geometry_mode>`       | ``0``                               |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`StringName<class_StringName>`                                 | :ref:`geometry_source_group_name<class_NavigationMesh_property_geometry_source_group_name>`             | ``&"navigation_mesh_source_group"`` |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`region_merge_size<class_NavigationMesh_property_region_merge_size>`                               | ``20.0``                            |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`region_min_size<class_NavigationMesh_property_region_min_size>`                                   | ``2.0``                             |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>` | :ref:`sample_partition_type<class_NavigationMesh_property_sample_partition_type>`                       | ``0``                               |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+
   | :ref:`float<class_float>`                                           | :ref:`vertices_per_polygon<class_NavigationMesh_property_vertices_per_polygon>`                         | ``6.0``                             |
   +---------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------+-------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_polygon<class_NavigationMesh_method_add_polygon>`\ (\ polygon\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )                                       |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear<class_NavigationMesh_method_clear>`\ (\ )                                                                                                              |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear_polygons<class_NavigationMesh_method_clear_polygons>`\ (\ )                                                                                            |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`create_from_mesh<class_NavigationMesh_method_create_from_mesh>`\ (\ mesh\: :ref:`Mesh<class_Mesh>`\ )                                                        |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`get_collision_mask_value<class_NavigationMesh_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                          |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`get_polygon<class_NavigationMesh_method_get_polygon>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                     |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_polygon_count<class_NavigationMesh_method_get_polygon_count>`\ (\ ) |const|                                                                              |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>` | :ref:`get_vertices<class_NavigationMesh_method_get_vertices>`\ (\ ) |const|                                                                                        |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_collision_mask_value<class_NavigationMesh_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_vertices<class_NavigationMesh_method_set_vertices>`\ (\ vertices\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )                                |
   +-----------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_NavigationMesh_SamplePartitionType:

.. rst-class:: classref-enumeration

enum **SamplePartitionType**: :ref:`🔗<enum_NavigationMesh_SamplePartitionType>`

.. _class_NavigationMesh_constant_SAMPLE_PARTITION_WATERSHED:

.. rst-class:: classref-enumeration-constant

:ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>` **SAMPLE_PARTITION_WATERSHED** = ``0``

Разделение водораздела. Обычно это лучший выбор, если вы предварительно вычисляете навигационную сетку, используйте его, если у вас большие открытые пространства.

.. _class_NavigationMesh_constant_SAMPLE_PARTITION_MONOTONE:

.. rst-class:: classref-enumeration-constant

:ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>` **SAMPLE_PARTITION_MONOTONE** = ``1``

Монотонное разбиение. Используйте это, если вам нужна быстрая генерация навигационной сетки.

.. _class_NavigationMesh_constant_SAMPLE_PARTITION_LAYERS:

.. rst-class:: classref-enumeration-constant

:ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>` **SAMPLE_PARTITION_LAYERS** = ``2``

Разделение слоев. Хороший выбор для использования в мозаичной навигационной сетке с тайлами среднего и малого размера.

.. _class_NavigationMesh_constant_SAMPLE_PARTITION_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>` **SAMPLE_PARTITION_MAX** = ``3``

Представляет размер перечисления :ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>`.

.. rst-class:: classref-item-separator

----

.. _enum_NavigationMesh_ParsedGeometryType:

.. rst-class:: classref-enumeration

enum **ParsedGeometryType**: :ref:`🔗<enum_NavigationMesh_ParsedGeometryType>`

.. _class_NavigationMesh_constant_PARSED_GEOMETRY_MESH_INSTANCES:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>` **PARSED_GEOMETRY_MESH_INSTANCES** = ``0``

Анализирует экземпляры сетки как геометрию. Сюда входят узлы :ref:`MeshInstance3D<class_MeshInstance3D>`, :ref:`CSGShape3D<class_CSGShape3D>` и :ref:`GridMap<class_GridMap>`.

.. _class_NavigationMesh_constant_PARSED_GEOMETRY_STATIC_COLLIDERS:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>` **PARSED_GEOMETRY_STATIC_COLLIDERS** = ``1``

Анализирует коллайдеры :ref:`StaticBody3D<class_StaticBody3D>` как геометрию. Коллайдер должен находиться в любом из слоев, указанных :ref:`geometry_collision_mask<class_NavigationMesh_property_geometry_collision_mask>`.

.. _class_NavigationMesh_constant_PARSED_GEOMETRY_BOTH:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>` **PARSED_GEOMETRY_BOTH** = ``2``

Оба :ref:`PARSED_GEOMETRY_MESH_INSTANCES<class_NavigationMesh_constant_PARSED_GEOMETRY_MESH_INSTANCES>` и :ref:`PARSED_GEOMETRY_STATIC_COLLIDERS<class_NavigationMesh_constant_PARSED_GEOMETRY_STATIC_COLLIDERS>`.

.. _class_NavigationMesh_constant_PARSED_GEOMETRY_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>` **PARSED_GEOMETRY_MAX** = ``3``

Представляет размер перечисления :ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>`.

.. rst-class:: classref-item-separator

----

.. _enum_NavigationMesh_SourceGeometryMode:

.. rst-class:: classref-enumeration

enum **SourceGeometryMode**: :ref:`🔗<enum_NavigationMesh_SourceGeometryMode>`

.. _class_NavigationMesh_constant_SOURCE_GEOMETRY_ROOT_NODE_CHILDREN:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>` **SOURCE_GEOMETRY_ROOT_NODE_CHILDREN** = ``0``

Рекурсивно сканирует дочерние узлы корневого узла на предмет геометрии.

.. _class_NavigationMesh_constant_SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>` **SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN** = ``1``

Сканирует узлы в группе и их дочерние узлы рекурсивно на предмет геометрии. Группа указывается :ref:`geometry_source_group_name<class_NavigationMesh_property_geometry_source_group_name>`.

.. _class_NavigationMesh_constant_SOURCE_GEOMETRY_GROUPS_EXPLICIT:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>` **SOURCE_GEOMETRY_GROUPS_EXPLICIT** = ``2``

Использует узлы в группе для геометрии. Группа указывается :ref:`geometry_source_group_name<class_NavigationMesh_property_geometry_source_group_name>`.

.. _class_NavigationMesh_constant_SOURCE_GEOMETRY_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>` **SOURCE_GEOMETRY_MAX** = ``3``

Представляет размер перечисления :ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_NavigationMesh_property_agent_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **agent_height** = ``1.5`` :ref:`🔗<class_NavigationMesh_property_agent_height>`

.. rst-class:: classref-property-setget

- |void| **set_agent_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_agent_height**\ (\ )

Минимальная высота от пола до потолка, при которой площадь пола все еще будет считаться пригодной для ходьбы.

\ **Примечание:** При выпечке это значение будет округлено до ближайшего кратного :ref:`cell_height<class_NavigationMesh_property_cell_height>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_agent_max_climb:

.. rst-class:: classref-property

:ref:`float<class_float>` **agent_max_climb** = ``0.25`` :ref:`🔗<class_NavigationMesh_property_agent_max_climb>`

.. rst-class:: classref-property-setget

- |void| **set_agent_max_climb**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_agent_max_climb**\ (\ )

Минимальная высота уступа, которая считается все еще проходимой.

\ **Примечание:** При выпечке это значение будет округлено до ближайшего кратного :ref:`cell_height<class_NavigationMesh_property_cell_height>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_agent_max_slope:

.. rst-class:: classref-property

:ref:`float<class_float>` **agent_max_slope** = ``45.0`` :ref:`🔗<class_NavigationMesh_property_agent_max_slope>`

.. rst-class:: classref-property-setget

- |void| **set_agent_max_slope**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_agent_max_slope**\ (\ )

Максимальный уклон, который считается пригодным для ходьбы, в градусах.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_agent_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **agent_radius** = ``0.5`` :ref:`🔗<class_NavigationMesh_property_agent_radius>`

.. rst-class:: classref-property-setget

- |void| **set_agent_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_agent_radius**\ (\ )

Расстояние, на которое будет размыта/сокращена проходимая область поля высот от препятствий.

\ **Примечание:** При запекании это значение будет округлено до ближайшего значения, кратного :ref:`cell_size<class_NavigationMesh_property_cell_size>`.

\ **Примечание:** Радиус должен быть равен или больше ``0.0``. Если радиус равен ``0.0``, исправить недопустимые наложения контуров и другие ошибки точности во время запекания будет невозможно. В результате некоторые препятствия могут быть некорректно исключены из финальной навигационной сетки или могут привести к удалению полигонов навигационной сетки.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_border_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **border_size** = ``0.0`` :ref:`🔗<class_NavigationMesh_property_border_size>`

.. rst-class:: classref-property-setget

- |void| **set_border_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_border_size**\ (\ )

Размер ненавигируемой границы вокруг области запекания.

В сочетании со значением :ref:`filter_baking_aabb<class_NavigationMesh_property_filter_baking_aabb>` и значением :ref:`edge_max_error<class_NavigationMesh_property_edge_max_error>`, равным ``1.0`` или меньше размера границы, может использоваться для запекания навигационных сеток, выровненных по тайлам, без уменьшения краёв тайлов на :ref:`agent_radius<class_NavigationMesh_property_agent_radius>`.

\ **Примечание:** Если это значение не равно ``0.0``, оно будет округлено до ближайшего значения, кратного :ref:`cell_size<class_NavigationMesh_property_cell_size>` во время запекания.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_cell_height:

.. rst-class:: classref-property

:ref:`float<class_float>` **cell_height** = ``0.25`` :ref:`🔗<class_NavigationMesh_property_cell_height>`

.. rst-class:: classref-property-setget

- |void| **set_cell_height**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cell_height**\ (\ )

Ячейка высоты, используемая для растеризации вершин навигационной сетки по оси Y. Должна совпадать с высотой ячейки на навигационной карте.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_cell_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **cell_size** = ``0.25`` :ref:`🔗<class_NavigationMesh_property_cell_size>`

.. rst-class:: classref-property-setget

- |void| **set_cell_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cell_size**\ (\ )

Ячейка высоты, используемая для растеризации вершин навигационной сетки на плоскости XZ. Должна совпадать с размером ячейки на навигационной карте.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_detail_sample_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **detail_sample_distance** = ``6.0`` :ref:`🔗<class_NavigationMesh_property_detail_sample_distance>`

.. rst-class:: classref-property-setget

- |void| **set_detail_sample_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_detail_sample_distance**\ (\ )

Расстояние выборки, используемое при создании сетки детализации, в единицах ячеек.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_detail_sample_max_error:

.. rst-class:: classref-property

:ref:`float<class_float>` **detail_sample_max_error** = ``1.0`` :ref:`🔗<class_NavigationMesh_property_detail_sample_max_error>`

.. rst-class:: classref-property-setget

- |void| **set_detail_sample_max_error**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_detail_sample_max_error**\ (\ )

Максимальное расстояние, на которое должна отклоняться поверхность сетки детали от поля высоты, в единицах ячеек.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_edge_max_error:

.. rst-class:: classref-property

:ref:`float<class_float>` **edge_max_error** = ``1.3`` :ref:`🔗<class_NavigationMesh_property_edge_max_error>`

.. rst-class:: classref-property-setget

- |void| **set_edge_max_error**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_edge_max_error**\ (\ )

Максимальное расстояние, на которое края упрощенного контура должны отклоняться от исходного необработанного контура.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_edge_max_length:

.. rst-class:: classref-property

:ref:`float<class_float>` **edge_max_length** = ``0.0`` :ref:`🔗<class_NavigationMesh_property_edge_max_length>`

.. rst-class:: classref-property-setget

- |void| **set_edge_max_length**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_edge_max_length**\ (\ )

Максимально допустимая длина контурных кромок вдоль границы сетки. Значение ``0.0`` отключает эту функцию.

\ **Примечание:** При запекании это значение будет округлено до ближайшего кратного :ref:`cell_size<class_NavigationMesh_property_cell_size>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_filter_baking_aabb:

.. rst-class:: classref-property

:ref:`AABB<class_AABB>` **filter_baking_aabb** = ``AABB(0, 0, 0, 0, 0, 0)`` :ref:`🔗<class_NavigationMesh_property_filter_baking_aabb>`

.. rst-class:: classref-property-setget

- |void| **set_filter_baking_aabb**\ (\ value\: :ref:`AABB<class_AABB>`\ )
- :ref:`AABB<class_AABB>` **get_filter_baking_aabb**\ (\ )

Если запекание :ref:`AABB<class_AABB>` имеет объем, запекание навигационной сетки будет ограничено его охватывающей областью.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_filter_baking_aabb_offset:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **filter_baking_aabb_offset** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_NavigationMesh_property_filter_baking_aabb_offset>`

.. rst-class:: classref-property-setget

- |void| **set_filter_baking_aabb_offset**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_filter_baking_aabb_offset**\ (\ )

Смещение позиции, примененное к :ref:`filter_baking_aabb<class_NavigationMesh_property_filter_baking_aabb>` :ref:`AABB<class_AABB>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_filter_ledge_spans:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **filter_ledge_spans** = ``false`` :ref:`🔗<class_NavigationMesh_property_filter_ledge_spans>`

.. rst-class:: classref-property-setget

- |void| **set_filter_ledge_spans**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_filter_ledge_spans**\ (\ )

Если ``true``, то пролеты, являющиеся уступами, помечаются как непроходимые.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_filter_low_hanging_obstacles:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **filter_low_hanging_obstacles** = ``false`` :ref:`🔗<class_NavigationMesh_property_filter_low_hanging_obstacles>`

.. rst-class:: classref-property-setget

- |void| **set_filter_low_hanging_obstacles**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_filter_low_hanging_obstacles**\ (\ )

Если ``true``, то непроходимые участки помечаются как проходимые, если их максимум находится в пределах :ref:`agent_max_climb<class_NavigationMesh_property_agent_max_climb>` от проходимого соседа.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_filter_walkable_low_height_spans:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **filter_walkable_low_height_spans** = ``false`` :ref:`🔗<class_NavigationMesh_property_filter_walkable_low_height_spans>`

.. rst-class:: classref-property-setget

- |void| **set_filter_walkable_low_height_spans**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_filter_walkable_low_height_spans**\ (\ )

Если ``true``, то проходящие пролеты помечаются как непроходимые, если просвет над пролетом меньше, чем :ref:`agent_height<class_NavigationMesh_property_agent_height>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_geometry_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **geometry_collision_mask** = ``4294967295`` :ref:`🔗<class_NavigationMesh_property_geometry_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

Физические слои для сканирования на предмет статических коллайдеров.

Используется только когда :ref:`geometry_parsed_geometry_type<class_NavigationMesh_property_geometry_parsed_geometry_type>` равен :ref:`PARSED_GEOMETRY_STATIC_COLLIDERS<class_NavigationMesh_constant_PARSED_GEOMETRY_STATIC_COLLIDERS>` или :ref:`PARSED_GEOMETRY_BOTH<class_NavigationMesh_constant_PARSED_GEOMETRY_BOTH>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_geometry_parsed_geometry_type:

.. rst-class:: classref-property

:ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>` **geometry_parsed_geometry_type** = ``2`` :ref:`🔗<class_NavigationMesh_property_geometry_parsed_geometry_type>`

.. rst-class:: classref-property-setget

- |void| **set_parsed_geometry_type**\ (\ value\: :ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>`\ )
- :ref:`ParsedGeometryType<enum_NavigationMesh_ParsedGeometryType>` **get_parsed_geometry_type**\ (\ )

Определяет, какой тип узлов будет анализироваться как геометрия.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_geometry_source_geometry_mode:

.. rst-class:: classref-property

:ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>` **geometry_source_geometry_mode** = ``0`` :ref:`🔗<class_NavigationMesh_property_geometry_source_geometry_mode>`

.. rst-class:: classref-property-setget

- |void| **set_source_geometry_mode**\ (\ value\: :ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>`\ )
- :ref:`SourceGeometryMode<enum_NavigationMesh_SourceGeometryMode>` **get_source_geometry_mode**\ (\ )

Источник геометрии, используемой при выпечке.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_geometry_source_group_name:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **geometry_source_group_name** = ``&"navigation_mesh_source_group"`` :ref:`🔗<class_NavigationMesh_property_geometry_source_group_name>`

.. rst-class:: classref-property-setget

- |void| **set_source_group_name**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_source_group_name**\ (\ )

Имя группы для сканирования геометрии.

Используется только когда :ref:`geometry_source_geometry_mode<class_NavigationMesh_property_geometry_source_geometry_mode>` равно :ref:`SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN<class_NavigationMesh_constant_SOURCE_GEOMETRY_GROUPS_WITH_CHILDREN>` или :ref:`SOURCE_GEOMETRY_GROUPS_EXPLICIT<class_NavigationMesh_constant_SOURCE_GEOMETRY_GROUPS_EXPLICIT>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_region_merge_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **region_merge_size** = ``20.0`` :ref:`🔗<class_NavigationMesh_property_region_merge_size>`

.. rst-class:: classref-property-setget

- |void| **set_region_merge_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_region_merge_size**\ (\ )

Любые регионы с размером меньше этого будут объединены с регионами большего размера, если это возможно.

\ **Примечание:** Это значение будет возведено в квадрат для расчета количества ячеек. Например, значение 20 установит количество ячеек равным 400.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_region_min_size:

.. rst-class:: classref-property

:ref:`float<class_float>` **region_min_size** = ``2.0`` :ref:`🔗<class_NavigationMesh_property_region_min_size>`

.. rst-class:: classref-property-setget

- |void| **set_region_min_size**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_region_min_size**\ (\ )

Минимальный размер региона для его создания.

\ **Примечание:** Это значение будет возведено в квадрат для расчета минимального количества ячеек, разрешенных для формирования изолированных островных областей. Например, значение 8 установит количество ячеек равным 64.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_sample_partition_type:

.. rst-class:: classref-property

:ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>` **sample_partition_type** = ``0`` :ref:`🔗<class_NavigationMesh_property_sample_partition_type>`

.. rst-class:: classref-property-setget

- |void| **set_sample_partition_type**\ (\ value\: :ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>`\ )
- :ref:`SamplePartitionType<enum_NavigationMesh_SamplePartitionType>` **get_sample_partition_type**\ (\ )

Алгоритм разбиения для создания полигонов навигационной сетки.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_property_vertices_per_polygon:

.. rst-class:: classref-property

:ref:`float<class_float>` **vertices_per_polygon** = ``6.0`` :ref:`🔗<class_NavigationMesh_property_vertices_per_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_vertices_per_polygon**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vertices_per_polygon**\ (\ )

Максимально допустимое количество вершин для полигонов, создаваемых в процессе преобразования контура в полигон.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_NavigationMesh_method_add_polygon:

.. rst-class:: classref-method

|void| **add_polygon**\ (\ polygon\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_NavigationMesh_method_add_polygon>`

Добавляет полигон, используя индексы вершин, которые вы получаете при вызове :ref:`get_vertices()<class_NavigationMesh_method_get_vertices>`.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_NavigationMesh_method_clear>`

Очищает внутренние массивы вершин и индексов полигонов.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_clear_polygons:

.. rst-class:: classref-method

|void| **clear_polygons**\ (\ ) :ref:`🔗<class_NavigationMesh_method_clear_polygons>`

Очищает массив полигонов, но не очищает массив вершин.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_create_from_mesh:

.. rst-class:: classref-method

|void| **create_from_mesh**\ (\ mesh\: :ref:`Mesh<class_Mesh>`\ ) :ref:`🔗<class_NavigationMesh_method_create_from_mesh>`

Инициализирует навигационную сетку, устанавливая вершины и индексы в соответствии с :ref:`Mesh<class_Mesh>`.

\ **Примечание:** Заданная ``mesh`` должна иметь тип :ref:`Mesh.PRIMITIVE_TRIANGLES<class_Mesh_constant_PRIMITIVE_TRIANGLES>` и иметь массив индексов.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_NavigationMesh_method_get_collision_mask_value>`

Возвращает, включен ли указанный слой :ref:`geometry_collision_mask<class_NavigationMesh_property_geometry_collision_mask>`, учитывая ``layer_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_get_polygon:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_polygon**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_NavigationMesh_method_get_polygon>`

Возвращает :ref:`PackedInt32Array<class_PackedInt32Array>`, содержащий индексы вершин созданного полигона.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_get_polygon_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_polygon_count**\ (\ ) |const| :ref:`🔗<class_NavigationMesh_method_get_polygon_count>`

Возвращает количество полигонов в навигационной сетке.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_get_vertices:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_vertices**\ (\ ) |const| :ref:`🔗<class_NavigationMesh_method_get_vertices>`

Возвращает :ref:`PackedVector3Array<class_PackedVector3Array>`, содержащий все вершины, используемые для создания полигонов.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationMesh_method_set_collision_mask_value>`

На основе ``value`` включает или отключает указанный слой в :ref:`geometry_collision_mask<class_NavigationMesh_property_geometry_collision_mask>` при заданном ``layer_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMesh_method_set_vertices:

.. rst-class:: classref-method

|void| **set_vertices**\ (\ vertices\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_NavigationMesh_method_set_vertices>`

Задает вершины, которые затем можно индексировать для создания полигонов с помощью метода :ref:`add_polygon()<class_NavigationMesh_method_add_polygon>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
