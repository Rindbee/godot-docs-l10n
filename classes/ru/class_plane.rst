:github_url: hide

.. _class_Plane:

Plane
=====

Плоскость в нормальной форме Гессе (Hessian).

.. rst-class:: classref-introduction-group

Описание
----------------

Представляет собой нормализованное уравнение плоскости. :ref:`normal<class_Plane_property_normal>` — нормаль плоскости (a, b, c нормализованы), а :ref:`d<class_Plane_property_d>` — расстояние от начала координат до плоскости (в направлении «нормали»). «Над» или «Выше» плоскости считается сторона плоскости, в сторону которой направлена нормаль.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Каталог математической документации <../tutorials/math/index>`

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`d<class_Plane_property_d>`           | ``0.0``              |
   +-------------------------------+--------------------------------------------+----------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`normal<class_Plane_property_normal>` | ``Vector3(0, 0, 0)`` |
   +-------------------------------+--------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`x<class_Plane_property_x>`           | ``0.0``              |
   +-------------------------------+--------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`y<class_Plane_property_y>`           | ``0.0``              |
   +-------------------------------+--------------------------------------------+----------------------+
   | :ref:`float<class_float>`     | :ref:`z<class_Plane_property_z>`           | ``0.0``              |
   +-------------------------------+--------------------------------------------+----------------------+

.. rst-class:: classref-reftable-group

Конструкторы
------------------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`Plane<class_Plane_constructor_Plane>`\ (\ )                                                                                                                             |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`Plane<class_Plane_constructor_Plane>`\ (\ from\: :ref:`Plane<class_Plane>`\ )                                                                                           |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`Plane<class_Plane_constructor_Plane>`\ (\ a\: :ref:`float<class_float>`, b\: :ref:`float<class_float>`, c\: :ref:`float<class_float>`, d\: :ref:`float<class_float>`\ ) |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`Plane<class_Plane_constructor_Plane>`\ (\ normal\: :ref:`Vector3<class_Vector3>`\ )                                                                                     |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`Plane<class_Plane_constructor_Plane>`\ (\ normal\: :ref:`Vector3<class_Vector3>`, d\: :ref:`float<class_float>`\ )                                                      |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`Plane<class_Plane_constructor_Plane>`\ (\ normal\: :ref:`Vector3<class_Vector3>`, point\: :ref:`Vector3<class_Vector3>`\ )                                              |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`Plane<class_Plane_constructor_Plane>`\ (\ point1\: :ref:`Vector3<class_Vector3>`, point2\: :ref:`Vector3<class_Vector3>`, point3\: :ref:`Vector3<class_Vector3>`\ )     |
   +---------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`distance_to<class_Plane_method_distance_to>`\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                  |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`get_center<class_Plane_method_get_center>`\ (\ ) |const|                                                                                           |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_point<class_Plane_method_has_point>`\ (\ point\: :ref:`Vector3<class_Vector3>`, tolerance\: :ref:`float<class_float>` = 1e-05\ ) |const|       |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`intersect_3<class_Plane_method_intersect_3>`\ (\ b\: :ref:`Plane<class_Plane>`, c\: :ref:`Plane<class_Plane>`\ ) |const|                           |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`intersects_ray<class_Plane_method_intersects_ray>`\ (\ from\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const|        |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`intersects_segment<class_Plane_method_intersects_segment>`\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`\ ) |const| |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_equal_approx<class_Plane_method_is_equal_approx>`\ (\ to_plane\: :ref:`Plane<class_Plane>`\ ) |const|                                           |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_finite<class_Plane_method_is_finite>`\ (\ ) |const|                                                                                             |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_point_over<class_Plane_method_is_point_over>`\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                              |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>`     | :ref:`normalized<class_Plane_method_normalized>`\ (\ ) |const|                                                                                           |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>` | :ref:`project<class_Plane_method_project>`\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const|                                                          |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Операторы
------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`operator !=<class_Plane_operator_neq_Plane>`\ (\ right\: :ref:`Plane<class_Plane>`\ )                  |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`operator *<class_Plane_operator_mul_Transform3D>`\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`operator ==<class_Plane_operator_eq_Plane>`\ (\ right\: :ref:`Plane<class_Plane>`\ )                   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`operator unary+<class_Plane_operator_unplus>`\ (\ )                                                    |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Plane<class_Plane>` | :ref:`operator unary-<class_Plane_operator_unminus>`\ (\ )                                                   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константы
------------------

.. _class_Plane_constant_PLANE_YZ:

.. rst-class:: classref-constant

**PLANE_YZ** = ``Plane(1, 0, 0, 0)`` :ref:`🔗<class_Plane_constant_PLANE_YZ>`

Плоскость, простирающаяся по осям Y и Z (нормальный вектор точек +X).

.. _class_Plane_constant_PLANE_XZ:

.. rst-class:: classref-constant

**PLANE_XZ** = ``Plane(0, 1, 0, 0)`` :ref:`🔗<class_Plane_constant_PLANE_XZ>`

Плоскость, простирающаяся по осям X и Z (нормальный вектор точек +Y).

.. _class_Plane_constant_PLANE_XY:

.. rst-class:: classref-constant

**PLANE_XY** = ``Plane(0, 0, 1, 0)`` :ref:`🔗<class_Plane_constant_PLANE_XY>`

Плоскость, простирающаяся по осям X и Y (нормальный вектор точек +Z).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Plane_property_d:

.. rst-class:: classref-property

:ref:`float<class_float>` **d** = ``0.0`` :ref:`🔗<class_Plane_property_d>`

Расстояние от начала координат до плоскости, выраженное через :ref:`normal<class_Plane_property_normal>` (в соответствии с его направлением и величиной). Фактическое абсолютное расстояние от начала координат до плоскости можно вычислить как ``abs(d) / normal.length()`` (если :ref:`normal<class_Plane_property_normal>` имеет нулевую длину, то эта **Plane** не представляет допустимую плоскость).

В скалярном уравнении плоскости ``ax + by + cz = d`` это ``d``, тогда как координаты ``(a, b, c)`` представлены свойством :ref:`normal<class_Plane_property_normal>`.

.. rst-class:: classref-item-separator

----

.. _class_Plane_property_normal:

.. rst-class:: classref-property

:ref:`Vector3<class_Vector3>` **normal** = ``Vector3(0, 0, 0)`` :ref:`🔗<class_Plane_property_normal>`

Нормаль плоскости, обычно единичный вектор. Не должен быть нулевым вектором, так как **Plane** с такой :ref:`normal<class_Plane_property_normal>` не представляет допустимую плоскость.

В скалярном уравнении плоскости ``ax + by + cz = d`` это вектор ``(a, b, c)``, где ``d`` — свойство :ref:`d<class_Plane_property_d>`.

.. rst-class:: classref-item-separator

----

.. _class_Plane_property_x:

.. rst-class:: classref-property

:ref:`float<class_float>` **x** = ``0.0`` :ref:`🔗<class_Plane_property_x>`

Компонент X вектора :ref:`normal<class_Plane_property_normal>` плоскости.

.. rst-class:: classref-item-separator

----

.. _class_Plane_property_y:

.. rst-class:: classref-property

:ref:`float<class_float>` **y** = ``0.0`` :ref:`🔗<class_Plane_property_y>`

Компонент Y вектора :ref:`normal<class_Plane_property_normal>` плоскости.

.. rst-class:: classref-item-separator

----

.. _class_Plane_property_z:

.. rst-class:: classref-property

:ref:`float<class_float>` **z** = ``0.0`` :ref:`🔗<class_Plane_property_z>`

Компонент Z вектора :ref:`normal<class_Plane_property_normal>` плоскости.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания конструктора
------------------------------------------

.. _class_Plane_constructor_Plane:

.. rst-class:: classref-constructor

:ref:`Plane<class_Plane>` **Plane**\ (\ ) :ref:`🔗<class_Plane_constructor_Plane>`

Создает инициализированную по умолчанию **Plane** со всеми компонентами, установленными на ``0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Plane<class_Plane>` **Plane**\ (\ from\: :ref:`Plane<class_Plane>`\ )

Создает **Plane** как копию заданной **Plane**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Plane<class_Plane>` **Plane**\ (\ a\: :ref:`float<class_float>`, b\: :ref:`float<class_float>`, c\: :ref:`float<class_float>`, d\: :ref:`float<class_float>`\ )

Создает плоскость из четырех параметров. Три компонента :ref:`normal<class_Plane_property_normal>` результирующей плоскости — ``a``, ``b`` и ``c``, а плоскость имеет расстояние ``d`` от начала координат.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Plane<class_Plane>` **Plane**\ (\ normal\: :ref:`Vector3<class_Vector3>`\ )

Создает плоскость из вектора нормали. Плоскость пересечет начало координат.

\ ``normal`` плоскости должен быть единичным вектором.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Plane<class_Plane>` **Plane**\ (\ normal\: :ref:`Vector3<class_Vector3>`, d\: :ref:`float<class_float>`\ )

Создает плоскость из вектора нормали и расстояния плоскости от начала координат.

\ ``normal`` плоскости должен быть единичным вектором.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Plane<class_Plane>` **Plane**\ (\ normal\: :ref:`Vector3<class_Vector3>`, point\: :ref:`Vector3<class_Vector3>`\ )

Создает плоскость из вектора нормали и точки на плоскости.

\ ``normal`` плоскости должен быть единичным вектором.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Plane<class_Plane>` **Plane**\ (\ point1\: :ref:`Vector3<class_Vector3>`, point2\: :ref:`Vector3<class_Vector3>`, point3\: :ref:`Vector3<class_Vector3>`\ )

Создает плоскость из трех точек, указанных по часовой стрелке.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Plane_method_distance_to:

.. rst-class:: classref-method

:ref:`float<class_float>` **distance_to**\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Plane_method_distance_to>`

Возвращает кратчайшее расстояние от плоскости до позиции ``point``. Если точка находится выше плоскости, расстояние будет положительным. Если ниже, расстояние будет отрицательным.

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_get_center:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **get_center**\ (\ ) |const| :ref:`🔗<class_Plane_method_get_center>`

Возвращает центр плоскости.

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_point**\ (\ point\: :ref:`Vector3<class_Vector3>`, tolerance\: :ref:`float<class_float>` = 1e-05\ ) |const| :ref:`🔗<class_Plane_method_has_point>`

Возвращает ``true``, если ``point`` находится внутри плоскости. Сравнение использует пользовательский минимальный порог ``allowance``.

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_intersect_3:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **intersect_3**\ (\ b\: :ref:`Plane<class_Plane>`, c\: :ref:`Plane<class_Plane>`\ ) |const| :ref:`🔗<class_Plane_method_intersect_3>`

Возвращает точку пересечения трех плоскостей ``b``, ``c`` и этой плоскости. Если пересечение не найдено, возвращается ``null``.

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_intersects_ray:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **intersects_ray**\ (\ from\: :ref:`Vector3<class_Vector3>`, dir\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Plane_method_intersects_ray>`

Возвращает точку пересечения луча, состоящего из позиции ``from`` и направления нормали ``dir`` с этой плоскостью. Если пересечение не найдено, возвращается ``null``.

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_intersects_segment:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **intersects_segment**\ (\ from\: :ref:`Vector3<class_Vector3>`, to\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Plane_method_intersects_segment>`

Возвращает точку пересечения сегмента от позиции ``from`` до позиции ``to`` с этой плоскостью. Если пересечение не найдено, возвращается ``null``.

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ to_plane\: :ref:`Plane<class_Plane>`\ ) |const| :ref:`🔗<class_Plane_method_is_equal_approx>`

Возвращает ``true``, если эта плоскость и ``to_plane`` приблизительно равны, путем запуска :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>` для каждого компонента.

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Plane_method_is_finite>`

Возвращает ``true``, если эта плоскость конечна, вызывая :ref:`@GlobalScope.is_finite()<class_@GlobalScope_method_is_finite>` для каждого компонента.

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_is_point_over:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_point_over**\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Plane_method_is_point_over>`

Возвращает ``true``, если ``point`` расположена над плоскостью.

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_normalized:

.. rst-class:: classref-method

:ref:`Plane<class_Plane>` **normalized**\ (\ ) |const| :ref:`🔗<class_Plane_method_normalized>`

Возвращает копию плоскости с нормализованным :ref:`normal<class_Plane_property_normal>` (то есть это единичный вектор). Возвращает ``Plane(0, 0, 0, 0)``, если :ref:`normal<class_Plane_property_normal>` не может быть нормализован (он имеет нулевую длину).

.. rst-class:: classref-item-separator

----

.. _class_Plane_method_project:

.. rst-class:: classref-method

:ref:`Vector3<class_Vector3>` **project**\ (\ point\: :ref:`Vector3<class_Vector3>`\ ) |const| :ref:`🔗<class_Plane_method_project>`

Возвращает ортогональную проекцию ``point`` на точку на плоскости.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания оператора
------------------------------------

.. _class_Plane_operator_neq_Plane:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Plane<class_Plane>`\ ) :ref:`🔗<class_Plane_operator_neq_Plane>`

Возвращает ``true``, если плоскости не равны.

\ **Примечание:** Из-за ошибок точности с плавающей точкой рассмотрите возможность использования :ref:`is_equal_approx()<class_Plane_method_is_equal_approx>` вместо этого, что более надежно.

.. rst-class:: classref-item-separator

----

.. _class_Plane_operator_mul_Transform3D:

.. rst-class:: classref-operator

:ref:`Plane<class_Plane>` **operator ***\ (\ right\: :ref:`Transform3D<class_Transform3D>`\ ) :ref:`🔗<class_Plane_operator_mul_Transform3D>`

Обратно преобразует (умножает) **Plane** на заданную матрицу преобразования :ref:`Transform3D<class_Transform3D>`.

\ ``plane * transform`` эквивалентно ``transform.affine_inverse() * plane``. См. :ref:`Transform3D.affine_inverse()<class_Transform3D_method_affine_inverse>`.

.. rst-class:: classref-item-separator

----

.. _class_Plane_operator_eq_Plane:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Plane<class_Plane>`\ ) :ref:`🔗<class_Plane_operator_eq_Plane>`

Возвращает ``true``, если плоскости точно равны.

\ **Примечание:** Из-за ошибок точности с плавающей точкой рассмотрите возможность использования :ref:`is_equal_approx()<class_Plane_method_is_equal_approx>`, который более надежен.

.. rst-class:: classref-item-separator

----

.. _class_Plane_operator_unplus:

.. rst-class:: classref-operator

:ref:`Plane<class_Plane>` **operator unary+**\ (\ ) :ref:`🔗<class_Plane_operator_unplus>`

Возвращает то же значение, как если бы ``+`` не было. Унарный ``+`` ничего не делает, но иногда он может сделать ваш код более читаемым.

.. rst-class:: classref-item-separator

----

.. _class_Plane_operator_unminus:

.. rst-class:: classref-operator

:ref:`Plane<class_Plane>` **operator unary-**\ (\ ) :ref:`🔗<class_Plane_operator_unminus>`

Возвращает отрицательное значение **Plane**. Это то же самое, что и запись ``Plane(-p.normal, -p.d)``. Эта операция меняет направление вектора нормали, а также меняет значение расстояния, в результате чего Plane находится в том же месте, но смотрит в противоположном направлении.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
