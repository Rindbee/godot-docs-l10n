:github_url: hide

.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/modules/gridmap/doc_classes/GridMap.xml.

.. _class_GridMap:

GridMap
=======

**Наследует:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Узел для 3D-карт на основе плиток.

.. rst-class:: classref-introduction-group

Описание
----------------

GridMap позволяет интерактивно размещать меши на сетке. Он работает как в редакторе, так и через скрипты, что помогает создавать внутриигровые редакторы уровней.

GridMap использует :ref:`MeshLibrary<class_MeshLibrary>`, содержащую список тайлов. Каждый тайл — это меш с материалами плюс опциональные формы столкновений и навигации.

GridMap содержит коллекцию ячеек. Каждая ячейка сетки ссылается на тайл в :ref:`MeshLibrary<class_MeshLibrary>`. Все ячейки карты имеют одинаковые размеры.

Внутренне GridMap разделён на разреженную коллекцию октантов для эффективного рендеринга и обработки физики. Каждый октант имеет одинаковые размеры и может содержать несколько ячеек.

\ **Примечание:** GridMap не наследует от :ref:`VisualInstance3D<class_VisualInstance3D>`, поэтому не может быть скрыт или маскирован через :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>`. Если свет не влияет на первый слой, весь GridMap не будет освещён этим источником света.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Использование карт сетки <../tutorials/3d/using_gridmaps>`

- `Демо-версия 3D-платформера <https://godotengine.org/asset-library/asset/2748>`__

- `Демонстрация 3D-кинематического персонажа <https://godotengine.org/asset-library/asset/2739>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------------------+----------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                       | :ref:`bake_navigation<class_GridMap_property_bake_navigation>`       | ``false``            |
   +-----------------------------------------------+----------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                       | :ref:`cell_center_x<class_GridMap_property_cell_center_x>`           | ``true``             |
   +-----------------------------------------------+----------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                       | :ref:`cell_center_y<class_GridMap_property_cell_center_y>`           | ``true``             |
   +-----------------------------------------------+----------------------------------------------------------------------+----------------------+
   | :ref:`bool<class_bool>`                       | :ref:`cell_center_z<class_GridMap_property_cell_center_z>`           | ``true``             |
   +-----------------------------------------------+----------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                         | :ref:`cell_octant_size<class_GridMap_property_cell_octant_size>`     | ``8``                |
   +-----------------------------------------------+----------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                     | :ref:`cell_scale<class_GridMap_property_cell_scale>`                 | ``1.0``              |
   +-----------------------------------------------+----------------------------------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>`                 | :ref:`cell_size<class_GridMap_property_cell_size>`                   | ``Vector3(2, 2, 2)`` |
   +-----------------------------------------------+----------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                         | :ref:`collision_layer<class_GridMap_property_collision_layer>`       | ``1``                |
   +-----------------------------------------------+----------------------------------------------------------------------+----------------------+
   | :ref:`int<class_int>`                         | :ref:`collision_mask<class_GridMap_property_collision_mask>`         | ``1``                |
   +-----------------------------------------------+----------------------------------------------------------------------+----------------------+
   | :ref:`float<class_float>`                     | :ref:`collision_priority<class_GridMap_property_collision_priority>` | ``1.0``              |
   +-----------------------------------------------+----------------------------------------------------------------------+----------------------+
   | :ref:`MeshLibrary<class_MeshLibrary>`         | :ref:`mesh_library<class_GridMap_property_mesh_library>`             |                      |
   +-----------------------------------------------+----------------------------------------------------------------------+----------------------+
   | :ref:`PhysicsMaterial<class_PhysicsMaterial>` | :ref:`physics_material<class_GridMap_property_physics_material>`     |                      |
   +-----------------------------------------------+----------------------------------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`clear<class_GridMap_method_clear>`\ (\ )                                                                                                                                      |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`clear_baked_meshes<class_GridMap_method_clear_baked_meshes>`\ (\ )                                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                        | :ref:`get_bake_mesh_instance<class_GridMap_method_get_bake_mesh_instance>`\ (\ idx\: :ref:`int<class_int>`\ )                                                                       |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                    | :ref:`get_bake_meshes<class_GridMap_method_get_bake_meshes>`\ (\ )                                                                                                                  |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`                                    | :ref:`get_basis_with_orthogonal_index<class_GridMap_method_get_basis_with_orthogonal_index>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                           |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_cell_item<class_GridMap_method_get_cell_item>`\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                                                                  |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Basis<class_Basis>`                                    | :ref:`get_cell_item_basis<class_GridMap_method_get_cell_item_basis>`\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                                                      |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_cell_item_orientation<class_GridMap_method_get_cell_item_orientation>`\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                                          |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`get_collision_layer_value<class_GridMap_method_get_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                                                |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                      | :ref:`get_collision_mask_value<class_GridMap_method_get_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`\ ) |const|                                                  |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                                    | :ref:`get_meshes<class_GridMap_method_get_meshes>`\ (\ ) |const|                                                                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                                        | :ref:`get_navigation_map<class_GridMap_method_get_navigation_map>`\ (\ ) |const|                                                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                        | :ref:`get_orthogonal_index_from_basis<class_GridMap_method_get_orthogonal_index_from_basis>`\ (\ basis\: :ref:`Basis<class_Basis>`\ ) |const|                                       |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] | :ref:`get_used_cells<class_GridMap_method_get_used_cells>`\ (\ ) |const|                                                                                                            |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] | :ref:`get_used_cells_by_item<class_GridMap_method_get_used_cells_by_item>`\ (\ item\: :ref:`int<class_int>`\ ) |const|                                                              |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>`                              | :ref:`local_to_map<class_GridMap_method_local_to_map>`\ (\ local_position\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                                |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`make_baked_meshes<class_GridMap_method_make_baked_meshes>`\ (\ gen_lightmap_uv\: :ref:`bool<class_bool>` = false, lightmap_uv_texel_size\: :ref:`float<class_float>` = 0.1\ ) |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                                | :ref:`map_to_local<class_GridMap_method_map_to_local>`\ (\ map_position\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                                                                |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`resource_changed<class_GridMap_method_resource_changed>`\ (\ resource\: :ref:`Resource<class_Resource>`\ )                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_cell_item<class_GridMap_method_set_cell_item>`\ (\ position\: :ref:`Vector3i<class_Vector3i>`, item\: :ref:`int<class_int>`, orientation\: :ref:`int<class_int>` = 0\ )   |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_collision_layer_value<class_GridMap_method_set_collision_layer_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )                       |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_collision_mask_value<class_GridMap_method_set_collision_mask_value>`\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ )                         |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                       | :ref:`set_navigation_map<class_GridMap_method_set_navigation_map>`\ (\ navigation_map\: :ref:`RID<class_RID>`\ )                                                                    |
   +--------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Сигналы
--------------

.. _class_GridMap_signal_cell_size_changed:

.. rst-class:: classref-signal

**cell_size_changed**\ (\ cell_size\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_GridMap_signal_cell_size_changed>`

Вызывается при изменении :ref:`cell_size<class_GridMap_property_cell_size>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_signal_changed:

.. rst-class:: classref-signal

**changed**\ (\ ) :ref:`🔗<class_GridMap_signal_changed>`

Вызывается при изменении :ref:`MeshLibrary<class_MeshLibrary>` данной GridMap.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константы
------------------

.. _class_GridMap_constant_INVALID_CELL_ITEM:

.. rst-class:: classref-constant

**INVALID_CELL_ITEM** = ``-1`` :ref:`🔗<class_GridMap_constant_INVALID_CELL_ITEM>`

Недопустимый элемент ячейки, который можно использовать в :ref:`set_cell_item()<class_GridMap_method_set_cell_item>` для очистки ячеек (или представлять пустую ячейку в :ref:`get_cell_item()<class_GridMap_method_get_cell_item>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_GridMap_property_bake_navigation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **bake_navigation** = ``false`` :ref:`🔗<class_GridMap_property_bake_navigation>`

.. rst-class:: classref-property-setget

- |void| **set_bake_navigation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_baking_navigation**\ (\ )

Если ``true``, этот GridMap создает навигационную область для каждой ячейки, которая использует элемент :ref:`mesh_library<class_GridMap_property_mesh_library>` с навигационной сеткой. Созданная навигационная область будет использовать битовую маску навигационных слоев, назначенную элементу :ref:`MeshLibrary<class_MeshLibrary>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_center_x:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cell_center_x** = ``true`` :ref:`🔗<class_GridMap_property_cell_center_x>`

.. rst-class:: classref-property-setget

- |void| **set_center_x**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_center_x**\ (\ )

Если ``true``, элементы сетки центрируются по оси X.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_center_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cell_center_y** = ``true`` :ref:`🔗<class_GridMap_property_cell_center_y>`

.. rst-class:: classref-property-setget

- |void| **set_center_y**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_center_y**\ (\ )

Если ``true``, элементы сетки центрируются по оси Y.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_center_z:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cell_center_z** = ``true`` :ref:`🔗<class_GridMap_property_cell_center_z>`

.. rst-class:: classref-property-setget

- |void| **set_center_z**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_center_z**\ (\ )

Если ``true``, элементы сетки центрируются по оси Z.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_octant_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **cell_octant_size** = ``8`` :ref:`🔗<class_GridMap_property_cell_octant_size>`

.. rst-class:: classref-property-setget

- |void| **set_octant_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_octant_size**\ (\ )

Размер каждого октанта измеряется в количестве ячеек. Это относится ко всем трем осям.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **cell_scale** = ``1.0`` :ref:`🔗<class_GridMap_property_cell_scale>`

.. rst-class:: classref-property-setget

- |void| **set_cell_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cell_scale**\ (\ )

Масштаб элементов ячеек.

Это не влияет на размер самих ячеек сетки, а только на элементы в них. Это можно использовать, чтобы элементы ячеек перекрывали своих соседей.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **cell_size** = ``Vector3(2, 2, 2)`` :ref:`🔗<class_GridMap_property_cell_size>`

.. rst-class:: classref-property-setget

- |void| **set_cell_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_cell_size**\ (\ )

Размеры ячеек сетки.

Это не влияет на размер ячеек. См. :ref:`cell_scale<class_GridMap_property_cell_scale>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_collision_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_layer** = ``1`` :ref:`🔗<class_GridMap_property_collision_layer>`

.. rst-class:: classref-property-setget

- |void| **set_collision_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_layer**\ (\ )

Физические слои, в которых находится этот GridMap.

GridMaps действуют как статические тела, то есть на них не влияет гравитация или другие силы. Они влияют только на другие физические тела, которые сталкиваются с ними.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_GridMap_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

Физические слои, в которых этот GridMap обнаруживает столкновения. Для получения дополнительной информации см. `Слои и маски столкновений <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ в документации.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_collision_priority:

.. rst-class:: classref-property

:ref:`float<class_float>` **collision_priority** = ``1.0`` :ref:`🔗<class_GridMap_property_collision_priority>`

.. rst-class:: classref-property-setget

- |void| **set_collision_priority**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_collision_priority**\ (\ )

Приоритет, используемый для решения столкновений при возникновении проникновения. Чем выше приоритет, тем ниже будет проникновение в объект. Это может быть использовано, например, для предотвращения прорыва игрока через границы уровня.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_mesh_library:

.. rst-class:: classref-property

:ref:`MeshLibrary<class_MeshLibrary>` **mesh_library** :ref:`🔗<class_GridMap_property_mesh_library>`

.. rst-class:: classref-property-setget

- |void| **set_mesh_library**\ (\ value\: :ref:`MeshLibrary<class_MeshLibrary>`\ )
- :ref:`MeshLibrary<class_MeshLibrary>` **get_mesh_library**\ (\ )

Присвоенный :ref:`MeshLibrary<class_MeshLibrary>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_physics_material:

.. rst-class:: classref-property

:ref:`PhysicsMaterial<class_PhysicsMaterial>` **physics_material** :ref:`🔗<class_GridMap_property_physics_material>`

.. rst-class:: classref-property-setget

- |void| **set_physics_material**\ (\ value\: :ref:`PhysicsMaterial<class_PhysicsMaterial>`\ )
- :ref:`PhysicsMaterial<class_PhysicsMaterial>` **get_physics_material**\ (\ )

Переопределяет физические свойства трения и отскока по умолчанию для всего **GridMap**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_GridMap_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_GridMap_method_clear>`

Очистить все ячейки.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_clear_baked_meshes:

.. rst-class:: classref-method

|void| **clear_baked_meshes**\ (\ ) :ref:`🔗<class_GridMap_method_clear_baked_meshes>`

Очищает все запеченные сетки. См. :ref:`make_baked_meshes()<class_GridMap_method_make_baked_meshes>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_bake_mesh_instance:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_bake_mesh_instance**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GridMap_method_get_bake_mesh_instance>`

Возвращает :ref:`RID<class_RID>` запеченной сетки с заданным ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_bake_meshes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_bake_meshes**\ (\ ) :ref:`🔗<class_GridMap_method_get_bake_meshes>`

Возвращает массив ссылок :ref:`ArrayMesh<class_ArrayMesh>` и :ref:`Transform3D<class_Transform3D>` всех запекаемых сеток, существующих в текущем GridMap. Чётные индексы содержат :ref:`ArrayMesh<class_ArrayMesh>`, а нечётные — :ref:`Transform3D<class_Transform3D>`, которые всегда равны :ref:`Transform3D.IDENTITY<class_Transform3D_constant_IDENTITY>`.

Этот метод использует выходные данные метода :ref:`make_baked_meshes()<class_GridMap_method_make_baked_meshes>`, который будет вызван с ``gen_lightmap_uv`` равным ``true`` и ``lightmap_uv_texel_size`` равным ``0.1``, если он ещё не был вызван.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_basis_with_orthogonal_index:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **get_basis_with_orthogonal_index**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_basis_with_orthogonal_index>`

Возвращает один из 24 возможных поворотов, которые лежат вдоль векторов (x,y,z), где каждый компонент равен -1, 0 или 1. Для получения дополнительных сведений обратитесь к исходному коду Godot.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_cell_item:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_item**\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_get_cell_item>`

Индекс элемента :ref:`MeshLibrary<class_MeshLibrary>`, расположенный в заданных координатах сетки. Если ячейка пуста, будет возвращена :ref:`INVALID_CELL_ITEM<class_GridMap_constant_INVALID_CELL_ITEM>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_cell_item_basis:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **get_cell_item_basis**\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_get_cell_item_basis>`

Возвращает базис, задающий ориентацию указанной ячейке.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_cell_item_orientation:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_item_orientation**\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_get_cell_item_orientation>`

Ориентация ячейки в заданных координатах сетки. ``-1`` возвращается, если ячейка пуста.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_collision_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_collision_layer_value>`

Возвращает, включен ли указанный слой :ref:`collision_layer<class_GridMap_property_collision_layer>`, учитывая ``layer_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_collision_mask_value>`

Возвращает, включен ли указанный слой :ref:`collision_mask<class_GridMap_property_collision_mask>`, учитывая ``layer_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_meshes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_meshes**\ (\ ) |const| :ref:`🔗<class_GridMap_method_get_meshes>`

Возвращает массив ссылок :ref:`Transform3D<class_Transform3D>` и :ref:`Mesh<class_Mesh>`, соответствующих непустым ячейкам сетки. Преобразования задаются в локальном пространстве. Чётные индексы содержат :ref:`Transform3D<class_Transform3D>`, а нечётные — :ref:`Mesh<class_Mesh>`, относящиеся к :ref:`Transform3D<class_Transform3D>` в индексе, предшествующем ему.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_GridMap_method_get_navigation_map>`

Возвращает :ref:`RID<class_RID>` навигационной карты, которую этот узел GridMap использует для своих ячеек запеченных навигационных сеток.

Эта функция всегда возвращает набор карт на узле GridMap, а не карту на NavigationServer. Если карта изменяется напрямую с помощью API NavigationServer, узел GridMap не будет знать об изменении карты.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_orthogonal_index_from_basis:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_orthogonal_index_from_basis**\ (\ basis\: :ref:`Basis<class_Basis>`\ ) |const| :ref:`🔗<class_GridMap_method_get_orthogonal_index_from_basis>`

Эта функция рассматривает дискретизацию вращений в 24 точки на единичной сфере, лежащих вдоль векторов (x,y,z), где каждый компонент равен -1, 0 или 1, и возвращает индекс (в диапазоне от 0 до 23) точки, наилучшим образом представляющей ориентацию объекта. Для получения дополнительных сведений обратитесь к исходному коду Godot.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_cells:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_cells**\ (\ ) |const| :ref:`🔗<class_GridMap_method_get_used_cells>`

Возвращает массив :ref:`Vector3<class_Vector3>` с непустыми координатами ячеек на карте сетки.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_cells_by_item:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_cells_by_item**\ (\ item\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_used_cells_by_item>`

Возвращает массив всех ячеек с заданным индексом элемента, указанным в ``item``.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_local_to_map:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **local_to_map**\ (\ local_position\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_GridMap_method_local_to_map>`

Возвращает координаты карты ячейки, содержащей заданный ``local_position``. Если ``local_position`` находится в глобальных координатах, рассмотрите возможность использования :ref:`Node3D.to_local()<class_Node3D_method_to_local>` перед передачей его этому методу. См. также :ref:`map_to_local()<class_GridMap_method_map_to_local>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_make_baked_meshes:

.. rst-class:: classref-method

|void| **make_baked_meshes**\ (\ gen_lightmap_uv\: :ref:`bool<class_bool>` = false, lightmap_uv_texel_size\: :ref:`float<class_float>` = 0.1\ ) :ref:`🔗<class_GridMap_method_make_baked_meshes>`

Генерирует запечённую сетку, представляющую все сетки в назначенной :ref:`MeshLibrary<class_MeshLibrary>` для использования с :ref:`LightmapGI<class_LightmapGI>`. Если ``gen_lightmap_uv`` имеет значение ``true``, данные UV2 будут сгенерированы для каждой сетки, используемой в данный момент в **GridMap**. В противном случае запечённые карты освещения будут доступны только для сеток, у которых уже есть данные UV2. При генерации UV2 параметр ``lightmap_uv_texel_size`` управляет плотностью текселей для карт освещения, чем ниже значение, тем более детальные карты освещения получаются. ``lightmap_uv_texel_size`` игнорируется, если ``gen_lightmap_uv`` имеет значение ``false``. См. также :ref:`get_bake_meshes()<class_GridMap_method_get_bake_meshes>`, который использует выходные данные этого метода.

\ **Примечание:** Вызов этого метода не приводит к запеканию карт освещения, поскольку запекание выполняется с помощью узла :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_map_to_local:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **map_to_local**\ (\ map_position\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_map_to_local>`

Возвращает позицию ячейки сетки в локальном координатном пространстве GridMap. Чтобы преобразовать возвращаемое значение в глобальные координаты, используйте :ref:`Node3D.to_global()<class_Node3D_method_to_global>`. См. также :ref:`local_to_map()<class_GridMap_method_local_to_map>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_resource_changed:

.. rst-class:: classref-method

|void| **resource_changed**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_GridMap_method_resource_changed>`

**Устарело:** Use :ref:`Resource.changed<class_Resource_signal_changed>` instead.

Этот метод ничего не даёт.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_set_cell_item:

.. rst-class:: classref-method

|void| **set_cell_item**\ (\ position\: :ref:`Vector3i<class_Vector3i>`, item\: :ref:`int<class_int>`, orientation\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_GridMap_method_set_cell_item>`

Устанавливает индекс сетки для ячейки, на которую ссылаются ее координаты сетки.

Отрицательный индекс элемента, такой как :ref:`INVALID_CELL_ITEM<class_GridMap_constant_INVALID_CELL_ITEM>`, очистит ячейку.

При желании можно передать ориентацию элемента. Для допустимых значений ориентации см. :ref:`get_orthogonal_index_from_basis()<class_GridMap_method_get_orthogonal_index_from_basis>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_set_collision_layer_value:

.. rst-class:: classref-method

|void| **set_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_GridMap_method_set_collision_layer_value>`

На основе ``value`` включает или отключает указанный слой в :ref:`collision_layer<class_GridMap_property_collision_layer>`, учитывая ``layer_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_GridMap_method_set_collision_mask_value>`

На основе ``value`` включает или отключает указанный слой в :ref:`collision_mask<class_GridMap_property_collision_mask>` при заданном ``layer_number`` от 1 до 32.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_GridMap_method_set_navigation_map>`

Устанавливает :ref:`RID<class_RID>` навигационной карты, которую этот узел GridMap должен использовать для своих запеченных ячеек навигационных сеток.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
