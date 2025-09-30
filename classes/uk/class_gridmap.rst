:github_url: hide

.. meta::
	:keywords: tilemap

.. _class_GridMap:

GridMap
=======

**Успадковує:** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Вузол для 3D-карт на основі плиток.

.. rst-class:: classref-introduction-group

Опис
--------

GridMap дозволяє розміщувати сітки на сітці в інтерактивному режимі. Він працює як з редактора, так і зі скриптів, які можуть допомогти вам створити редактори рівнів у грі.

GridMaps використовують :ref:`MeshLibrary<class_MeshLibrary>`, який містить список плиток. Кожна плитка — це сітка з матеріалами, а також додаткові форми зіткнень і навігації.

GridMap містить набір клітинок. Кожна клітинка сітки посилається на плитку в :ref:`MeshLibrary<class_MeshLibrary>`. Усі клітинки на карті мають однакові розміри.

Внутрішньо GridMap розділено на розріджену колекцію октантів для ефективного відтворення та фізичної обробки. Кожен октант має однакові розміри і може містити кілька комірок.

\ **Примітка:** GridMap не розширює :ref:`VisualInstance3D<class_VisualInstance3D>`, тому його не можна приховати або замаскувати на основі :ref:`VisualInstance3D.layers<class_VisualInstance3D_property_layers>`. Якщо ви зробите так, щоб світло не впливало на перший шар, уся GridMap не буде освітлена цим світлом.

.. rst-class:: classref-introduction-group

Посібники
------------------

- :doc:`Використання карт сітки <../tutorials/3d/using_gridmaps>`

- `Демонстрація 3D-платформера <https://godotengine.org/asset-library/asset/2748>`__

- `Демонстрація тривимірного кінематичного персонажа <https://godotengine.org/asset-library/asset/2739>`__

.. rst-class:: classref-reftable-group

Властивості
----------------------

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

Методи
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

Сигнали
--------------

.. _class_GridMap_signal_cell_size_changed:

.. rst-class:: classref-signal

**cell_size_changed**\ (\ cell_size\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_GridMap_signal_cell_size_changed>`

Видається, коли :ref:`cell_size<class_GridMap_property_cell_size>` змінюється.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_signal_changed:

.. rst-class:: classref-signal

**changed**\ (\ ) :ref:`🔗<class_GridMap_signal_changed>`

Викликається, коли змінюється :ref:`MeshLibrary<class_MeshLibrary>` цієї GridMap.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константи
------------------

.. _class_GridMap_constant_INVALID_CELL_ITEM:

.. rst-class:: classref-constant

**INVALID_CELL_ITEM** = ``-1`` :ref:`🔗<class_GridMap_constant_INVALID_CELL_ITEM>`

Недійсний елемент клітинки, який можна використовувати в :ref:`set_cell_item()<class_GridMap_method_set_cell_item>` для очищення клітинок (або представляти порожню клітинку в :ref:`get_cell_item()<class_GridMap_method_get_cell_item>`).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи властивостей
------------------------------------

.. _class_GridMap_property_bake_navigation:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **bake_navigation** = ``false`` :ref:`🔗<class_GridMap_property_bake_navigation>`

.. rst-class:: classref-property-setget

- |void| **set_bake_navigation**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_baking_navigation**\ (\ )

Якщо ``true``, ця GridMap створює область навігації для кожної комірки, яка використовує елемент :ref:`mesh_library<class_GridMap_property_mesh_library>` з навігаційною сіткою. Створена область навігації використовуватиме бітову маску шарів навігації, призначену елементу :ref:`MeshLibrary<class_MeshLibrary>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_center_x:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cell_center_x** = ``true`` :ref:`🔗<class_GridMap_property_cell_center_x>`

.. rst-class:: classref-property-setget

- |void| **set_center_x**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_center_x**\ (\ )

Якщо ``true``, елементи сітки відцентровані на осі X.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_center_y:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cell_center_y** = ``true`` :ref:`🔗<class_GridMap_property_cell_center_y>`

.. rst-class:: classref-property-setget

- |void| **set_center_y**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_center_y**\ (\ )

Якщо ``true``, елементи сітки відцентровані на осі Y.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_center_z:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **cell_center_z** = ``true`` :ref:`🔗<class_GridMap_property_cell_center_z>`

.. rst-class:: classref-property-setget

- |void| **set_center_z**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_center_z**\ (\ )

Якщо ``true``, елементи сітки відцентровані на осі Z.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_octant_size:

.. rst-class:: classref-property

:ref:`int<class_int>` **cell_octant_size** = ``8`` :ref:`🔗<class_GridMap_property_cell_octant_size>`

.. rst-class:: classref-property-setget

- |void| **set_octant_size**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_octant_size**\ (\ )

Розмір кожного октанта вимірюється кількістю клітинок. Це стосується всіх трьох осей.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_scale:

.. rst-class:: classref-property

:ref:`float<class_float>` **cell_scale** = ``1.0`` :ref:`🔗<class_GridMap_property_cell_scale>`

.. rst-class:: classref-property-setget

- |void| **set_cell_scale**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_cell_scale**\ (\ )

Масштаб елементів комірки.

Це не впливає на розмір самих комірок сітки, а лише на елементи в них. Це можна використовувати для того, щоб елементи комірки перекривали сусідні.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_cell_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **cell_size** = ``Vector3(2, 2, 2)`` :ref:`🔗<class_GridMap_property_cell_size>`

.. rst-class:: classref-property-setget

- |void| **set_cell_size**\ (\ value\: :ref:`Vector3<class_Vector3>`\ )
- :ref:`Vector3<class_Vector3>` **get_cell_size**\ (\ )

Розміри комірок сітки.

Це не впливає на розмір сіток. Див. :ref:`cell_scale<class_GridMap_property_cell_scale>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_collision_layer:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_layer** = ``1`` :ref:`🔗<class_GridMap_property_collision_layer>`

.. rst-class:: classref-property-setget

- |void| **set_collision_layer**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_layer**\ (\ )

Фізичні шари цієї GridMap.

GridMaps діють як статичні тіла, тобто на них не впливає сила тяжіння чи інші сили. Вони впливають лише на інші фізичні тіла, які з ними стикаються.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_collision_mask:

.. rst-class:: classref-property

:ref:`int<class_int>` **collision_mask** = ``1`` :ref:`🔗<class_GridMap_property_collision_mask>`

.. rst-class:: classref-property-setget

- |void| **set_collision_mask**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_collision_mask**\ (\ )

Фізичні шари, у яких ця GridMap виявляє зіткнення. Щоб отримати докладнішу інформацію, перегляньте `Шари та маски зіткнень <../tutorials/physics/physics_introduction.html#collision-layers-and-masks>`__ у документації.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_collision_priority:

.. rst-class:: classref-property

:ref:`float<class_float>` **collision_priority** = ``1.0`` :ref:`🔗<class_GridMap_property_collision_priority>`

.. rst-class:: classref-property-setget

- |void| **set_collision_priority**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_collision_priority**\ (\ )

Пріоритет, який використовується для вирішення співвідношенні при виникненні проникнення. Чим вище пріоритет, тим нижче проникнення в об'єкт буде. Цей приклад можна використовувати для запобігання розбиття гравця за кордонами рівня.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_mesh_library:

.. rst-class:: classref-property

:ref:`MeshLibrary<class_MeshLibrary>` **mesh_library** :ref:`🔗<class_GridMap_property_mesh_library>`

.. rst-class:: classref-property-setget

- |void| **set_mesh_library**\ (\ value\: :ref:`MeshLibrary<class_MeshLibrary>`\ )
- :ref:`MeshLibrary<class_MeshLibrary>` **get_mesh_library**\ (\ )

Призначена :ref:`MeshLibrary<class_MeshLibrary>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_property_physics_material:

.. rst-class:: classref-property

:ref:`PhysicsMaterial<class_PhysicsMaterial>` **physics_material** :ref:`🔗<class_GridMap_property_physics_material>`

.. rst-class:: classref-property-setget

- |void| **set_physics_material**\ (\ value\: :ref:`PhysicsMaterial<class_PhysicsMaterial>`\ )
- :ref:`PhysicsMaterial<class_PhysicsMaterial>` **get_physics_material**\ (\ )

Замінює властивості фізики тертя та відскоку за замовчуванням для всієї **GridMap**.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_GridMap_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_GridMap_method_clear>`

Очистити всі клітинки.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_clear_baked_meshes:

.. rst-class:: classref-method

|void| **clear_baked_meshes**\ (\ ) :ref:`🔗<class_GridMap_method_clear_baked_meshes>`

Очищає всі запечені сітки. Перегляньте :ref:`make_baked_meshes()<class_GridMap_method_make_baked_meshes>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_bake_mesh_instance:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_bake_mesh_instance**\ (\ idx\: :ref:`int<class_int>`\ ) :ref:`🔗<class_GridMap_method_get_bake_mesh_instance>`

Повертає :ref:`RID<class_RID>` запеченої сітки з заданим ``idx``.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_bake_meshes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_bake_meshes**\ (\ ) :ref:`🔗<class_GridMap_method_get_bake_meshes>`

Повертає масив :ref:`ArrayMesh<class_ArrayMesh>` та посилань :ref:`Transform3D<class_Transform3D>` на всі запечені сітки, що існують у поточній GridMap. Парні індекси містять :ref:`ArrayMesh<class_ArrayMesh>`, тоді як непарні індекси містять :ref:`Transform3D<class_Transform3D>`, які завжди дорівнюють :ref:`Transform3D.IDENTITY<class_Transform3D_constant_IDENTITY>`.

Цей метод спирається на вивід методу :ref:`make_baked_meshes()<class_GridMap_method_make_baked_meshes>`, який буде викликаний з ``gen_lightmap_uv``, встановленим на ``true``, та ``lightmap_uv_texel_size``, встановленим на ``0.1``, якщо його ще не було викликано.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_basis_with_orthogonal_index:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **get_basis_with_orthogonal_index**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_basis_with_orthogonal_index>`

Повертає одне з 24 можливих поворотів, які лежать уздовж векторів (x, y, z), причому кожен компонент має значення -1, 0 або 1. Щоб отримати додаткові відомості, зверніться до вихідного коду Godot.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_cell_item:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_item**\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_get_cell_item>`

Індекс елемента :ref:`MeshLibrary<class_MeshLibrary>`, розташований у заданих координатах сітки. Якщо клітинка порожня, буде повернено :ref:`INVALID_CELL_ITEM<class_GridMap_constant_INVALID_CELL_ITEM>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_cell_item_basis:

.. rst-class:: classref-method

:ref:`Basis<class_Basis>` **get_cell_item_basis**\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_get_cell_item_basis>`

Повертаємо основу, що дає зазначену клітину свою спрямованість.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_cell_item_orientation:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_cell_item_orientation**\ (\ position\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_get_cell_item_orientation>`

Орієнтація комірки на задану сітку координат. ``-1`` повертається, якщо клітинка порожня.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_collision_layer_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_collision_layer_value>`

Повертаємо, чи не вказаний шар :ref:`collision_layer<class_GridMap_property_collision_layer>`, враховуючи ``layer_number`` між 1 і 32.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_collision_mask_value:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **get_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_collision_mask_value>`

Повертаємо, чи не вказаний шар :ref:`collision_layer<class_GridMap_property_collision_layer>`, враховуючи ``layer_number`` між 1 і 32.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_meshes:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_meshes**\ (\ ) |const| :ref:`🔗<class_GridMap_method_get_meshes>`

Повертає масив посилань на :ref:`Transform3D<class_Transform3D>` та :ref:`Mesh<class_Mesh>`, що відповідають непорожнім коміркам у сітці. Перетворення задаються в локальному просторі. Парні індекси містять :ref:`Transform3D<class_Transform3D>`, тоді як непарні індекси містять :ref:`Mesh<class_Mesh>`, пов'язані з :ref:`Transform3D<class_Transform3D>` в індексі, що передує йому.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_navigation_map:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_navigation_map**\ (\ ) |const| :ref:`🔗<class_GridMap_method_get_navigation_map>`

Повертає :ref:`RID<class_RID>` навігаційної карти, яку цей вузол GridMap використовує для своїх навігаційних сіток із запеченими комірками.

Ця функція завжди повертає карту, встановлену на вузлі GridMap, а не карту на NavigationServer. Якщо карту змінено безпосередньо за допомогою API NavigationServer, вузол GridMap не буде знати про зміну карти.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_orthogonal_index_from_basis:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_orthogonal_index_from_basis**\ (\ basis\: :ref:`Basis<class_Basis>`\ ) |const| :ref:`🔗<class_GridMap_method_get_orthogonal_index_from_basis>`

Ця функція розглядає дискретизацію поворотів у 24 точки на одиничній сфері, що лежать уздовж векторів (x, y, z), причому кожен компонент має значення -1, 0 або 1, і повертає індекс (у діапазоні від 0 до 23 ) точки, що найкраще відображає орієнтацію об’єкта. Щоб отримати додаткові відомості, зверніться до вихідного коду Godot.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_cells:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_cells**\ (\ ) |const| :ref:`🔗<class_GridMap_method_get_used_cells>`

Повертає масив :ref:`Vector3<class_Vector3>` з координатами непорожніх комірок у сітці.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_get_used_cells_by_item:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Vector3i<class_Vector3i>`\] **get_used_cells_by_item**\ (\ item\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_GridMap_method_get_used_cells_by_item>`

Повертає масив усіх комірок із заданим індексом елемента, вказаним у ``item``.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_local_to_map:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **local_to_map**\ (\ local_position\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_GridMap_method_local_to_map>`

Повертає картографічні координати комірки, що містить заданий ``local_position``. Якщо ``local_position`` знаходиться в глобальних координатах, розгляньте можливість використання :ref:`Node3D.to_local()<class_Node3D_method_to_local>` перед тим, як передавати його цьому методу. Дивіться також :ref:`map_to_local()<class_GridMap_method_map_to_local>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_make_baked_meshes:

.. rst-class:: classref-method

|void| **make_baked_meshes**\ (\ gen_lightmap_uv\: :ref:`bool<class_bool>` = false, lightmap_uv_texel_size\: :ref:`float<class_float>` = 0.1\ ) :ref:`🔗<class_GridMap_method_make_baked_meshes>`

Генерує запечену сітку, яка представляє всі сітки у призначеній :ref:`MeshLibrary<class_MeshLibrary>` для використання з :ref:`LightmapGI<class_LightmapGI>`. Якщо ``gen_lightmap_uv`` має значення ``true``, дані UV2 будуть згенеровані для кожної сітки, яка наразі використовується в **GridMap**. В іншому випадку, лише сітки, які вже мають дані UV2, зможуть використовувати запечені карти освітлення. Під час генерації UV2, ``lightmap_uv_texel_size`` контролює щільність текселів для карт освітлення, причому нижчі значення призводять до більш детальних карт освітлення. ``lightmap_uv_texel_size`` ігнорується, якщо ``gen_lightmap_uv`` має значення ``false``. Див. також :ref:`get_bake_meshes()<class_GridMap_method_get_bake_meshes>`, який спирається на вивід цього методу.

\ **Примітка:** Виклик цього методу фактично не запікає карти освітлення, оскільки запікання карти освітлення виконується за допомогою вузла :ref:`LightmapGI<class_LightmapGI>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_map_to_local:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **map_to_local**\ (\ map_position\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_GridMap_method_map_to_local>`

Повертає положення комірки сітки в локальному координатному просторі GridMap. Щоб перетворити повернуте значення в глобальні координати, використовуйте :ref:`Node3D.to_global()<class_Node3D_method_to_global>`. Дивіться також :ref:`local_to_map()<class_GridMap_method_local_to_map>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_resource_changed:

.. rst-class:: classref-method

|void| **resource_changed**\ (\ resource\: :ref:`Resource<class_Resource>`\ ) :ref:`🔗<class_GridMap_method_resource_changed>`

**Застаріло:** Use :ref:`Resource.changed<class_Resource_signal_changed>` instead.

Цей метод нічого не робить.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_set_cell_item:

.. rst-class:: classref-method

|void| **set_cell_item**\ (\ position\: :ref:`Vector3i<class_Vector3i>`, item\: :ref:`int<class_int>`, orientation\: :ref:`int<class_int>` = 0\ ) :ref:`🔗<class_GridMap_method_set_cell_item>`

Встановлює індекс сітки для клітинки, на яку посилається її координатна сітка.

Від’ємний індекс елемента, наприклад :ref:`INVALID_CELL_ITEM<class_GridMap_constant_INVALID_CELL_ITEM>`, очистить клітинку.

За бажанням можна передати орієнтацію елемента. Для дійсних значень орієнтації див. :ref:`get_orthogonal_index_from_basis()<class_GridMap_method_get_orthogonal_index_from_basis>`.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_set_collision_layer_value:

.. rst-class:: classref-method

|void| **set_collision_layer_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_GridMap_method_set_collision_layer_value>`

На основі ``value``, умикає чи вимикає зазначений шар в :ref:`collision_layer<class_GridMap_property_collision_layer>`, для ``layer_number`` між 1 і 32.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_set_collision_mask_value:

.. rst-class:: classref-method

|void| **set_collision_mask_value**\ (\ layer_number\: :ref:`int<class_int>`, value\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_GridMap_method_set_collision_mask_value>`

На основі ``value``, умикає чи вимикає зазначений шар в :ref:`collision_mask<class_GridMap_property_collision_mask>`, для ``layer_number`` між 1 і 32.

.. rst-class:: classref-item-separator

----

.. _class_GridMap_method_set_navigation_map:

.. rst-class:: classref-method

|void| **set_navigation_map**\ (\ navigation_map\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_GridMap_method_set_navigation_map>`

Налаштовує :ref:`RID<class_RID>` навігаційної карти цього вузла GridMap слід використовувати для її клітинних запечених навігаторів.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
