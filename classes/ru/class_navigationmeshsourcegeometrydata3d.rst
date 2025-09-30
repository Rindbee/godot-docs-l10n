:github_url: hide

.. _class_NavigationMeshSourceGeometryData3D:

NavigationMeshSourceGeometryData3D
==================================

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Контейнер для проанализированных исходных геометрических данных, используемых при запекании навигационной сетки.

.. rst-class:: classref-introduction-group

Описание
----------------

Контейнер для проанализированных исходных геометрических данных, используемых при запекании навигационной сетки.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_faces<class_NavigationMeshSourceGeometryData3D_method_add_faces>`\ (\ faces\: :ref:`PackedVector3Array<class_PackedVector3Array>`, xform\: :ref:`Transform3D<class_Transform3D>`\ )                                                                                                 |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_mesh<class_NavigationMeshSourceGeometryData3D_method_add_mesh>`\ (\ mesh\: :ref:`Mesh<class_Mesh>`, xform\: :ref:`Transform3D<class_Transform3D>`\ )                                                                                                                                |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_mesh_array<class_NavigationMeshSourceGeometryData3D_method_add_mesh_array>`\ (\ mesh_array\: :ref:`Array<class_Array>`, xform\: :ref:`Transform3D<class_Transform3D>`\ )                                                                                                            |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`add_projected_obstruction<class_NavigationMeshSourceGeometryData3D_method_add_projected_obstruction>`\ (\ vertices\: :ref:`PackedVector3Array<class_PackedVector3Array>`, elevation\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`, carve\: :ref:`bool<class_bool>`\ ) |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`append_arrays<class_NavigationMeshSourceGeometryData3D_method_append_arrays>`\ (\ vertices\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`, indices\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )                                                                          |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear<class_NavigationMeshSourceGeometryData3D_method_clear>`\ (\ )                                                                                                                                                                                                                     |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`clear_projected_obstructions<class_NavigationMeshSourceGeometryData3D_method_clear_projected_obstructions>`\ (\ )                                                                                                                                                                       |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`                             | :ref:`get_bounds<class_NavigationMeshSourceGeometryData3D_method_get_bounds>`\ (\ )                                                                                                                                                                                                           |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`     | :ref:`get_indices<class_NavigationMeshSourceGeometryData3D_method_get_indices>`\ (\ ) |const|                                                                                                                                                                                                 |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                           | :ref:`get_projected_obstructions<class_NavigationMeshSourceGeometryData3D_method_get_projected_obstructions>`\ (\ ) |const|                                                                                                                                                                   |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedFloat32Array<class_PackedFloat32Array>` | :ref:`get_vertices<class_NavigationMeshSourceGeometryData3D_method_get_vertices>`\ (\ ) |const|                                                                                                                                                                                               |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`has_data<class_NavigationMeshSourceGeometryData3D_method_has_data>`\ (\ )                                                                                                                                                                                                               |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`merge<class_NavigationMeshSourceGeometryData3D_method_merge>`\ (\ other_geometry\: :ref:`NavigationMeshSourceGeometryData3D<class_NavigationMeshSourceGeometryData3D>`\ )                                                                                                               |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_indices<class_NavigationMeshSourceGeometryData3D_method_set_indices>`\ (\ indices\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )                                                                                                                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_projected_obstructions<class_NavigationMeshSourceGeometryData3D_method_set_projected_obstructions>`\ (\ projected_obstructions\: :ref:`Array<class_Array>`\ )                                                                                                                       |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                              | :ref:`set_vertices<class_NavigationMeshSourceGeometryData3D_method_set_vertices>`\ (\ vertices\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )                                                                                                                                       |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_NavigationMeshSourceGeometryData3D_method_add_faces:

.. rst-class:: classref-method

|void| **add_faces**\ (\ faces\: :ref:`PackedVector3Array<class_PackedVector3Array>`, xform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_add_faces>`

Добавляет массив позиций вершин к геометрическим данным для запекания навигационной сетки для формирования триангулированных граней. Для каждой грани массив должен иметь три позиции вершин в порядке обхода по часовой стрелке. Поскольку ресурсы :ref:`NavigationMesh<class_NavigationMesh>` не имеют преобразования, все позиции вершин должны быть смещены преобразованием узла с помощью ``xform``.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_add_mesh:

.. rst-class:: classref-method

|void| **add_mesh**\ (\ mesh\: :ref:`Mesh<class_Mesh>`, xform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_add_mesh>`

Добавляет геометрические данные ресурса :ref:`Mesh<class_Mesh>` к данным запекания навигационной сетки. Сетка должна иметь допустимые данные триангулированной сетки, чтобы ее можно было рассмотреть. Поскольку ресурсы :ref:`NavigationMesh<class_NavigationMesh>` не имеют преобразования, все позиции вершин должны быть смещены преобразованием узла с помощью ``xform``.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_add_mesh_array:

.. rst-class:: classref-method

|void| **add_mesh_array**\ (\ mesh_array\: :ref:`Array<class_Array>`, xform\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_add_mesh_array>`

Добавляет :ref:`Array<class_Array>` размером :ref:`Mesh.ARRAY_MAX<class_Mesh_constant_ARRAY_MAX>` и с вершинами в индексе :ref:`Mesh.ARRAY_VERTEX<class_Mesh_constant_ARRAY_VERTEX>` и индексами в индексе :ref:`Mesh.ARRAY_INDEX<class_Mesh_constant_ARRAY_INDEX>` к данным запекания навигационной сетки. Массив должен иметь допустимые данные триангулированной сетки, чтобы быть рассмотренным. Поскольку ресурсы :ref:`NavigationMesh<class_NavigationMesh>` не имеют преобразования, все позиции вершин должны быть смещены преобразованием узла с помощью ``xform``.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_add_projected_obstruction:

.. rst-class:: classref-method

|void| **add_projected_obstruction**\ (\ vertices\: :ref:`PackedVector3Array<class_PackedVector3Array>`, elevation\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`, carve\: :ref:`bool<class_bool>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_add_projected_obstruction>`

Добавляет проецируемую форму препятствия к исходной геометрии. Вершины ``vertices`` считаются спроецированными на плоскость с осями xz, расположенными на глобальной оси y ``altitude`` и выдавленными на величину ``height``. Если ``carve`` имеет значение ``true``, то вырезанная форма не будет затронута дополнительными смещениями (например, радиусом агента) процесса запекания навигационной сетки.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_append_arrays:

.. rst-class:: classref-method

|void| **append_arrays**\ (\ vertices\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`, indices\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_append_arrays>`

Добавляет массивы ``vertices`` и ``indexes`` в конец существующих массивов. Добавляет существующий индекс как смещение к добавленным индексам.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_clear>`

Очищает внутренние данные.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_clear_projected_obstructions:

.. rst-class:: classref-method

|void| **clear_projected_obstructions**\ (\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_clear_projected_obstructions>`

Устраняет все возникающие препятствия.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_get_bounds:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **get_bounds**\ (\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_get_bounds>`

Возвращает ограничивающий прямоугольник, выровненный по осям, который охватывает все сохраненные геометрические данные. Границы вычисляются при вызове этой функции, а результат кэшируется до тех пор, пока не будут сделаны дальнейшие изменения геометрии.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_get_indices:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **get_indices**\ (\ ) |const| :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_get_indices>`

Возвращает проанализированный массив индексов исходных геометрических данных.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_get_projected_obstructions:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_projected_obstructions**\ (\ ) |const| :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_get_projected_obstructions>`

Возвращает спроецированные препятствия в виде :ref:`Array<class_Array>` словарей. Каждый :ref:`Dictionary<class_Dictionary>` содержит следующие записи:

- ``vertices`` - :ref:`PackedFloat32Array<class_PackedFloat32Array>`, определяющий точки контура спроецированной фигуры.

- ``elevation`` - :ref:`float<class_float>`, определяющий размещение спроецированной фигуры на оси Y.

- ``height`` - :ref:`float<class_float>`, определяющий, насколько спроецированная фигура выдавлена вдоль оси Y.

- ``carve`` - :ref:`bool<class_bool>`, определяющий, как препятствие влияет на запекание навигационной сетки. Если ``true``, спроецированная фигура не будет затронута дополнительными смещениями, например, радиусом агента.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_get_vertices:

.. rst-class:: classref-method

:ref:`PackedFloat32Array<class_PackedFloat32Array>` **get_vertices**\ (\ ) |const| :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_get_vertices>`

Возвращает проанализированный массив вершин исходных геометрических данных.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_has_data:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_data**\ (\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_has_data>`

Возвращает ``true``, если существуют проанализированные исходные геометрические данные.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_merge:

.. rst-class:: classref-method

|void| **merge**\ (\ other_geometry\: :ref:`NavigationMeshSourceGeometryData3D<class_NavigationMeshSourceGeometryData3D>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_merge>`

Добавляет данные геометрии другого **NavigationMeshSourceGeometryData3D** к данным запекания навигационной сетки.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_set_indices:

.. rst-class:: classref-method

|void| **set_indices**\ (\ indices\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_set_indices>`

Устанавливает индексы проанализированных исходных геометрических данных. Индексы должны быть сопоставлены с присвоенными вершинами.

\ **Предупреждение:** Неподходящие данные могут привести к сбою процесса выпечки задействованных сторонних библиотек.

.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_set_projected_obstructions:

.. rst-class:: classref-method

|void| **set_projected_obstructions**\ (\ projected_obstructions\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_set_projected_obstructions>`

Устанавливает проектируемые препятствия с помощью массива словарей со следующими парами ключ-значение:


.. tabs::

 .. code-tab:: gdscript

    "vertices" : PackedFloat32Array
    "elevation" : float
    "height" : float
    "carve" : bool



.. rst-class:: classref-item-separator

----

.. _class_NavigationMeshSourceGeometryData3D_method_set_vertices:

.. rst-class:: classref-method

|void| **set_vertices**\ (\ vertices\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_NavigationMeshSourceGeometryData3D_method_set_vertices>`

Устанавливает вершины проанализированных исходных геометрических данных. Вершины должны быть сопоставлены с присвоенными индексами.

\ **Предупреждение:** Неподходящие данные могут привести к сбою процесса выпечки задействованных сторонних библиотек.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
