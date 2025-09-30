:github_url: hide

.. _class_Geometry3D:

Geometry3D
==========

**Наследует:** :ref:`Object<class_Object>`

Предоставляет методы для некоторых распространенных трехмерных геометрических операций.

.. rst-class:: classref-introduction-group

Описание
----------------

Предоставляет набор вспомогательных функций для создания геометрических фигур, вычисления пересечений между фигурами и обработки различных других геометрических операций в 3D.

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\] | :ref:`build_box_planes<class_Geometry3D_method_build_box_planes>`\ (\ extents\: :ref:`Vector3<class_Vector3>`\ )                                                                                                                                                                 |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\] | :ref:`build_capsule_planes<class_Geometry3D_method_build_capsule_planes>`\ (\ radius\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`, sides\: :ref:`int<class_int>`, lats\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>` = 2\ )                  |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\] | :ref:`build_cylinder_planes<class_Geometry3D_method_build_cylinder_planes>`\ (\ radius\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`, sides\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>` = 2\ )                                              |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`    | :ref:`clip_polygon<class_Geometry3D_method_clip_polygon>`\ (\ points\: :ref:`PackedVector3Array<class_PackedVector3Array>`, plane\: :ref:`Plane<class_Plane>`\ )                                                                                                                 |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`    | :ref:`compute_convex_mesh_points<class_Geometry3D_method_compute_convex_mesh_points>`\ (\ planes\: :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\]\ )                                                                                                                     |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                          | :ref:`get_closest_point_to_segment<class_Geometry3D_method_get_closest_point_to_segment>`\ (\ point\: :ref:`Vector3<class_Vector3>`, s1\: :ref:`Vector3<class_Vector3>`, s2\: :ref:`Vector3<class_Vector3>`\ )                                                                   |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                          | :ref:`get_closest_point_to_segment_uncapped<class_Geometry3D_method_get_closest_point_to_segment_uncapped>`\ (\ point\: :ref:`Vector3<class_Vector3>`, s1\: :ref:`Vector3<class_Vector3>`, s2\: :ref:`Vector3<class_Vector3>`\ )                                                 |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`    | :ref:`get_closest_points_between_segments<class_Geometry3D_method_get_closest_points_between_segments>`\ (\ p1\: :ref:`Vector3<class_Vector3>`, p2\: :ref:`Vector3<class_Vector3>`, q1\: :ref:`Vector3<class_Vector3>`, q2\: :ref:`Vector3<class_Vector3>`\ )                    |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`                          | :ref:`get_triangle_barycentric_coords<class_Geometry3D_method_get_triangle_barycentric_coords>`\ (\ point\: :ref:`Vector3<class_Vector3>`, a\: :ref:`Vector3<class_Vector3>`, b\: :ref:`Vector3<class_Vector3>`, c\: :ref:`Vector3<class_Vector3>`\ )                            |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                          | :ref:`ray_intersects_triangle<class_Geometry3D_method_ray_intersects_triangle>`\ (\ from\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`, a\: :ref:`Vector3<class_Vector3>`, b\: :ref:`Vector3<class_Vector3>`, c\: :ref:`Vector3<class_Vector3>`\ )        |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`    | :ref:`segment_intersects_convex<class_Geometry3D_method_segment_intersects_convex>`\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, planes\: :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\]\ )                                             |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`    | :ref:`segment_intersects_cylinder<class_Geometry3D_method_segment_intersects_cylinder>`\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, height\: :ref:`float<class_float>`, radius\: :ref:`float<class_float>`\ )                                  |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedVector3Array<class_PackedVector3Array>`    | :ref:`segment_intersects_sphere<class_Geometry3D_method_segment_intersects_sphere>`\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, sphere_position\: :ref:`Vector3<class_Vector3>`, sphere_radius\: :ref:`float<class_float>`\ )                  |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                          | :ref:`segment_intersects_triangle<class_Geometry3D_method_segment_intersects_triangle>`\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, a\: :ref:`Vector3<class_Vector3>`, b\: :ref:`Vector3<class_Vector3>`, c\: :ref:`Vector3<class_Vector3>`\ ) |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>`        | :ref:`tetrahedralize_delaunay<class_Geometry3D_method_tetrahedralize_delaunay>`\ (\ points\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ )                                                                                                                              |
   +--------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Geometry3D_method_build_box_planes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\] **build_box_planes**\ (\ extents\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Geometry3D_method_build_box_planes>`

Возвращает массив с 6 :ref:`Plane<class_Plane>`, которые описывают стороны коробки с центром в начале координат. Размер коробки определяется ``extends``, который представляет один (положительный) угол коробки (т. е. половину ее фактического размера).

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_build_capsule_planes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\] **build_capsule_planes**\ (\ radius\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`, sides\: :ref:`int<class_int>`, lats\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>` = 2\ ) :ref:`🔗<class_Geometry3D_method_build_capsule_planes>`

Возвращает массив :ref:`Plane<class_Plane>`, тесно ограничивающих граненую капсулу с центром в начале координат с радиусом ``radius`` и высотой ``height``. Параметр ``sides`` определяет, сколько плоскостей будет сгенерировано для боковой части капсулы, тогда как ``lats`` задает количество широтных шагов внизу и вверху капсулы. Параметр ``axis`` описывает ось, вдоль которой ориентирована капсула (0 для X, 1 для Y, 2 для Z).

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_build_cylinder_planes:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\] **build_cylinder_planes**\ (\ radius\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`, sides\: :ref:`int<class_int>`, axis\: :ref:`Axis<enum_Vector3_Axis>` = 2\ ) :ref:`🔗<class_Geometry3D_method_build_cylinder_planes>`

Возвращает массив :ref:`Plane<class_Plane>`, тесно ограничивающих граненый цилиндр с центром в начале координат с радиусом ``radius`` и высотой ``height``. Параметр ``sides`` определяет, сколько плоскостей будет создано для круглой части цилиндра. Параметр ``axis`` описывает ось, вдоль которой ориентирован цилиндр (0 для X, 1 для Y, 2 для Z).

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_clip_polygon:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **clip_polygon**\ (\ points\: :ref:`PackedVector3Array<class_PackedVector3Array>`, plane\: :ref:`Plane<class_Plane>`\ ) :ref:`🔗<class_Geometry3D_method_clip_polygon>`

Обрезает многоугольник, определенный точками в ``points``, относительно ``plane`` и возвращает точки обрезанного многоугольника.

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_compute_convex_mesh_points:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **compute_convex_mesh_points**\ (\ planes\: :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\]\ ) :ref:`🔗<class_Geometry3D_method_compute_convex_mesh_points>`

Вычисляет и возвращает все вершинные точки выпуклой фигуры, заданной массивом ``planes``.

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_get_closest_point_to_segment:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_closest_point_to_segment**\ (\ point\: :ref:`Vector3<class_Vector3>`, s1\: :ref:`Vector3<class_Vector3>`, s2\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Geometry3D_method_get_closest_point_to_segment>`

Возвращает 3D-точку на 3D-сегменте (``s1``, ``s2``), которая находится ближе всего к ``point``. Возвращаемая точка всегда будет находиться внутри указанного сегмента.

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_get_closest_point_to_segment_uncapped:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_closest_point_to_segment_uncapped**\ (\ point\: :ref:`Vector3<class_Vector3>`, s1\: :ref:`Vector3<class_Vector3>`, s2\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Geometry3D_method_get_closest_point_to_segment_uncapped>`

Возвращает 3D-точку на 3D-линии, определенной (``s1``, ``s2``), которая находится ближе всего к ``point``. Возвращаемая точка может находиться внутри сегмента (``s1``, ``s2``) или за его пределами, т. е. где-то на линии, выходящей из сегмента.

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_get_closest_points_between_segments:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **get_closest_points_between_segments**\ (\ p1\: :ref:`Vector3<class_Vector3>`, p2\: :ref:`Vector3<class_Vector3>`, q1\: :ref:`Vector3<class_Vector3>`, q2\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Geometry3D_method_get_closest_points_between_segments>`

Учитывая два 3D-сегмента (``p1``, ``p2``) и (``q1``, ``q2``), находит те две точки на двух сегментах, которые находятся ближе всего друг к другу. Возвращает :ref:`PackedVector3Array<class_PackedVector3Array>`, который содержит эту точку на (``p1``, ``p2``), а также сопутствующую точку на (``q1``, ``q2``).

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_get_triangle_barycentric_coords:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_triangle_barycentric_coords**\ (\ point\: :ref:`Vector3<class_Vector3>`, a\: :ref:`Vector3<class_Vector3>`, b\: :ref:`Vector3<class_Vector3>`, c\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Geometry3D_method_get_triangle_barycentric_coords>`

Возвращает :ref:`Vector3<class_Vector3>`, содержащий веса, основанные на том, насколько близко 3D-позиция (``point``) находится к различным вершинам треугольника (``a``, ``b`` и ``c``). Это полезно для интерполяции между данными различных вершин в треугольнике. Одним из примеров использования является использование этого для плавного вращения по сетке вместо того, чтобы полагаться исключительно на нормали граней.

\ `Вот более подробное объяснение барицентрических координат. <https://en.wikipedia.org/wiki/Barycentric_coordinate_system>`__

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_ray_intersects_triangle:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **ray_intersects_triangle**\ (\ from\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`, a\: :ref:`Vector3<class_Vector3>`, b\: :ref:`Vector3<class_Vector3>`, c\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Geometry3D_method_ray_intersects_triangle>`

Проверяет, пересекает ли 3D-луч, начинающийся в ``from`` с направлением ``dir``, с треугольником, заданным ``a``, ``b`` и ``c``. Если да, возвращает точку пересечения как :ref:`Vector3<class_Vector3>`. Если пересечения не происходит, возвращает ``null``.

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_segment_intersects_convex:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **segment_intersects_convex**\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, planes\: :ref:`Array<class_Array>`\[:ref:`Plane<class_Plane>`\]\ ) :ref:`🔗<class_Geometry3D_method_segment_intersects_convex>`

Учитывая выпуклую оболочку, определенную через :ref:`Plane<class_Plane>`-ы в массиве ``planes``, проверяет, пересекается ли сегмент (``from``, ``to``) с этой оболочкой. Если пересечение найдено, возвращает :ref:`PackedVector3Array<class_PackedVector3Array>`, содержащий точку пересечения и нормаль оболочки. В противном случае возвращает пустой массив.

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_segment_intersects_cylinder:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **segment_intersects_cylinder**\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, height\: :ref:`float<class_float>`, radius\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Geometry3D_method_segment_intersects_cylinder>`

Проверяет, пересекает ли сегмент (``from``, ``to``) цилиндр с высотой ``height``, центрированный в начале координат и имеющий радиус ``radius``. Если нет, возвращает пустой :ref:`PackedVector3Array<class_PackedVector3Array>`. Если пересечение имеет место, возвращаемый массив содержит точку пересечения и нормаль цилиндра в точке пересечения.

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_segment_intersects_sphere:

.. rst-class:: classref-method

:ref:`PackedVector3Array<class_PackedVector3Array>` **segment_intersects_sphere**\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, sphere_position\: :ref:`Vector3<class_Vector3>`, sphere_radius\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Geometry3D_method_segment_intersects_sphere>`

Проверяет, пересекает ли сегмент (``from``, ``to``) сферу, расположенную в ``spheric_position`` и имеющую радиус ``spheric_radius``. Если нет, возвращает пустой :ref:`PackedVector3Array<class_PackedVector3Array>`. Если да, возвращает :ref:`PackedVector3Array<class_PackedVector3Array>`, содержащий точку пересечения и нормаль сферы в точке пересечения.

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_segment_intersects_triangle:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **segment_intersects_triangle**\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`, a\: :ref:`Vector3<class_Vector3>`, b\: :ref:`Vector3<class_Vector3>`, c\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_Geometry3D_method_segment_intersects_triangle>`

Проверяет, пересекает ли сегмент (``from``, ``to``) треугольник ``a``, ``b``, ``c``. Если да, возвращает точку пересечения как :ref:`Vector3<class_Vector3>`. Если пересечения не происходит, возвращает ``null``.

.. rst-class:: classref-item-separator

----

.. _class_Geometry3D_method_tetrahedralize_delaunay:

.. rst-class:: classref-method

:ref:`PackedInt32Array<class_PackedInt32Array>` **tetrahedralize_delaunay**\ (\ points\: :ref:`PackedVector3Array<class_PackedVector3Array>`\ ) :ref:`🔗<class_Geometry3D_method_tetrahedralize_delaunay>`

Тетраэдрализует объем, заданный дискретным набором ``points`` в трехмерном пространстве, гарантируя, что ни одна точка не лежит внутри описанной сферы любого полученного тетраэдра. Метод возвращает :ref:`PackedInt32Array<class_PackedInt32Array>`, где каждый тетраэдр состоит из четырех последовательных индексов точек в массиве ``points`` (что приводит к массиву с ``n * 4`` элементами, где ``n`` — количество найденных тетраэдров). Если тетраэдрализация не удалась, возвращается пустой :ref:`PackedInt32Array<class_PackedInt32Array>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
