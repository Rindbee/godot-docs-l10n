:github_url: hide

.. _class_AABB:

AABB
====

Ограничивающая рамка, выровненная по трехмерным осям.

.. rst-class:: classref-introduction-group

Описание
----------------

Встроенный тип :ref:`Variant<class_Variant>` **AABB** представляет собой ограничивающий прямоугольник, выровненный по осям, в трёхмерном пространстве. Он определяется параметрами :ref:`position<class_AABB_property_position>` и :ref:`size<class_AABB_property_size>`, которые равны :ref:`Vector3<class_Vector3>`. Он часто используется для быстрых тестов на перекрытие (см. :ref:`intersects()<class_AABB_method_intersects>`). Хотя сам **AABB** выровнен по осям, его можно комбинировать с :ref:`Transform3D<class_Transform3D>` для представления повёрнутого или наклонённого ограничивающего прямоугольника.

Он использует координаты с плавающей точкой. 2D аналогом **AABB** является :ref:`Rect2<class_Rect2>`. Версии **AABB** с целочисленными координатами не существует.

\ **Примечание:** Отрицательные значения :ref:`size<class_AABB_property_size>` не поддерживаются. При отрицательном размере большинство методов **AABB** работают некорректно. Используйте :ref:`abs()<class_AABB_method_abs>` для получения эквивалентного **AABB** с неотрицательным размером.

\ **Примечание:** В булевом контексте **AABB** вычисляется как ``false``, если и :ref:`position<class_AABB_property_position>`, и :ref:`size<class_AABB_property_size>` равны нулю (равны :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`). В противном случае он всегда вычисляется как ``true``.

.. note::

	Существуют заметные различия при использовании данного API с C#. Подробнее см. :ref:`doc_c_sharp_differences`.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Каталог математической документации <../tutorials/math/index>`

- :doc:`Векторная математика <../tutorials/math/vector_math>`

- :doc:`Расширенная векторная математика <../tutorials/math/vectors_advanced>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`end<class_AABB_property_end>`           | ``Vector3(0, 0, 0)`` |
   +-------------------------------+-----------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`position<class_AABB_property_position>` | ``Vector3(0, 0, 0)`` |
   +-------------------------------+-----------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`size<class_AABB_property_size>`         | ``Vector3(0, 0, 0)`` |
   +-------------------------------+-----------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Конструкторы
------------------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`AABB<class_AABB_constructor_AABB>`\ (\ )                                                                                 |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`AABB<class_AABB_constructor_AABB>`\ (\ from\: :ref:`AABB<class_AABB>`\ )                                                 |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`AABB<class_AABB_constructor_AABB>`\ (\ position\: :ref:`Vector3<class_Vector3>`, size\: :ref:`Vector3<class_Vector3>`\ ) |
   +-------------------------+--------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`abs<class_AABB_method_abs>`\ (\ ) |const|                                                                                                         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`encloses<class_AABB_method_encloses>`\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const|                                                               |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`expand<class_AABB_method_expand>`\ (\ to_point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_center<class_AABB_method_get_center>`\ (\ ) |const|                                                                                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_endpoint<class_AABB_method_get_endpoint>`\ (\ idx\: :ref:`int<class_int>`\ ) |const|                                                          |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_longest_axis<class_AABB_method_get_longest_axis>`\ (\ ) |const|                                                                               |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_longest_axis_index<class_AABB_method_get_longest_axis_index>`\ (\ ) |const|                                                                   |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_longest_axis_size<class_AABB_method_get_longest_axis_size>`\ (\ ) |const|                                                                     |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_shortest_axis<class_AABB_method_get_shortest_axis>`\ (\ ) |const|                                                                             |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`         | :ref:`get_shortest_axis_index<class_AABB_method_get_shortest_axis_index>`\ (\ ) |const|                                                                 |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_shortest_axis_size<class_AABB_method_get_shortest_axis_size>`\ (\ ) |const|                                                                   |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_support<class_AABB_method_get_support>`\ (\ direction\: :ref:`Vector3<class_Vector3>`\ ) |const|                                              |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_volume<class_AABB_method_get_volume>`\ (\ ) |const|                                                                                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`grow<class_AABB_method_grow>`\ (\ by\: :ref:`float<class_float>`\ ) |const|                                                                       |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_point<class_AABB_method_has_point>`\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                      |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_surface<class_AABB_method_has_surface>`\ (\ ) |const|                                                                                         |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_volume<class_AABB_method_has_volume>`\ (\ ) |const|                                                                                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`intersection<class_AABB_method_intersection>`\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const|                                                       |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`intersects<class_AABB_method_intersects>`\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const|                                                           |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`intersects_plane<class_AABB_method_intersects_plane>`\ (\ plane\: :ref:`Plane<class_Plane>`\ ) |const|                                            |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`intersects_ray<class_AABB_method_intersects_ray>`\ (\ from\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const|        |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`intersects_segment<class_AABB_method_intersects_segment>`\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`\ ) |const| |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_equal_approx<class_AABB_method_is_equal_approx>`\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |const|                                                 |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_finite<class_AABB_method_is_finite>`\ (\ ) |const|                                                                                             |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>`       | :ref:`merge<class_AABB_method_merge>`\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const|                                                                     |
   +-------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Операторы
------------------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator !=<class_AABB_operator_neq_AABB>`\ (\ right\: :ref:`AABB<class_AABB>`\ )                     |
   +-------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`AABB<class_AABB>` | :ref:`operator *<class_AABB_operator_mul_Transform3D>`\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) |
   +-------------------------+-------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`operator ==<class_AABB_operator_eq_AABB>`\ (\ right\: :ref:`AABB<class_AABB>`\ )                      |
   +-------------------------+-------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_AABB_property_end:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **end** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_AABB_property_end>`

Конечная точка. Обычно это угол сверху справа и сзади ограничивающего прямоугольника, и эквивалентно ``position + size``. Установка этой точки влияет на :ref:`size<class_AABB_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_property_position:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **position** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_AABB_property_position>`

Начальная точка. Обычно это нижний левый угол спереди ограничивающей рамки.

.. rst-class:: classref-item-separator

----

.. _class_AABB_property_size:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **size** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_AABB_property_size>`

Ширина, высота и глубина ограничивающего прямоугольника, начиная с :ref:`position<class_AABB_property_position>`. Установка этого значения также влияет на точку :ref:`end<class_AABB_property_end>`.

\ **Примечание:** Рекомендуется устанавливать ширину, высоту и глубину на неотрицательные значения. Это связано с тем, что большинство методов в Godot предполагают, что :ref:`position<class_AABB_property_position>` — это нижний левый передний угол, а :ref:`end<class_AABB_property_end>` — это верхний правый задний угол. Чтобы получить эквивалентный ограничивающий прямоугольник с неотрицательным размером, используйте :ref:`abs()<class_AABB_method_abs>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания конструктора
------------------------------------------

.. _class_AABB_constructor_AABB:

.. rst-class:: classref-constructor

:ref:`AABB<class_AABB>` **AABB**\ (\ ) :ref:`🔗<class_AABB_constructor_AABB>`

Создает **AABB** с его :ref:`position<class_AABB_property_position>` и :ref:`size<class_AABB_property_size>`, установленными на :ref:`Vector3.ZERO<class_Vector3_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`AABB<class_AABB>` **AABB**\ (\ from\: :ref:`AABB<class_AABB>`\ )

Создает **AABB** как копию заданного **AABB**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`AABB<class_AABB>` **AABB**\ (\ position\: :ref:`Vector3<class_Vector3>`, size\: :ref:`Vector3<class_Vector3>`\ )

Создает **AABB** по ``position`` и ``size``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_AABB_method_abs:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **abs**\ (\ ) |const| :ref:`🔗<class_AABB_method_abs>`

Возвращает эквивалент **AABB** для данного ограничивающего прямоугольника, ширина, высота и глубина которого изменены так, чтобы они были неотрицательными значениями.


.. tabs::

 .. code-tab:: gdscript

    var box = AABB(Vector3(5, 0, 5), Vector3(-20, -10, -5))
    var absolute = box.abs()
    print(absolute.position) # Prints (-15.0, -10.0, 0.0)
    print(absolute.size)     # Prints (20.0, 10.0, 5.0)

 .. code-tab:: csharp

    var box = new Aabb(new Vector3(5, 0, 5), new Vector3(-20, -10, -5));
    var absolute = box.Abs();
    GD.Print(absolute.Position); // Prints (-15, -10, 0)
    GD.Print(absolute.Size);     // Prints (20, 10, 5)



\ **Примечание:** Рекомендуется использовать этот метод, когда :ref:`size<class_AABB_property_size>` отрицательный, так как большинство других методов в Godot предполагают, что компоненты :ref:`size<class_AABB_property_size>` больше, чем ``0``.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_encloses:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **encloses**\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_encloses>`

Возвращает ``true``, если этот ограничивающий прямоугольник *полностью* охватывает прямоугольник ``with``. Края обоих прямоугольников включены.


.. tabs::

 .. code-tab:: gdscript

    var a = AABB(Vector3(0, 0, 0), Vector3(4, 4, 4))
    var b = AABB(Vector3(1, 1, 1), Vector3(3, 3, 3))
    var c = AABB(Vector3(2, 2, 2), Vector3(8, 8, 8))

    print(a.encloses(a)) # Prints true
    print(a.encloses(b)) # Prints true
    print(a.encloses(c)) # Prints false

 .. code-tab:: csharp

    var a = new Aabb(new Vector3(0, 0, 0), new Vector3(4, 4, 4));
    var b = new Aabb(new Vector3(1, 1, 1), new Vector3(3, 3, 3));
    var c = new Aabb(new Vector3(2, 2, 2), new Vector3(8, 8, 8));

    GD.Print(a.Encloses(a)); // Prints True
    GD.Print(a.Encloses(b)); // Prints True
    GD.Print(a.Encloses(c)); // Prints False



.. rst-class:: classref-item-separator

----

.. _class_AABB_method_expand:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **expand**\ (\ to_point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_expand>`

Возвращает копию этого ограничивающего прямоугольника, расширенного для выравнивания краев с заданным ``to_point``, если это необходимо.


.. tabs::

 .. code-tab:: gdscript

    var box = AABB(Vector3(0, 0, 0), Vector3(5, 2, 5))

    box = box.expand(Vector3(10, 0, 0))
    print(box.position) # Prints (0.0, 0.0, 0.0)
    print(box.size)     # Prints (10.0, 2.0, 5.0)

    box = box.expand(Vector3(-5, 0, 5))
    print(box.position) # Prints (-5.0, 0.0, 0.0)
    print(box.size)     # Prints (15.0, 2.0, 5.0)

 .. code-tab:: csharp

    var box = new Aabb(new Vector3(0, 0, 0), new Vector3(5, 2, 5));

    box = box.Expand(new Vector3(10, 0, 0));
    GD.Print(box.Position); // Prints (0, 0, 0)
    GD.Print(box.Size);     // Prints (10, 2, 5)

    box = box.Expand(new Vector3(-5, 0, 5));
    GD.Print(box.Position); // Prints (-5, 0, 0)
    GD.Print(box.Size);     // Prints (15, 2, 5)



.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_center:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_center**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_center>`

Возвращает центральную точку ограничивающего прямоугольника. Это то же самое, что и ``position + (size / 2.0)``.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_endpoint:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_endpoint**\ (\ idx\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_AABB_method_get_endpoint>`

Возвращает положение одной из 8 вершин, составляющих этот ограничивающий параллелепипед. Если ``idx`` равен ``0``, это то же самое, что и :ref:`position<class_AABB_property_position>`, а если ``idx`` равен ``7``, это то же самое, что и :ref:`end<class_AABB_property_end>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_longest_axis:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_longest_axis**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_longest_axis>`

Возвращает самую длинную нормализованную ось :ref:`size<class_AABB_property_size>` этого ограничивающего прямоугольника в виде :ref:`Vector3<class_Vector3>` (:ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`, :ref:`Vector3.UP<class_Vector3_constant_UP>` или :ref:`Vector3.BACK<class_Vector3_constant_BACK>`).


.. tabs::

 .. code-tab:: gdscript

    var box = AABB(Vector3(0, 0, 0), Vector3(2, 4, 8))

    print(box.get_longest_axis())       # Prints (0.0, 0.0, 1.0)
    print(box.get_longest_axis_index()) # Prints 2
    print(box.get_longest_axis_size())  # Prints 8.0

 .. code-tab:: csharp

    var box = new Aabb(new Vector3(0, 0, 0), new Vector3(2, 4, 8));

    GD.Print(box.GetLongestAxis());      // Prints (0, 0, 1)
    GD.Print(box.GetLongestAxisIndex()); // Prints Z
    GD.Print(box.GetLongestAxisSize());  // Prints 8



См. также :ref:`get_longest_axis_index()<class_AABB_method_get_longest_axis_index>` и :ref:`get_longest_axis_size()<class_AABB_method_get_longest_axis_size>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_longest_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_longest_axis_index**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_longest_axis_index>`

Возвращает индекс самой длинной оси :ref:`size<class_AABB_property_size>` этого ограничивающего прямоугольника (см. :ref:`Vector3.AXIS_X<class_Vector3_constant_AXIS_X>`, :ref:`Vector3.AXIS_Y<class_Vector3_constant_AXIS_Y>` и :ref:`Vector3.AXIS_Z<class_Vector3_constant_AXIS_Z>`).

Пример см. в :ref:`get_longest_axis()<class_AABB_method_get_longest_axis>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_longest_axis_size:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_longest_axis_size**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_longest_axis_size>`

Возвращает самое длинное измерение :ref:`size<class_AABB_property_size>` этого ограничивающего прямоугольника.

Пример см. в :ref:`get_longest_axis()<class_AABB_method_get_longest_axis>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_shortest_axis:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_shortest_axis**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_shortest_axis>`

Возвращает самую короткую нормализованную ось :ref:`size<class_AABB_property_size>` этого ограничивающего прямоугольника в виде :ref:`Vector3<class_Vector3>` (:ref:`Vector3.RIGHT<class_Vector3_constant_RIGHT>`, :ref:`Vector3.UP<class_Vector3_constant_UP>` или :ref:`Vector3.BACK<class_Vector3_constant_BACK>`).


.. tabs::

 .. code-tab:: gdscript

    var box = AABB(Vector3(0, 0, 0), Vector3(2, 4, 8))

    print(box.get_shortest_axis())       # Prints (1.0, 0.0, 0.0)
    print(box.get_shortest_axis_index()) # Prints 0
    print(box.get_shortest_axis_size())  # Prints 2.0

 .. code-tab:: csharp

    var box = new Aabb(new Vector3(0, 0, 0), new Vector3(2, 4, 8));

    GD.Print(box.GetShortestAxis());      // Prints (1, 0, 0)
    GD.Print(box.GetShortestAxisIndex()); // Prints X
    GD.Print(box.GetShortestAxisSize());  // Prints 2



См. также :ref:`get_shortest_axis_index()<class_AABB_method_get_shortest_axis_index>` и :ref:`get_shortest_axis_size()<class_AABB_method_get_shortest_axis_size>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_shortest_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_shortest_axis_index**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_shortest_axis_index>`

Возвращает индекс самой короткой оси :ref:`size<class_AABB_property_size>` этого ограничивающего прямоугольника (см. :ref:`Vector3.AXIS_X<class_Vector3_constant_AXIS_X>`, :ref:`Vector3.AXIS_Y<class_Vector3_constant_AXIS_Y>` и :ref:`Vector3.AXIS_Z<class_Vector3_constant_AXIS_Z>`).

Пример см. в :ref:`get_shortest_axis()<class_AABB_method_get_shortest_axis>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_shortest_axis_size:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_shortest_axis_size**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_shortest_axis_size>`

Возвращает наименьшее измерение :ref:`size<class_AABB_property_size>` этого ограничивающего прямоугольника.

Пример см. в :ref:`get_shortest_axis()<class_AABB_method_get_shortest_axis>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_support:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_support**\ (\ direction\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_get_support>`

Возвращает позицию вершины этого ограничивающего прямоугольника, которая находится дальше всего в заданном направлении. Эта точка обычно известна как опорная точка в алгоритмах обнаружения столкновений.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_get_volume:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_volume**\ (\ ) |const| :ref:`🔗<class_AABB_method_get_volume>`

Возвращает объем ограничивающего прямоугольника. Это эквивалентно ``size.x * size.y * size.z``. См. также :ref:`has_volume()<class_AABB_method_has_volume>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_grow:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **grow**\ (\ by\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_AABB_method_grow>`

Возвращает копию этого ограничивающего прямоугольника, расширенного со всех сторон на указанное значение ``by``. Отрицательное значение вместо этого сжимает прямоугольник.


.. tabs::

 .. code-tab:: gdscript

    var a = AABB(Vector3(4, 4, 4), Vector3(8, 8, 8)).grow(4)
    print(a.position) # Prints (0.0, 0.0, 0.0)
    print(a.size)     # Prints (16.0, 16.0, 16.0)

    var b = AABB(Vector3(0, 0, 0), Vector3(8, 4, 2)).grow(2)
    print(b.position) # Prints (-2.0, -2.0, -2.0)
    print(b.size)     # Prints (12.0, 8.0, 6.0)

 .. code-tab:: csharp

    var a = new Aabb(new Vector3(4, 4, 4), new Vector3(8, 8, 8)).Grow(4);
    GD.Print(a.Position); // Prints (0, 0, 0)
    GD.Print(a.Size);     // Prints (16, 16, 16)

    var b = new Aabb(new Vector3(0, 0, 0), new Vector3(8, 4, 2)).Grow(2);
    GD.Print(b.Position); // Prints (-2, -2, -2)
    GD.Print(b.Size);     // Prints (12, 8, 6)



.. rst-class:: classref-item-separator

----

.. _class_AABB_method_has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_point**\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_has_point>`

Возвращает ``true``, если ограничивающий прямоугольник содержит заданный ``point``. По соглашению, точки точно на правой, верхней и передней сторонах **не** включены.

\ **Примечание:** Этот метод ненадежен для **AABB** с *отрицательным* :ref:`size<class_AABB_property_size>`. Сначала используйте :ref:`abs()<class_AABB_method_abs>`, чтобы получить допустимый ограничивающий прямоугольник.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_has_surface:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_surface**\ (\ ) |const| :ref:`🔗<class_AABB_method_has_surface>`

Возвращает ``true``, если этот ограничивающий прямоугольник имеет поверхность или длину, то есть хотя бы один компонент :ref:`size<class_AABB_property_size>` больше, чем ``0``. В противном случае возвращает ``false``.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_has_volume:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_volume**\ (\ ) |const| :ref:`🔗<class_AABB_method_has_volume>`

Возвращает ``true``, если ширина, высота и глубина этого ограничивающего прямоугольника положительны. См. также :ref:`get_volume()<class_AABB_method_get_volume>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersection:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **intersection**\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_intersection>`

Возвращает пересечение между этим ограничивающим прямоугольником и ``with``. Если прямоугольники не пересекаются, возвращает пустой **AABB**. Если прямоугольники пересекаются по краю, возвращает плоский **AABB** без объема (см. :ref:`has_surface()<class_AABB_method_has_surface>` и :ref:`has_volume()<class_AABB_method_has_volume>`).


.. tabs::

 .. code-tab:: gdscript

    var box1 = AABB(Vector3(0, 0, 0), Vector3(5, 2, 8))
    var box2 = AABB(Vector3(2, 0, 2), Vector3(8, 4, 4))

    var intersection = box1.intersection(box2)
    print(intersection.position) # Prints (2.0, 0.0, 2.0)
    print(intersection.size)     # Prints (3.0, 2.0, 4.0)

 .. code-tab:: csharp

    var box1 = new Aabb(new Vector3(0, 0, 0), new Vector3(5, 2, 8));
    var box2 = new Aabb(new Vector3(2, 0, 2), new Vector3(8, 4, 4));

    var intersection = box1.Intersection(box2);
    GD.Print(intersection.Position); // Prints (2, 0, 2)
    GD.Print(intersection.Size);     // Prints (3, 2, 4)



\ **Примечание:** Если вам нужно только узнать, пересекаются ли два ограничивающих прямоугольника, используйте вместо этого :ref:`intersects()<class_AABB_method_intersects>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersects:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersects**\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_intersects>`

Возвращает ``true``, если этот ограничивающий прямоугольник перекрывается с прямоугольником ``with``. Края обоих прямоугольников *всегда* исключаются.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersects_plane:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersects_plane**\ (\ plane\: :ref:`Plane<class_Plane>`\ ) |const| :ref:`🔗<class_AABB_method_intersects_plane>`

Возвращает ``true``, если этот ограничивающий прямоугольник находится по обе стороны заданной ``plane``.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersects_ray:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **intersects_ray**\ (\ from\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_intersects_ray>`

Возвращает первую точку пересечения этого ограничивающего прямоугольника и заданного луча в виде :ref:`Vector3<class_Vector3>`. Если пересечения не происходит, возвращает ``null``.

Луч начинается в ``from``, смотрит в ``dir`` и простирается в бесконечность.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_intersects_segment:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **intersects_segment**\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_AABB_method_intersects_segment>`

Возвращает первую точку пересечения этого ограничивающего прямоугольника и заданного сегмента в виде :ref:`Vector3<class_Vector3>`. Если пересечения не происходит, возвращает ``null``.

Сегмент начинается в ``from`` и заканчивается в ``to``.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ aabb\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_is_equal_approx>`

Возвращает ``true``, если этот ограничивающий прямоугольник и ``aabb`` приблизительно равны, вызывая :ref:`Vector3.is_equal_approx()<class_Vector3_method_is_equal_approx>` для :ref:`position<class_AABB_property_position>` и :ref:`size<class_AABB_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_AABB_method_is_finite>`

Возвращает ``true``, если значения этого ограничивающего прямоугольника конечны, вызывая :ref:`Vector3.is_finite()<class_Vector3_method_is_finite>` для :ref:`position<class_AABB_property_position>` и :ref:`size<class_AABB_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_method_merge:

.. rst-class:: classref-method

:ref:`AABB<class_AABB>` **merge**\ (\ with\: :ref:`AABB<class_AABB>`\ ) |const| :ref:`🔗<class_AABB_method_merge>`

Возвращает **AABB**, который охватывает как этот ограничивающий прямоугольник, так и ``with`` по краям. См. также :ref:`encludes()<class_AABB_method_encludes>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания оператора
------------------------------------

.. _class_AABB_operator_neq_AABB:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`AABB<class_AABB>`\ ) :ref:`🔗<class_AABB_operator_neq_AABB>`

Возвращает ``true``, если :ref:`position<class_AABB_property_position>` или :ref:`size<class_AABB_property_size>` обоих ограничивающих рамок не равны.

\ **Примечание:** Из-за ошибок точности с плавающей точкой рассмотрите возможность использования :ref:`is_equal_approx()<class_AABB_method_is_equal_approx>`, который более надежен.

.. rst-class:: classref-item-separator

----

.. _class_AABB_operator_mul_Transform3D:

.. rst-class:: classref-operator

:ref:`AABB<class_AABB>` **operator ***\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_AABB_operator_mul_Transform3D>`

Обратно преобразует (умножает) **AABB** на заданную матрицу преобразования :ref:`Transform3D<class_Transform3D>`, при условии, что базис преобразования ортонормален (т. е. поворот/отражение хороши, масштабирование/перекос — нет).

\ ``aabb * transform`` эквивалентно ``transform.inverse() * aabb``. См. :ref:`Transform3D.inverse()<class_Transform3D_method_inverse>`.

Для преобразования с помощью обратного аффинного преобразования (например, с масштабированием) вместо этого можно использовать ``transform.affine_inverse() * aabb``. См. :ref:`Transform3D.affine_inverse()<class_Transform3D_method_affine_inverse>`.

.. rst-class:: classref-item-separator

----

.. _class_AABB_operator_eq_AABB:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`AABB<class_AABB>`\ ) :ref:`🔗<class_AABB_operator_eq_AABB>`

Возвращает ``true``, если и :ref:`position<class_AABB_property_position>` и :ref:`size<class_AABB_property_size>` ограничивающих рамок в точности равны.

\ **Примечание:** Из-за ошибок точности с плавающей точкой рассмотрите возможность использования :ref:`is_equal_approx()<class_AABB_method_is_equal_approx>`, который более надежен.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
