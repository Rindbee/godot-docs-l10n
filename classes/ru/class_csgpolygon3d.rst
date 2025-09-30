:github_url: hide

.. _class_CSGPolygon3D:

CSGPolygon3D
============

**Наследует:** :ref:`CSGPrimitive3D<class_CSGPrimitive3D>` **<** :ref:`CSGShape3D<class_CSGShape3D>` **<** :ref:`GeometryInstance3D<class_GeometryInstance3D>` **<** :ref:`VisualInstance3D<class_VisualInstance3D>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Выдавливает 2D-многоугольник для создания 3D-сетки.

.. rst-class:: classref-introduction-group

Описание
----------------

Массив 2D-точек выдавливается для быстрого и легкого создания различных 3D-сеток. См. также :ref:`CSGMesh3D<class_CSGMesh3D>` для использования 3D-сеток в качестве узлов CSG.

\ **Примечание:** Узлы CSG предназначены для использования при прототипировании уровней. Создание узлов CSG требует значительных затрат ресурсов ЦП по сравнению с созданием :ref:`MeshInstance3D<class_MeshInstance3D>` с :ref:`PrimitiveMesh<class_PrimitiveMesh>`. Перемещение узла CSG в пределах другого узла CSG также требует значительных затрат ресурсов ЦП, поэтому его следует избегать во время игры.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Прототипирование уровней с помощью CSG <../tutorials/3d/csg_tools>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`depth<class_CSGPolygon3D_property_depth>`                                   | ``1.0``                                        |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`Material<class_Material>`                             | :ref:`material<class_CSGPolygon3D_property_material>`                             |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`Mode<enum_CSGPolygon3D_Mode>`                         | :ref:`mode<class_CSGPolygon3D_property_mode>`                                     | ``0``                                          |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`path_continuous_u<class_CSGPolygon3D_property_path_continuous_u>`           |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`path_interval<class_CSGPolygon3D_property_path_interval>`                   |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`PathIntervalType<enum_CSGPolygon3D_PathIntervalType>` | :ref:`path_interval_type<class_CSGPolygon3D_property_path_interval_type>`         |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`path_joined<class_CSGPolygon3D_property_path_joined>`                       |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`path_local<class_CSGPolygon3D_property_path_local>`                         |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`NodePath<class_NodePath>`                             | :ref:`path_node<class_CSGPolygon3D_property_path_node>`                           |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`PathRotation<enum_CSGPolygon3D_PathRotation>`         | :ref:`path_rotation<class_CSGPolygon3D_property_path_rotation>`                   |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`path_rotation_accurate<class_CSGPolygon3D_property_path_rotation_accurate>` |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`path_simplify_angle<class_CSGPolygon3D_property_path_simplify_angle>`       |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`path_u_distance<class_CSGPolygon3D_property_path_u_distance>`               |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`PackedVector2Array<class_PackedVector2Array>`         | :ref:`polygon<class_CSGPolygon3D_property_polygon>`                               | ``PackedVector2Array(0, 0, 0, 1, 1, 1, 1, 0)`` |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`bool<class_bool>`                                     | :ref:`smooth_faces<class_CSGPolygon3D_property_smooth_faces>`                     | ``false``                                      |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`float<class_float>`                                   | :ref:`spin_degrees<class_CSGPolygon3D_property_spin_degrees>`                     |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+
   | :ref:`int<class_int>`                                       | :ref:`spin_sides<class_CSGPolygon3D_property_spin_sides>`                         |                                                |
   +-------------------------------------------------------------+-----------------------------------------------------------------------------------+------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_CSGPolygon3D_Mode:

.. rst-class:: classref-enumeration

enum **Mode**: :ref:`🔗<enum_CSGPolygon3D_Mode>`

.. _class_CSGPolygon3D_constant_MODE_DEPTH:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_CSGPolygon3D_Mode>` **MODE_DEPTH** = ``0``

Форма :ref:`polygon<class_CSGPolygon3D_property_polygon>` выдавливается вдоль отрицательной оси Z.

.. _class_CSGPolygon3D_constant_MODE_SPIN:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_CSGPolygon3D_Mode>` **MODE_SPIN** = ``1``

Форма :ref:`polygon<class_CSGPolygon3D_property_polygon>` выдавливается путем вращения вокруг оси Y.

.. _class_CSGPolygon3D_constant_MODE_PATH:

.. rst-class:: classref-enumeration-constant

:ref:`Mode<enum_CSGPolygon3D_Mode>` **MODE_PATH** = ``2``

Фигура :ref:`polygon<class_CSGPolygon3D_property_polygon>` выдавливается вдоль :ref:`Path3D<class_Path3D>`, указанного в :ref:`path_node<class_CSGPolygon3D_property_path_node>`.

.. rst-class:: classref-item-separator

----

.. _enum_CSGPolygon3D_PathRotation:

.. rst-class:: classref-enumeration

enum **PathRotation**: :ref:`🔗<enum_CSGPolygon3D_PathRotation>`

.. _class_CSGPolygon3D_constant_PATH_ROTATION_POLYGON:

.. rst-class:: classref-enumeration-constant

:ref:`PathRotation<enum_CSGPolygon3D_PathRotation>` **PATH_ROTATION_POLYGON** = ``0``

Форма :ref:`polygon<class_CSGPolygon3D_property_polygon>` не повернута.

\ **Примечание:** Требует, чтобы координаты Z траектории постоянно уменьшались для обеспечения жизнеспособных форм.

.. _class_CSGPolygon3D_constant_PATH_ROTATION_PATH:

.. rst-class:: classref-enumeration-constant

:ref:`PathRotation<enum_CSGPolygon3D_PathRotation>` **PATH_ROTATION_PATH** = ``1``

Фигура :ref:`polygon<class_CSGPolygon3D_property_polygon>` вращается вдоль пути, но не вращается вокруг оси пути.

\ **Примечание:** Требует, чтобы координаты Z пути постоянно уменьшались для обеспечения жизнеспособных форм.

.. _class_CSGPolygon3D_constant_PATH_ROTATION_PATH_FOLLOW:

.. rst-class:: classref-enumeration-constant

:ref:`PathRotation<enum_CSGPolygon3D_PathRotation>` **PATH_ROTATION_PATH_FOLLOW** = ``2``

Форма :ref:`polygon<class_CSGPolygon3D_property_polygon>` следует траектории и ее вращениям вокруг оси траектории.

.. rst-class:: classref-item-separator

----

.. _enum_CSGPolygon3D_PathIntervalType:

.. rst-class:: classref-enumeration

enum **PathIntervalType**: :ref:`🔗<enum_CSGPolygon3D_PathIntervalType>`

.. _class_CSGPolygon3D_constant_PATH_INTERVAL_DISTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`PathIntervalType<enum_CSGPolygon3D_PathIntervalType>` **PATH_INTERVAL_DISTANCE** = ``0``

Если :ref:`mode<class_CSGPolygon3D_property_mode>` установлен на :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, :ref:`path_interval<class_CSGPolygon3D_property_path_interval>` будет определять расстояние в метрах, на которое будет выдавливаться каждый интервал пути.

.. _class_CSGPolygon3D_constant_PATH_INTERVAL_SUBDIVIDE:

.. rst-class:: classref-enumeration-constant

:ref:`PathIntervalType<enum_CSGPolygon3D_PathIntervalType>` **PATH_INTERVAL_SUBDIVIDE** = ``1``

Если :ref:`mode<class_CSGPolygon3D_property_mode>` установлен на :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, :ref:`path_interval<class_CSGPolygon3D_property_path_interval>` будет подразделять полигоны вдоль пути.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_CSGPolygon3D_property_depth:

.. rst-class:: classref-property

:ref:`float<class_float>` **depth** = ``1.0`` :ref:`🔗<class_CSGPolygon3D_property_depth>`

.. rst-class:: classref-property-setget

- |void| **set_depth**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_depth**\ (\ )

Если :ref:`mode<class_CSGPolygon3D_property_mode>` равен :ref:`MODE_DEPTH<class_CSGPolygon3D_constant_MODE_DEPTH>`, глубина выдавливания.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_material:

.. rst-class:: classref-property

:ref:`Material<class_Material>` **material** :ref:`🔗<class_CSGPolygon3D_property_material>`

.. rst-class:: classref-property-setget

- |void| **set_material**\ (\ value\: :ref:`Material<class_Material>`\ )
- :ref:`Material<class_Material>` **get_material**\ (\ )

Материал для использования в результирующей сетке. UV сопоставляет верхнюю половину материала с выдавленной формой (U по длине выдавливаний и V вокруг контура :ref:`polygon<class_CSGPolygon3D_property_polygon>`), нижнюю левую четверть с передней торцевой поверхностью, а нижнюю правую четверть с задней торцевой поверхностью.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_mode:

.. rst-class:: classref-property

:ref:`Mode<enum_CSGPolygon3D_Mode>` **mode** = ``0`` :ref:`🔗<class_CSGPolygon3D_property_mode>`

.. rst-class:: classref-property-setget

- |void| **set_mode**\ (\ value\: :ref:`Mode<enum_CSGPolygon3D_Mode>`\ )
- :ref:`Mode<enum_CSGPolygon3D_Mode>` **get_mode**\ (\ )

:ref:`mode<class_CSGPolygon3D_property_mode>`, используемый для выдавливания :ref:`polygon<class_CSGPolygon3D_property_polygon>`.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_continuous_u:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **path_continuous_u** :ref:`🔗<class_CSGPolygon3D_property_path_continuous_u>`

.. rst-class:: classref-property-setget

- |void| **set_path_continuous_u**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_path_continuous_u**\ (\ )

Когда :ref:`mode<class_CSGPolygon3D_property_mode>` равен :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, по умолчанию верхняя половина :ref:`material<class_CSGPolygon3D_property_material>` растягивается по всей длине выдавленной формы. Если ``false``, верхняя половина материала повторяется на каждом этапе выдавливания.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_interval:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_interval** :ref:`🔗<class_CSGPolygon3D_property_path_interval>`

.. rst-class:: classref-property-setget

- |void| **set_path_interval**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_interval**\ (\ )

Если :ref:`mode<class_CSGPolygon3D_property_mode>` равен :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, интервал пути или отношение точек пути к выдавливаниям (extrusions).

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_interval_type:

.. rst-class:: classref-property

:ref:`PathIntervalType<enum_CSGPolygon3D_PathIntervalType>` **path_interval_type** :ref:`🔗<class_CSGPolygon3D_property_path_interval_type>`

.. rst-class:: classref-property-setget

- |void| **set_path_interval_type**\ (\ value\: :ref:`PathIntervalType<enum_CSGPolygon3D_PathIntervalType>`\ )
- :ref:`PathIntervalType<enum_CSGPolygon3D_PathIntervalType>` **get_path_interval_type**\ (\ )

Если :ref:`mode<class_CSGPolygon3D_property_mode>` равен :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, это определит, должен ли интервал быть рассчитан по расстоянию (:ref:`PATH_INTERVAL_DISTANCE<class_CSGPolygon3D_constant_PATH_INTERVAL_DISTANCE>`) или по дробям подразделения (:ref:`PATH_INTERVAL_SUBDIVIDE<class_CSGPolygon3D_constant_PATH_INTERVAL_SUBDIVIDE>`).

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_joined:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **path_joined** :ref:`🔗<class_CSGPolygon3D_property_path_joined>`

.. rst-class:: classref-property-setget

- |void| **set_path_joined**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_path_joined**\ (\ )

Когда :ref:`mode<class_CSGPolygon3D_property_mode>` равен :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, если ``true``, концы пути соединяются путем добавления выдавливания между последней и первой точками пути.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_local:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **path_local** :ref:`🔗<class_CSGPolygon3D_property_path_local>`

.. rst-class:: classref-property-setget

- |void| **set_path_local**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_path_local**\ (\ )

Когда :ref:`mode<class_CSGPolygon3D_property_mode>` равен :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, если ``true``, то в качестве начальной точки для выдавливания используется :ref:`Transform3D<class_Transform3D>` из **CSGPolygon3D**, а не :ref:`Transform3D<class_Transform3D>` из :ref:`path_node<class_CSGPolygon3D_property_path_node>`.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_node:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **path_node** :ref:`🔗<class_CSGPolygon3D_property_path_node>`

.. rst-class:: classref-property-setget

- |void| **set_path_node**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_path_node**\ (\ )

Если :ref:`mode<class_CSGPolygon3D_property_mode>` равен :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, местоположение объекта :ref:`Path3D<class_Path3D>`, используемого для выдавливания :ref:`polygon<class_CSGPolygon3D_property_polygon>`.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_rotation:

.. rst-class:: classref-property

:ref:`PathRotation<enum_CSGPolygon3D_PathRotation>` **path_rotation** :ref:`🔗<class_CSGPolygon3D_property_path_rotation>`

.. rst-class:: classref-property-setget

- |void| **set_path_rotation**\ (\ value\: :ref:`PathRotation<enum_CSGPolygon3D_PathRotation>`\ )
- :ref:`PathRotation<enum_CSGPolygon3D_PathRotation>` **get_path_rotation**\ (\ )

Если :ref:`mode<class_CSGPolygon3D_property_mode>` равен :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, метод поворота траектории, используемый для поворота :ref:`polygon<class_CSGPolygon3D_property_polygon>` при его выдавливании.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_rotation_accurate:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **path_rotation_accurate** :ref:`🔗<class_CSGPolygon3D_property_path_rotation_accurate>`

.. rst-class:: classref-property-setget

- |void| **set_path_rotation_accurate**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_path_rotation_accurate**\ (\ )

Когда :ref:`mode<class_CSGPolygon3D_property_mode>` равен :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, если ``true``, многоугольник будет повернут в соответствии с правильной касательной пути в выбранных точках. Если ``false``, используется приближение, точность которого уменьшается по мере уменьшения количества подразделений.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_simplify_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_simplify_angle** :ref:`🔗<class_CSGPolygon3D_property_path_simplify_angle>`

.. rst-class:: classref-property-setget

- |void| **set_path_simplify_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_simplify_angle**\ (\ )

Если :ref:`mode<class_CSGPolygon3D_property_mode>` равен :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, выдавливания, которые меньше этого угла, будут объединены вместе для уменьшения количества полигонов.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_path_u_distance:

.. rst-class:: classref-property

:ref:`float<class_float>` **path_u_distance** :ref:`🔗<class_CSGPolygon3D_property_path_u_distance>`

.. rst-class:: classref-property-setget

- |void| **set_path_u_distance**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_path_u_distance**\ (\ )

Когда :ref:`mode<class_CSGPolygon3D_property_mode>` равен :ref:`MODE_PATH<class_CSGPolygon3D_constant_MODE_PATH>`, это расстояние вдоль пути в метрах, координаты текстуры будут замощены. Если установлено значение 0, координаты текстуры будут точно соответствовать геометрии без замощения.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_polygon:

.. rst-class:: classref-property

:ref:`PackedVector2Array<class_PackedVector2Array>` **polygon** = ``PackedVector2Array(0, 0, 0, 1, 1, 1, 1, 0)`` :ref:`🔗<class_CSGPolygon3D_property_polygon>`

.. rst-class:: classref-property-setget

- |void| **set_polygon**\ (\ value\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ )
- :ref:`PackedVector2Array<class_PackedVector2Array>` **get_polygon**\ (\ )

Массив точек, определяющий выдавливаемый 2D-полигон. Это может быть выпуклый или вогнутый полигон с 3 или более точками. Полигон не должен *иметь* пересекающихся ребер. В противном случае триангуляция не будет выполнена, и сетка не будет создана.

\ **Примечание:** Если в :ref:`polygon<class_CSGPolygon3D_property_polygon>` определены только 1 или 2 точки, сетка не будет создана.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedVector2Array<class_PackedVector2Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_smooth_faces:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **smooth_faces** = ``false`` :ref:`🔗<class_CSGPolygon3D_property_smooth_faces>`

.. rst-class:: classref-property-setget

- |void| **set_smooth_faces**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_smooth_faces**\ (\ )

Если ``true``, к выдавливаниям (extrusions) применяется плавное затенение.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_spin_degrees:

.. rst-class:: classref-property

:ref:`float<class_float>` **spin_degrees** :ref:`🔗<class_CSGPolygon3D_property_spin_degrees>`

.. rst-class:: classref-property-setget

- |void| **set_spin_degrees**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_spin_degrees**\ (\ )

Если :ref:`mode<class_CSGPolygon3D_property_mode>` равен :ref:`MODE_SPIN<class_CSGPolygon3D_constant_MODE_SPIN>`, общее число градусов, на которое поворачивается :ref:`polygon<class_CSGPolygon3D_property_polygon>` при выдавливании.

.. rst-class:: classref-item-separator

----

.. _class_CSGPolygon3D_property_spin_sides:

.. rst-class:: classref-property

:ref:`int<class_int>` **spin_sides** :ref:`🔗<class_CSGPolygon3D_property_spin_sides>`

.. rst-class:: classref-property-setget

- |void| **set_spin_sides**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_spin_sides**\ (\ )

Когда :ref:`mode<class_CSGPolygon3D_property_mode>` равен :ref:`MODE_SPIN<class_CSGPolygon3D_constant_MODE_SPIN>`, количество выполненных экструзий.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
