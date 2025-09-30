:github_url: hide

.. _class_Rect2:

Rect2
=====

Двумерная ограничивающая рамка, выровненная по осям, с использованием координат с плавающей точкой.

.. rst-class:: classref-introduction-group

Описание
----------------

Встроенный тип :ref:`Variant<class_Variant>` **Rect2** представляет собой выровненный по осям прямоугольник в 2D-пространстве. Он определяется его :ref:`position<class_Rect2_property_position>` и :ref:`size<class_Rect2_property_size>`, которые являются :ref:`Vector2<class_Vector2>`. Он часто используется для быстрых тестов на перекрытие (см. :ref:`intersects()<class_Rect2_method_intersects>`). Хотя сам **Rect2** выровнен по осям, его можно объединить с :ref:`Transform2D<class_Transform2D>` для представления повернутого или наклоненного прямоугольника.

Для целочисленных координат используйте :ref:`Rect2i<class_Rect2i>`. 3D-эквивалент **Rect2** — :ref:`AABB<class_AABB>`.

\ **Примечание:** Отрицательные значения для :ref:`size<class_Rect2_property_size>` не поддерживаются. При отрицательном размере большинство методов **Rect2** работают неправильно. Используйте :ref:`abs()<class_Rect2_method_abs>`, чтобы получить эквивалентный **Rect2** с неотрицательным размером.

\ **Примечание:** В булевом контексте **Rect2** оценивается как ``false``, если и :ref:`position<class_Rect2_property_position>`, и :ref:`size<class_Rect2_property_size>` равны нулю (равны :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`). В противном случае он всегда оценивается как ``true``.

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

   +-------------------------------+------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`end<class_Rect2_property_end>`           | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`position<class_Rect2_property_position>` | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`size<class_Rect2_property_size>`         | ``Vector2(0, 0)`` |
   +-------------------------------+------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Конструкторы
------------------------

.. table::
   :widths: auto

   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ )                                                                                                                                      |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ from\: :ref:`Rect2<class_Rect2>`\ )                                                                                                    |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ from\: :ref:`Rect2i<class_Rect2i>`\ )                                                                                                  |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ position\: :ref:`Vector2<class_Vector2>`, size\: :ref:`Vector2<class_Vector2>`\ )                                                      |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`Rect2<class_Rect2_constructor_Rect2>`\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`, width\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`\ ) |
   +---------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`abs<class_Rect2_method_abs>`\ (\ ) |const|                                                                                                                                                                   |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`encloses<class_Rect2_method_encloses>`\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const|                                                                                                                          |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`expand<class_Rect2_method_expand>`\ (\ to\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`     | :ref:`get_area<class_Rect2_method_get_area>`\ (\ ) |const|                                                                                                                                                         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_center<class_Rect2_method_get_center>`\ (\ ) |const|                                                                                                                                                     |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`get_support<class_Rect2_method_get_support>`\ (\ direction\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                        |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`grow<class_Rect2_method_grow>`\ (\ amount\: :ref:`float<class_float>`\ ) |const|                                                                                                                             |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`grow_individual<class_Rect2_method_grow_individual>`\ (\ left\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`\ ) |const| |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`grow_side<class_Rect2_method_grow_side>`\ (\ side\: :ref:`int<class_int>`, amount\: :ref:`float<class_float>`\ ) |const|                                                                                     |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_area<class_Rect2_method_has_area>`\ (\ ) |const|                                                                                                                                                         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`has_point<class_Rect2_method_has_point>`\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`intersection<class_Rect2_method_intersection>`\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const|                                                                                                                  |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`intersects<class_Rect2_method_intersects>`\ (\ b\: :ref:`Rect2<class_Rect2>`, include_borders\: :ref:`bool<class_bool>` = false\ ) |const|                                                                   |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_equal_approx<class_Rect2_method_is_equal_approx>`\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |const|                                                                                                         |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`is_finite<class_Rect2_method_is_finite>`\ (\ ) |const|                                                                                                                                                       |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`     | :ref:`merge<class_Rect2_method_merge>`\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const|                                                                                                                                |
   +-------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Операторы
------------------

.. table::
   :widths: auto

   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`operator !=<class_Rect2_operator_neq_Rect2>`\ (\ right\: :ref:`Rect2<class_Rect2>`\ )                  |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>` | :ref:`operator *<class_Rect2_operator_mul_Transform2D>`\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`   | :ref:`operator ==<class_Rect2_operator_eq_Rect2>`\ (\ right\: :ref:`Rect2<class_Rect2>`\ )                   |
   +---------------------------+--------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Rect2_property_end:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **end** = ``Vector2(0, 0)`` :ref:`🔗<class_Rect2_property_end>`

Конечная точка. Обычно это нижний правый угол прямоугольника, и эквивалентно ``position + size``. Установка этой точки влияет на :ref:`size<class_Rect2_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_property_position:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **position** = ``Vector2(0, 0)`` :ref:`🔗<class_Rect2_property_position>`

Начальная точка. Обычно это верхний левый угол прямоугольника.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_property_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **size** = ``Vector2(0, 0)`` :ref:`🔗<class_Rect2_property_size>`

Ширина и высота прямоугольника, начиная с :ref:`position<class_Rect2_property_position>`. Установка этого значения также влияет на точку :ref:`end<class_Rect2_property_end>`.

\ **Примечание:** Рекомендуется устанавливать ширину и высоту на неотрицательные значения, так как большинство методов в Godot предполагают, что :ref:`position<class_Rect2_property_position>` — это верхний левый угол, а :ref:`end<class_Rect2_property_end>` — это нижний правый угол. Чтобы получить эквивалентный прямоугольник с неотрицательным размером, используйте :ref:`abs()<class_Rect2_method_abs>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания конструктора
------------------------------------------

.. _class_Rect2_constructor_Rect2:

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ ) :ref:`🔗<class_Rect2_constructor_Rect2>`

Создает **Rect2** с его :ref:`position<class_Rect2_property_position>` и :ref:`size<class_Rect2_property_size>`, установленными на :ref:`Vector2.ZERO<class_Vector2_constant_ZERO>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ from\: :ref:`Rect2<class_Rect2>`\ )

Создает **Rect2** как копию заданного **Rect2**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ from\: :ref:`Rect2i<class_Rect2i>`\ )

Создает **Rect2** из :ref:`Rect2i<class_Rect2i>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ position\: :ref:`Vector2<class_Vector2>`, size\: :ref:`Vector2<class_Vector2>`\ )

Создает **Rect2** по ``position`` и ``size``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Rect2<class_Rect2>` **Rect2**\ (\ x\: :ref:`float<class_float>`, y\: :ref:`float<class_float>`, width\: :ref:`float<class_float>`, height\: :ref:`float<class_float>`\ )

Создает **Rect2**, устанавливая его :ref:`position<class_Rect2_property_position>` на (``x``, ``y``), а его :ref:`size<class_Rect2_property_size>` на (``width``, ``height``).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Rect2_method_abs:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **abs**\ (\ ) |const| :ref:`🔗<class_Rect2_method_abs>`

Возвращает **Rect2**, эквивалентный данному прямоугольнику, с измененной шириной и высотой, которые стали неотрицательными значениями, и с :ref:`position<class_Rect2_property_position>`, являющейся верхним левым углом прямоугольника.


.. tabs::

 .. code-tab:: gdscript

    var rect = Rect2(25, 25, -100, -50)
    var absolute = rect.abs() # абсолютный — Rect2(-75, -25, 100, 50)

 .. code-tab:: csharp

    var rect = new Rect2(25, 25, -100, -50);
    var absolute = rect.Abs(); // абсолютный — Rect2(-75, -25, 100, 50)



\ **Примечание:** Рекомендуется использовать этот метод, когда :ref:`size<class_Rect2_property_size>` отрицательный, так как большинство других методов в Godot предполагают, что :ref:`position<class_Rect2_property_position>` — это верхний левый угол, а :ref:`end<class_Rect2_property_end>` — нижний правый угол.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_encloses:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **encloses**\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_Rect2_method_encloses>`

Возвращает ``true``, если этот прямоугольник *полностью* охватывает прямоугольник ``b``.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_expand:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **expand**\ (\ to\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Rect2_method_expand>`

Возвращает копию этого прямоугольника, расширенную для выравнивания краев с заданной точкой ``to``, если это необходимо.


.. tabs::

 .. code-tab:: gdscript

    var rect = Rect2(0, 0, 5, 2)

    rect = rect.expand(Vector2(10, 0)) # прямоугольник равен Rect2(0, 0, 10, 2)
    rect = rect.expand(Vector2(-5, 5)) # прямоугольник равен Rect2(-5, 0, 15, 5)

 .. code-tab:: csharp

    var rect = new Rect2(0, 0, 5, 2);

    rect = rect.Expand(new Vector2(10, 0)); // прямоугольник равен Rect2(0, 0, 10, 2)
    rect = rect.Expand(new Vector2(-5, 5)); // прямоугольник равен Rect2(-5, 0, 15, 5)



.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_get_area:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_area**\ (\ ) |const| :ref:`🔗<class_Rect2_method_get_area>`

Возвращает площадь прямоугольника. Это эквивалентно ``size.x * size.y``. См. также :ref:`has_area()<class_Rect2_method_has_area>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_get_center:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_center**\ (\ ) |const| :ref:`🔗<class_Rect2_method_get_center>`

Возвращает центральную точку прямоугольника. Это то же самое, что ``position + (size / 2.0)``.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_get_support:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_support**\ (\ direction\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Rect2_method_get_support>`

Возвращает позицию вершины этого прямоугольника, которая является самой дальней в заданном направлении. Эта точка обычно известна как опорная точка в алгоритмах обнаружения столкновений.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_grow:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **grow**\ (\ amount\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Rect2_method_grow>`

Возвращает копию этого прямоугольника, расширенного со всех сторон на заданный ``amount``. Отрицательное ``amount`` вместо этого сжимает прямоугольник. См. также :ref:`grow_individual()<class_Rect2_method_grow_individual>` и :ref:`grow_side()<class_Rect2_method_grow_side>`.


.. tabs::

 .. code-tab:: gdscript

    var a = Rect2(4, 4, 8, 8).grow(4) # а — это Rect2(0, 0, 16, 16)
    var b = Rect2(0, 0, 8, 4).grow(2) # b — это Rect2(-2, -2, 12, 8)

 .. code-tab:: csharp

    var a = new Rect2(4, 4, 8, 8).Grow(4); // а — это Rect2(0, 0, 16, 16)
    var b = new Rect2(0, 0, 8, 4).Grow(2); // b — это Rect2(-2, -2, 12, 8)



.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_grow_individual:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **grow_individual**\ (\ left\: :ref:`float<class_float>`, top\: :ref:`float<class_float>`, right\: :ref:`float<class_float>`, bottom\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Rect2_method_grow_individual>`

Возвращает копию этого прямоугольника со сторонами ``left``, ``top``, ``right`` и ``bottom``, расширенными на заданные значения. Отрицательные значения вместо этого сжимают стороны. См. также :ref:`grow()<class_Rect2_method_grow>` и :ref:`grow_side()<class_Rect2_method_grow_side>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_grow_side:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **grow_side**\ (\ side\: :ref:`int<class_int>`, amount\: :ref:`float<class_float>`\ ) |const| :ref:`🔗<class_Rect2_method_grow_side>`

Возвращает копию этого прямоугольника с его ``side``, расширенным на заданное ``amount`` (см. константы :ref:`Side<enum_@GlobalScope_Side>`). Отрицательное ``amount`` вместо этого сжимает прямоугольник. См. также :ref:`grow()<class_Rect2_method_grow>` и :ref:`grow_individual()<class_Rect2_method_grow_individual>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_has_area:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_area**\ (\ ) |const| :ref:`🔗<class_Rect2_method_has_area>`

Возвращает ``true``, если этот прямоугольник имеет положительную ширину и высоту. См. также :ref:`get_area()<class_Rect2_method_get_area>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_has_point:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_point**\ (\ point\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_Rect2_method_has_point>`

Возвращает ``true``, если прямоугольник содержит заданный ``point``. По соглашению, точки на правом и нижнем краях **не** включены.

\ **Примечание:** Этот метод ненадежен для **Rect2** с *отрицательным* :ref:`size<class_Rect2_property_size>`. Сначала используйте :ref:`abs()<class_Rect2_method_abs>`, чтобы получить допустимый прямоугольник.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_intersection:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **intersection**\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_Rect2_method_intersection>`

Возвращает пересечение между этим прямоугольником и ``b``. Если прямоугольники не пересекаются, возвращает пустой **Rect2**.


.. tabs::

 .. code-tab:: gdscript

    var rect1 = Rect2(0, 0, 5, 10)
    var rect2 = Rect2(2, 0, 8, 4)

    var a = rect1.intersection(rect2) #а — это Rect2(2, 0, 3, 4)

 .. code-tab:: csharp

    var rect1 = new Rect2(0, 0, 5, 10);
    var rect2 = new Rect2(2, 0, 8, 4);

    var a = rect1.Intersection(rect2); // а — это Rect2(2, 0, 3, 4)



\ **Примечание:** Если вам нужно только узнать, перекрываются ли два прямоугольника, используйте вместо этого :ref:`intersects()<class_Rect2_method_intersects>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_intersects:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **intersects**\ (\ b\: :ref:`Rect2<class_Rect2>`, include_borders\: :ref:`bool<class_bool>` = false\ ) |const| :ref:`🔗<class_Rect2_method_intersects>`

Возвращает ``true``, если этот прямоугольник перекрывается с прямоугольником ``b``. Края обоих прямоугольников исключаются, если только ``include_borders`` не равен ``true``.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_is_equal_approx:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_equal_approx**\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_Rect2_method_is_equal_approx>`

Возвращает ``true``, если этот прямоугольник и ``rect`` приблизительно равны, вызывая :ref:`Vector2.is_equal_approx()<class_Vector2_method_is_equal_approx>` для :ref:`position<class_Rect2_property_position>` и :ref:`size<class_Rect2_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_is_finite:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_finite**\ (\ ) |const| :ref:`🔗<class_Rect2_method_is_finite>`

Возвращает ``true``, если значения этого прямоугольника конечны, вызывая :ref:`Vector2.is_finite()<class_Vector2_method_is_finite>` для :ref:`position<class_Rect2_property_position>` и :ref:`size<class_Rect2_property_size>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_method_merge:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **merge**\ (\ b\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_Rect2_method_merge>`

Возвращает **Rect2**, который охватывает этот прямоугольник и ``b`` по краям. См. также :ref:`encludes()<class_Rect2_method_encludes>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания оператора
------------------------------------

.. _class_Rect2_operator_neq_Rect2:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Rect2<class_Rect2>`\ ) :ref:`🔗<class_Rect2_operator_neq_Rect2>`

Возвращает ``true``, если :ref:`position<class_Rect2_property_position>` или :ref:`size<class_Rect2_property_size>` обоих прямоугольников не равны.

\ **Примечание:** Из-за ошибок точности с плавающей точкой рассмотрите возможность использования :ref:`is_equal_approx()<class_Rect2_method_is_equal_approx>`, который более надежен.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_operator_mul_Transform2D:

.. rst-class:: classref-operator

:ref:`Rect2<class_Rect2>` **operator ***\ (\ right\: :ref:`Transform2D<class_Transform2D>`\ ) :ref:`🔗<class_Rect2_operator_mul_Transform2D>`

Обратно преобразует (умножает) **Rect2** на заданную матрицу преобразования :ref:`Transform2D<class_Transform2D>`, при условии, что базис преобразования ортонормален (т. е. поворот/отражение хороши, масштабирование/перекос — нет).

\ ``rect * transform`` эквивалентно ``transform.inverse() * rect``. См. :ref:`Transform2D.inverse()<class_Transform2D_method_inverse>`.

Для преобразования с помощью обратного аффинного преобразования (например, с масштабированием) вместо этого можно использовать ``transform.affine_inverse() * rect``. См. :ref:`Transform2D.affine_inverse()<class_Transform2D_method_affine_inverse>`.

.. rst-class:: classref-item-separator

----

.. _class_Rect2_operator_eq_Rect2:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Rect2<class_Rect2>`\ ) :ref:`🔗<class_Rect2_operator_eq_Rect2>`

Возвращает ``true``, если :ref:`position<class_Rect2_property_position>` и :ref:`size<class_Rect2_property_size>` прямоугольников в точности равны соответственно.

\ **Примечание:** Из-за ошибок точности с плавающей точкой рассмотрите возможность использования :ref:`is_equal_approx()<class_Rect2_method_is_equal_approx>`, который более надежен.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
