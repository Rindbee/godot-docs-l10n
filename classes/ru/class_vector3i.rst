:github_url: hide

.. _class_Vector3i:

Vector3i
========

Трехмерный вектор, использующий целочисленные координаты.

.. rst-class:: classref-introduction-group

Описание
----------------

Структура из 3 элементов, которая может использоваться для представления координат сетки 3D или любого другого триплета целых чисел.

Она использует целочисленные координаты и поэтому предпочтительнее :ref:`Vector3<class_Vector3>`, когда требуется точная точность. Обратите внимание, что значения ограничены 32 битами, и в отличие от :ref:`Vector3<class_Vector3>` это нельзя настроить с помощью опции сборки движка. Используйте :ref:`int<class_int>` или :ref:`PackedInt64Array<class_PackedInt64Array>`, если требуются 64-битные значения.

\ **Примечание:** В булевом контексте Vector3i будет оцениваться как ``false``, если он равен ``Vector3i(0, 0, 0)``. В противном случае Vector3i всегда будет оцениваться как ``true``.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- :doc:`Каталог математической документации <../tutorials/math/index>`

- :doc:`Векторная математика <../tutorials/math/vector_math>`

- `3Blue1Brown Суть линейной алгебры <https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab>`__

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`x<class_Vector3i_property_x>` | ``0`` |
   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`y<class_Vector3i_property_y>` | ``0`` |
   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`z<class_Vector3i_property_z>` | ``0`` |
   +-----------------------+-------------------------------------+-------+

.. rst-class:: classref-reftable-group

Конструкторы
------------------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`Vector3i<class_Vector3i_constructor_Vector3i>`\ (\ )                                                                                  |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`Vector3i<class_Vector3i_constructor_Vector3i>`\ (\ from\: :ref:`Vector3i<class_Vector3i>`\ )                                          |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`Vector3i<class_Vector3i_constructor_Vector3i>`\ (\ from\: :ref:`Vector3<class_Vector3>`\ )                                            |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`Vector3i<class_Vector3i_constructor_Vector3i>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, z\: :ref:`int<class_int>`\ ) |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`abs<class_Vector3i_method_abs>`\ (\ ) |const|                                                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`clamp<class_Vector3i_method_clamp>`\ (\ min\: :ref:`Vector3i<class_Vector3i>`, max\: :ref:`Vector3i<class_Vector3i>`\ ) |const| |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`clampi<class_Vector3i_method_clampi>`\ (\ min\: :ref:`int<class_int>`, max\: :ref:`int<class_int>`\ ) |const|                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`distance_squared_to<class_Vector3i_method_distance_squared_to>`\ (\ to\: :ref:`Vector3i<class_Vector3i>`\ ) |const|             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`distance_to<class_Vector3i_method_distance_to>`\ (\ to\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`length<class_Vector3i_method_length>`\ (\ ) |const|                                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`length_squared<class_Vector3i_method_length_squared>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`max<class_Vector3i_method_max>`\ (\ with\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`max_axis_index<class_Vector3i_method_max_axis_index>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`maxi<class_Vector3i_method_maxi>`\ (\ with\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`min<class_Vector3i_method_min>`\ (\ with\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`min_axis_index<class_Vector3i_method_min_axis_index>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`mini<class_Vector3i_method_mini>`\ (\ with\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`sign<class_Vector3i_method_sign>`\ (\ ) |const|                                                                                 |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`snapped<class_Vector3i_method_snapped>`\ (\ step\: :ref:`Vector3i<class_Vector3i>`\ ) |const|                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`snappedi<class_Vector3i_method_snappedi>`\ (\ step\: :ref:`int<class_int>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Операторы
------------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator !=<class_Vector3i_operator_neq_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`operator %<class_Vector3i_operator_mod_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`operator %<class_Vector3i_operator_mod_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`operator *<class_Vector3i_operator_mul_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`   | :ref:`operator *<class_Vector3i_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`operator *<class_Vector3i_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`operator +<class_Vector3i_operator_sum_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`operator -<class_Vector3i_operator_dif_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`operator /<class_Vector3i_operator_div_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`   | :ref:`operator /<class_Vector3i_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`operator /<class_Vector3i_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator \<<class_Vector3i_operator_lt_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator \<=<class_Vector3i_operator_lte_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator ==<class_Vector3i_operator_eq_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator ><class_Vector3i_operator_gt_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )    |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator >=<class_Vector3i_operator_gte_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`operator []<class_Vector3i_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                 |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`operator unary+<class_Vector3i_operator_unplus>`\ (\ )                                             |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3i<class_Vector3i>` | :ref:`operator unary-<class_Vector3i_operator_unminus>`\ (\ )                                            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_Vector3i_Axis:

.. rst-class:: classref-enumeration

enum **Axis**: :ref:`🔗<enum_Vector3i_Axis>`

.. _class_Vector3i_constant_AXIS_X:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector3i_Axis>` **AXIS_X** = ``0``

Перечисленное значение для оси X. Возвращается :ref:`max_axis_index()<class_Vector3i_method_max_axis_index>` и :ref:`min_axis_index()<class_Vector3i_method_min_axis_index>`.

.. _class_Vector3i_constant_AXIS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector3i_Axis>` **AXIS_Y** = ``1``

Перечисленное значение для оси Y. Возвращается :ref:`max_axis_index()<class_Vector3i_method_max_axis_index>` и :ref:`min_axis_index()<class_Vector3i_method_min_axis_index>`.

.. _class_Vector3i_constant_AXIS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector3i_Axis>` **AXIS_Z** = ``2``

Перечисленное значение для оси Z. Возвращается :ref:`max_axis_index()<class_Vector3i_method_max_axis_index>` и :ref:`min_axis_index()<class_Vector3i_method_min_axis_index>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константы
------------------

.. _class_Vector3i_constant_ZERO:

.. rst-class:: classref-constant

**ZERO** = ``Vector3i(0, 0, 0)`` :ref:`🔗<class_Vector3i_constant_ZERO>`

Нулевой вектор — вектор у которого все координаты равны ``0``.

.. _class_Vector3i_constant_ONE:

.. rst-class:: classref-constant

**ONE** = ``Vector3i(1, 1, 1)`` :ref:`🔗<class_Vector3i_constant_ONE>`

Вектор-единица — вектор у которого все координаты равны ``1``.

.. _class_Vector3i_constant_MIN:

.. rst-class:: classref-constant

**MIN** = ``Vector3i(-2147483648, -2147483648, -2147483648)`` :ref:`🔗<class_Vector3i_constant_MIN>`

Вектор Min - вектор, все компоненты которого равны ``INT32_MIN``. Может использоваться как отрицательный целочисленный эквивалент :ref:`Vector3.INF<class_Vector3_constant_INF>`.

.. _class_Vector3i_constant_MAX:

.. rst-class:: classref-constant

**MAX** = ``Vector3i(2147483647, 2147483647, 2147483647)`` :ref:`🔗<class_Vector3i_constant_MAX>`

Вектор Max - вектор, все компоненты которого равны ``INT32_MAX``. Может использоваться как целочисленный эквивалент :ref:`Vector3.INF<class_Vector3_constant_INF>`.

.. _class_Vector3i_constant_LEFT:

.. rst-class:: classref-constant

**LEFT** = ``Vector3i(-1, 0, 0)`` :ref:`🔗<class_Vector3i_constant_LEFT>`

Левый единичный вектор. Представляет локальное направление налево и глобальное направление запад.

.. _class_Vector3i_constant_RIGHT:

.. rst-class:: classref-constant

**RIGHT** = ``Vector3i(1, 0, 0)`` :ref:`🔗<class_Vector3i_constant_RIGHT>`

Правый единичный вектор. Представляет локальное направление вправо и глобальное направление на восток.

.. _class_Vector3i_constant_UP:

.. rst-class:: classref-constant

**UP** = ``Vector3i(0, 1, 0)`` :ref:`🔗<class_Vector3i_constant_UP>`

Верхний единичный вектор.

.. _class_Vector3i_constant_DOWN:

.. rst-class:: classref-constant

**DOWN** = ``Vector3i(0, -1, 0)`` :ref:`🔗<class_Vector3i_constant_DOWN>`

Нижний единичный вектор.

.. _class_Vector3i_constant_FORWARD:

.. rst-class:: classref-constant

**FORWARD** = ``Vector3i(0, 0, -1)`` :ref:`🔗<class_Vector3i_constant_FORWARD>`

Прямой единичный вектор. Представляет локальное направление вперед и глобальное направление на север.

.. _class_Vector3i_constant_BACK:

.. rst-class:: classref-constant

**BACK** = ``Vector3i(0, 0, 1)`` :ref:`🔗<class_Vector3i_constant_BACK>`

Вектор единицы назад. Представляет локальное направление назад и глобальное направление юг.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Vector3i_property_x:

.. rst-class:: classref-property

:ref:`int<class_int>` **x** = ``0`` :ref:`🔗<class_Vector3i_property_x>`

X компонент вектора. Может быть доступен через индекс ``[0]``.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_property_y:

.. rst-class:: classref-property

:ref:`int<class_int>` **y** = ``0`` :ref:`🔗<class_Vector3i_property_y>`

Y компонент вектора. Может быть доступен через индекс ``[1]``.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_property_z:

.. rst-class:: classref-property

:ref:`int<class_int>` **z** = ``0`` :ref:`🔗<class_Vector3i_property_z>`

Z компонент вектора. Также может быть доступен по индексу ``[2]``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания конструктора
------------------------------------------

.. _class_Vector3i_constructor_Vector3i:

.. rst-class:: classref-constructor

:ref:`Vector3i<class_Vector3i>` **Vector3i**\ (\ ) :ref:`🔗<class_Vector3i_constructor_Vector3i>`

Создает инициализированный по умолчанию **Vector3i** со всеми компонентами, установленными в ``0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector3i<class_Vector3i>` **Vector3i**\ (\ from\: :ref:`Vector3i<class_Vector3i>`\ )

Создает **Vector3i** как копию заданного **Vector3i**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector3i<class_Vector3i>` **Vector3i**\ (\ from\: :ref:`Vector3<class_Vector3>`\ )

Создает новый **Vector3i** из заданного :ref:`Vector3<class_Vector3>` путем усечения дробных частей компонентов (округление в сторону нуля). Для другого поведения рассмотрите возможность передачи результата :ref:`Vector3.ceil()<class_Vector3_method_ceil>`, :ref:`Vector3.floor()<class_Vector3_method_floor>` или :ref:`Vector3.round()<class_Vector3_method_round>` этому конструктору.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector3i<class_Vector3i>` **Vector3i**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, z\: :ref:`int<class_int>`\ )

Возвращает **Vector3i** с заданными компонентами.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Vector3i_method_abs:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **abs**\ (\ ) |const| :ref:`🔗<class_Vector3i_method_abs>`

Возвращает новый вектор в котором все компоненты будут абсолютными значениями (т.е положительными).

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_clamp:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **clamp**\ (\ min\: :ref:`Vector3i<class_Vector3i>`, max\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_Vector3i_method_clamp>`

Возвращает новый вектор со всеми компонентами, зажатыми между компонентами ``min`` и ``max``, путем запуска :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>` для каждого компонента.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_clampi:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **clampi**\ (\ min\: :ref:`int<class_int>`, max\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector3i_method_clampi>`

Возвращает новый вектор со всеми компонентами, зажатыми между ``min`` и ``max``, путем запуска :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>` для каждого компонента.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_distance_squared_to:

.. rst-class:: classref-method

:ref:`int<class_int>` **distance_squared_to**\ (\ to\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_Vector3i_method_distance_squared_to>`

Возвращает квадрат расстояния между этим вектором и ``to``.

Этот метод работает быстрее, чем :ref:`distance_to()<class_Vector3i_method_distance_to>`, поэтому предпочитайте его, если вам нужно сравнить векторы или вам нужен квадрат расстояния для какой-то формулы.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_distance_to:

.. rst-class:: classref-method

:ref:`float<class_float>` **distance_to**\ (\ to\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_Vector3i_method_distance_to>`

Возвращает расстояние между данным вектором и ``to``.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **length**\ (\ ) |const| :ref:`🔗<class_Vector3i_method_length>`

Возвращает длину (величину) данного вектора.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_length_squared:

.. rst-class:: classref-method

:ref:`int<class_int>` **length_squared**\ (\ ) |const| :ref:`🔗<class_Vector3i_method_length_squared>`

Возвращает длину данного вектора в квадрате.

Этот метод выполняется быстрее, чем :ref:`length()<class_Vector3i_method_length>`, поэтому он предпочтительнее если вам нужно сравнить векторы или нужно расстояние в квадрате для какой-либо формулы.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_max:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **max**\ (\ with\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_Vector3i_method_max>`

Возвращает покомпонентный максимум этого и ``with``, эквивалентно ``Vector3i(maxi(x, with.x), maxi(y, with.y), maxi(z, with.z))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_max_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **max_axis_index**\ (\ ) |const| :ref:`🔗<class_Vector3i_method_max_axis_index>`

Возвращает ось наибольшего значения вектора. См. константы ``AXIS_*``. Если все компоненты равны, этот метод возвращает :ref:`AXIS_X<class_Vector3i_constant_AXIS_X>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_maxi:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **maxi**\ (\ with\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector3i_method_maxi>`

Возвращает покомпонентный максимум этого и ``with``, что эквивалентно ``Vector3i(maxi(x, with), maxi(y, with), maxi(z, with))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_min:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **min**\ (\ with\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_Vector3i_method_min>`

Возвращает покомпонентный минимум этого и ``with``, эквивалентно ``Vector3i(mini(x, with.x), mini(y, with.y), mini(z, with.z))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_min_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **min_axis_index**\ (\ ) |const| :ref:`🔗<class_Vector3i_method_min_axis_index>`

Возвращает ось наименьшего значения вектора. См. константы ``AXIS_*``. Если все компоненты равны, этот метод возвращает :ref:`AXIS_Z<class_Vector3i_constant_AXIS_Z>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_mini:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **mini**\ (\ with\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector3i_method_mini>`

Возвращает покомпонентный минимум этого и ``with``, эквивалентно ``Vector3i(mini(x, with), mini(y, with), mini(z, with))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_sign:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **sign**\ (\ ) |const| :ref:`🔗<class_Vector3i_method_sign>`

Возвращает новый вектор, в котором каждый компонент установлен на ``1``, если он положительный, ``-1``, если он отрицательный, и ``0``, если он равен нулю. Результат идентичен вызову :ref:`@GlobalScope.sign()<class_@GlobalScope_method_sign>` для каждого компонента.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_snapped:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **snapped**\ (\ step\: :ref:`Vector3i<class_Vector3i>`\ ) |const| :ref:`🔗<class_Vector3i_method_snapped>`

Возвращает новый вектор, в котором каждый компонент привязан к ближайшему кратному соответствующего компонента в ``step``.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_method_snappedi:

.. rst-class:: classref-method

:ref:`Vector3i<class_Vector3i>` **snappedi**\ (\ step\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector3i_method_snappedi>`

Возвращает новый вектор, в котором каждый компонент привязан к ближайшему кратному ``step``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания оператора
------------------------------------

.. _class_Vector3i_operator_neq_Vector3i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_neq_Vector3i>`

Возвращает ``true``, если векторы не равны.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_mod_Vector3i:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator %**\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_mod_Vector3i>`

Получает остаток каждого компонента **Vector3i** с компонентами заданного **Vector3i**. Эта операция использует усеченное деление, которое часто нежелательно, так как оно плохо работает с отрицательными числами. Рассмотрите возможность использования :ref:`@GlobalScope.posmod()<class_@GlobalScope_method_posmod>` вместо этого, если вы хотите обрабатывать отрицательные числа.

::

    print(Vector3i(10, -20, 30) % Vector3i(7, 8, 9)) # Prints (3, -4, 3)

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_mod_int:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator %**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector3i_operator_mod_int>`

Получает остаток каждого компонента **Vector3i** с заданным :ref:`int<class_int>`. Эта операция использует усеченное деление, которое часто нежелательно, поскольку оно плохо работает с отрицательными числами. Рассмотрите возможность использования :ref:`@GlobalScope.posmod()<class_@GlobalScope_method_posmod>` вместо этого, если вы хотите обрабатывать отрицательные числа.

::

    print(Vector3i(10, -20, 30) % 7) # Prints (3, -6, 2)

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_mul_Vector3i:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator ***\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_mul_Vector3i>`

Умножает каждый компонент **Vector3i** на компоненты заданного **Vector3i**.

::

    print(Vector3i(10, 20, 30) * Vector3i(3, 4, 5)) # Выводит (30, 80, 150)

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Vector3i_operator_mul_float>`

Умножает каждый компонент **Vector3i** на заданный :ref:`float<class_float>`. Возвращает :ref:`Vector3<class_Vector3>`.

::

    print(Vector3i(10, 15, 20) * 0.9) # Выводит (9.0, 13.5, 18.0)

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector3i_operator_mul_int>`

Умножает каждый компонент **Vector3i** на заданное :ref:`int<class_int>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_sum_Vector3i:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator +**\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_sum_Vector3i>`

Добавляет каждый компонент **Vector3i** к компонентам указанного **Vector3i**.

::

    print(Vector3i(10, 20, 30) + Vector3i(3, 4, 5)) # Prints (13, 24, 35)

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_dif_Vector3i:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator -**\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_dif_Vector3i>`

Вычитает каждый компонент **Vector3i** из компонентов заданного **Vector3i**.

::

    print(Vector3i(10, 20, 30) - Vector3i(3, 4, 5)) # Prints (7, 16, 25)

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_div_Vector3i:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator /**\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_div_Vector3i>`

Делит каждый компонент **Vector3i** на компоненты заданного **Vector3i**.

::

    print(Vector3i(10, 20, 30) / Vector3i(2, 5, 3)) # Prints (5, 4, 10)

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_div_float:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Vector3i_operator_div_float>`

Делит каждый компонент **Vector3i** на заданное :ref:`float<class_float>`. Возвращает :ref:`Vector3<class_Vector3>`.

::

    print(Vector3i(10, 20, 30) / 2.9) # Prints (5.0, 10.0, 15.0)

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_div_int:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector3i_operator_div_int>`

Делит каждый компонент **Vector3i** на заданное :ref:`int<class_int>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_lt_Vector3i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_lt_Vector3i>`

Сравнивает два вектора **Vector3i**, сначала проверяя, меньше ли значение X левого вектора, чем значение X вектора ``right``. Если значения X в точности равны, то он повторяет эту проверку со значениями Y двух векторов, а затем со значениями Z. Этот оператор полезен для сортировки векторов.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_lte_Vector3i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_lte_Vector3i>`

Сравнивает два вектора **Vector3i**, сначала проверяя, меньше ли значение X левого вектора или равно ли ему значение X вектора ``right``. Если значения X в точности равны, то он повторяет эту проверку со значениями Y двух векторов, а затем со значениями Z. Этот оператор полезен для сортировки векторов.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_eq_Vector3i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_eq_Vector3i>`

Возвращает ``true`` если векторы равны.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_gt_Vector3i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_gt_Vector3i>`

Сравнивает два вектора **Vector3i**, сначала проверяя, больше ли значение X левого вектора, чем значение X вектора ``right``. Если значения X в точности равны, то он повторяет эту проверку со значениями Y двух векторов, а затем со значениями Z. Этот оператор полезен для сортировки векторов.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_gte_Vector3i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_Vector3i_operator_gte_Vector3i>`

Сравнивает два вектора **Vector3i**, сначала проверяя, больше ли значение X левого вектора или равно ли ему значение X вектора ``right``. Если значения X в точности равны, то он повторяет эту проверку со значениями Y двух векторов, а затем со значениями Z. Этот оператор полезен для сортировки векторов.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_idx_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector3i_operator_idx_int>`

Доступ к компонентам вектора осуществляется с помощью их ``index``. ``v[0]`` эквивалентно ``v.x``, ``v[1]`` эквивалентно ``v.y``, а ``v[2]`` эквивалентно ``v.z``.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_unplus:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator unary+**\ (\ ) :ref:`🔗<class_Vector3i_operator_unplus>`

Возвращает то же значение, как если бы ``+`` не было. Унарный ``+`` ничего не делает, но иногда он может сделать ваш код более читаемым.

.. rst-class:: classref-item-separator

----

.. _class_Vector3i_operator_unminus:

.. rst-class:: classref-operator

:ref:`Vector3i<class_Vector3i>` **operator unary-**\ (\ ) :ref:`🔗<class_Vector3i_operator_unminus>`

Возвращает отрицательное значение **Vector3i**. Это то же самое, что и запись ``Vector3i(-v.x, -v.y, -v.z)``. Эта операция меняет направление вектора, сохраняя ту же величину.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
