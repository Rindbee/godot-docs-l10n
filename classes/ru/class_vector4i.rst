:github_url: hide

.. _class_Vector4i:

Vector4i
========

Четырехмерный вектор, использующий целочисленные координаты.

.. rst-class:: classref-introduction-group

Описание
----------------

Структура из 4 элементов, которая может использоваться для представления координат сетки 4D или любой другой четверки целых чисел.

Она использует целочисленные координаты и поэтому предпочтительнее :ref:`Vector4<class_Vector4>`, когда требуется точная точность. Обратите внимание, что значения ограничены 32 битами, и в отличие от :ref:`Vector4<class_Vector4>` это нельзя настроить с помощью опции сборки движка. Используйте :ref:`int<class_int>` или :ref:`PackedInt64Array<class_PackedInt64Array>`, если требуются 64-битные значения.

\ **Примечание:** В булевом контексте Vector4i будет оцениваться как ``false``, если он равен ``Vector4i(0, 0, 0, 0)``. В противном случае Vector4i всегда будет оцениваться как ``true``.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`w<class_Vector4i_property_w>` | ``0`` |
   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`x<class_Vector4i_property_x>` | ``0`` |
   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`y<class_Vector4i_property_y>` | ``0`` |
   +-----------------------+-------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`z<class_Vector4i_property_z>` | ``0`` |
   +-----------------------+-------------------------------------+-------+

.. rst-class:: classref-reftable-group

Конструкторы
------------------------

.. table::
   :widths: auto

   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`Vector4i<class_Vector4i_constructor_Vector4i>`\ (\ )                                                                                                             |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`Vector4i<class_Vector4i_constructor_Vector4i>`\ (\ from\: :ref:`Vector4i<class_Vector4i>`\ )                                                                     |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`Vector4i<class_Vector4i_constructor_Vector4i>`\ (\ from\: :ref:`Vector4<class_Vector4>`\ )                                                                       |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`Vector4i<class_Vector4i_constructor_Vector4i>`\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, z\: :ref:`int<class_int>`, w\: :ref:`int<class_int>`\ ) |
   +---------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`abs<class_Vector4i_method_abs>`\ (\ ) |const|                                                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`clamp<class_Vector4i_method_clamp>`\ (\ min\: :ref:`Vector4i<class_Vector4i>`, max\: :ref:`Vector4i<class_Vector4i>`\ ) |const| |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`clampi<class_Vector4i_method_clampi>`\ (\ min\: :ref:`int<class_int>`, max\: :ref:`int<class_int>`\ ) |const|                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`distance_squared_to<class_Vector4i_method_distance_squared_to>`\ (\ to\: :ref:`Vector4i<class_Vector4i>`\ ) |const|             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`distance_to<class_Vector4i_method_distance_to>`\ (\ to\: :ref:`Vector4i<class_Vector4i>`\ ) |const|                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`       | :ref:`length<class_Vector4i_method_length>`\ (\ ) |const|                                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`length_squared<class_Vector4i_method_length_squared>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`max<class_Vector4i_method_max>`\ (\ with\: :ref:`Vector4i<class_Vector4i>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`max_axis_index<class_Vector4i_method_max_axis_index>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`maxi<class_Vector4i_method_maxi>`\ (\ with\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`min<class_Vector4i_method_min>`\ (\ with\: :ref:`Vector4i<class_Vector4i>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`min_axis_index<class_Vector4i_method_min_axis_index>`\ (\ ) |const|                                                             |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`mini<class_Vector4i_method_mini>`\ (\ with\: :ref:`int<class_int>`\ ) |const|                                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`sign<class_Vector4i_method_sign>`\ (\ ) |const|                                                                                 |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`snapped<class_Vector4i_method_snapped>`\ (\ step\: :ref:`Vector4i<class_Vector4i>`\ ) |const|                                   |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`snappedi<class_Vector4i_method_snappedi>`\ (\ step\: :ref:`int<class_int>`\ ) |const|                                           |
   +---------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Операторы
------------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator !=<class_Vector4i_operator_neq_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator %<class_Vector4i_operator_mod_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator %<class_Vector4i_operator_mod_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator *<class_Vector4i_operator_mul_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`   | :ref:`operator *<class_Vector4i_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator *<class_Vector4i_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator +<class_Vector4i_operator_sum_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator -<class_Vector4i_operator_dif_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator /<class_Vector4i_operator_div_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`   | :ref:`operator /<class_Vector4i_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator /<class_Vector4i_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator \<<class_Vector4i_operator_lt_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator \<=<class_Vector4i_operator_lte_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator ==<class_Vector4i_operator_eq_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )   |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator ><class_Vector4i_operator_gt_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )    |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`         | :ref:`operator >=<class_Vector4i_operator_gte_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )  |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`           | :ref:`operator []<class_Vector4i_operator_idx_int>`\ (\ index\: :ref:`int<class_int>`\ )                 |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator unary+<class_Vector4i_operator_unplus>`\ (\ )                                             |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4i<class_Vector4i>` | :ref:`operator unary-<class_Vector4i_operator_unminus>`\ (\ )                                            |
   +---------------------------------+----------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_Vector4i_Axis:

.. rst-class:: classref-enumeration

enum **Axis**: :ref:`🔗<enum_Vector4i_Axis>`

.. _class_Vector4i_constant_AXIS_X:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector4i_Axis>` **AXIS_X** = ``0``

Перечисленное значение для оси X. Возвращается :ref:`max_axis_index()<class_Vector4i_method_max_axis_index>` и :ref:`min_axis_index()<class_Vector4i_method_min_axis_index>`.

.. _class_Vector4i_constant_AXIS_Y:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector4i_Axis>` **AXIS_Y** = ``1``

Перечисленное значение для оси Y. Возвращается :ref:`max_axis_index()<class_Vector4i_method_max_axis_index>` и :ref:`min_axis_index()<class_Vector4i_method_min_axis_index>`.

.. _class_Vector4i_constant_AXIS_Z:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector4i_Axis>` **AXIS_Z** = ``2``

Перечисленное значение для оси Z. Возвращается :ref:`max_axis_index()<class_Vector4i_method_max_axis_index>` и :ref:`min_axis_index()<class_Vector4i_method_min_axis_index>`.

.. _class_Vector4i_constant_AXIS_W:

.. rst-class:: classref-enumeration-constant

:ref:`Axis<enum_Vector4i_Axis>` **AXIS_W** = ``3``

Перечисленное значение для оси W. Возвращается :ref:`max_axis_index()<class_Vector4i_method_max_axis_index>` и :ref:`min_axis_index()<class_Vector4i_method_min_axis_index>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константы
------------------

.. _class_Vector4i_constant_ZERO:

.. rst-class:: classref-constant

**ZERO** = ``Vector4i(0, 0, 0, 0)`` :ref:`🔗<class_Vector4i_constant_ZERO>`

Нулевой вектор — вектор у которого все координаты равны ``0``.

.. _class_Vector4i_constant_ONE:

.. rst-class:: classref-constant

**ONE** = ``Vector4i(1, 1, 1, 1)`` :ref:`🔗<class_Vector4i_constant_ONE>`

Вектор-единица — вектор у которого все координаты равны ``1``.

.. _class_Vector4i_constant_MIN:

.. rst-class:: classref-constant

**MIN** = ``Vector4i(-2147483648, -2147483648, -2147483648, -2147483648)`` :ref:`🔗<class_Vector4i_constant_MIN>`

Вектор Min - вектор, все компоненты которого равны ``INT32_MIN``. Может использоваться как отрицательный целочисленный эквивалент :ref:`Vector4.INF<class_Vector4_constant_INF>`.

.. _class_Vector4i_constant_MAX:

.. rst-class:: classref-constant

**MAX** = ``Vector4i(2147483647, 2147483647, 2147483647, 2147483647)`` :ref:`🔗<class_Vector4i_constant_MAX>`

Вектор Max - вектор, все компоненты которого равны ``INT32_MAX``. Может использоваться как целочисленный эквивалент :ref:`Vector4.INF<class_Vector4_constant_INF>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_Vector4i_property_w:

.. rst-class:: classref-property

:ref:`int<class_int>` **w** = ``0`` :ref:`🔗<class_Vector4i_property_w>`

Компонент вектора W. Также доступен с помощью индексной позиции ``[3]``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_property_x:

.. rst-class:: classref-property

:ref:`int<class_int>` **x** = ``0`` :ref:`🔗<class_Vector4i_property_x>`

X компонент вектора. Может быть доступен через индекс ``[0]``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_property_y:

.. rst-class:: classref-property

:ref:`int<class_int>` **y** = ``0`` :ref:`🔗<class_Vector4i_property_y>`

Y компонент вектора. Может быть доступен через индекс ``[1]``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_property_z:

.. rst-class:: classref-property

:ref:`int<class_int>` **z** = ``0`` :ref:`🔗<class_Vector4i_property_z>`

Z компонент вектора. Также может быть доступен по индексу ``[2]``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания конструктора
------------------------------------------

.. _class_Vector4i_constructor_Vector4i:

.. rst-class:: classref-constructor

:ref:`Vector4i<class_Vector4i>` **Vector4i**\ (\ ) :ref:`🔗<class_Vector4i_constructor_Vector4i>`

Создает инициализированный по умолчанию **Vector4i** со всеми компонентами, установленными в ``0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector4i<class_Vector4i>` **Vector4i**\ (\ from\: :ref:`Vector4i<class_Vector4i>`\ )

Создает **Vector4i** как копию заданного **Vector4i**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector4i<class_Vector4i>` **Vector4i**\ (\ from\: :ref:`Vector4<class_Vector4>`\ )

Создает новый **Vector4i** из заданного :ref:`Vector4<class_Vector4>` путем усечения дробных частей компонентов (округление в сторону нуля). Для другого поведения рассмотрите возможность передачи результата :ref:`Vector4.ceil()<class_Vector4_method_ceil>`, :ref:`Vector4.floor()<class_Vector4_method_floor>` или :ref:`Vector4.round()<class_Vector4_method_round>` этому конструктору.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`Vector4i<class_Vector4i>` **Vector4i**\ (\ x\: :ref:`int<class_int>`, y\: :ref:`int<class_int>`, z\: :ref:`int<class_int>`, w\: :ref:`int<class_int>`\ )

Возвращает **Vector4i** с заданными компонентами.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_Vector4i_method_abs:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **abs**\ (\ ) |const| :ref:`🔗<class_Vector4i_method_abs>`

Возвращает новый вектор в котором все компоненты будут абсолютными значениями (т.е положительными).

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_clamp:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **clamp**\ (\ min\: :ref:`Vector4i<class_Vector4i>`, max\: :ref:`Vector4i<class_Vector4i>`\ ) |const| :ref:`🔗<class_Vector4i_method_clamp>`

Возвращает новый вектор со всеми компонентами, зажатыми между компонентами ``min`` и ``max``, путем запуска :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>` для каждого компонента.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_clampi:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **clampi**\ (\ min\: :ref:`int<class_int>`, max\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector4i_method_clampi>`

Возвращает новый вектор со всеми компонентами, зажатыми между ``min`` и ``max``, путем запуска :ref:`@GlobalScope.clamp()<class_@GlobalScope_method_clamp>` для каждого компонента.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_distance_squared_to:

.. rst-class:: classref-method

:ref:`int<class_int>` **distance_squared_to**\ (\ to\: :ref:`Vector4i<class_Vector4i>`\ ) |const| :ref:`🔗<class_Vector4i_method_distance_squared_to>`

Возвращает квадрат расстояния между этим вектором и ``to``.

Этот метод работает быстрее, чем :ref:`distance_to()<class_Vector4i_method_distance_to>`, поэтому предпочитайте его, если вам нужно сравнить векторы или вам нужен квадрат расстояния для какой-то формулы.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_distance_to:

.. rst-class:: classref-method

:ref:`float<class_float>` **distance_to**\ (\ to\: :ref:`Vector4i<class_Vector4i>`\ ) |const| :ref:`🔗<class_Vector4i_method_distance_to>`

Возвращает расстояние между данным вектором и ``to``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_length:

.. rst-class:: classref-method

:ref:`float<class_float>` **length**\ (\ ) |const| :ref:`🔗<class_Vector4i_method_length>`

Возвращает длину (величину) данного вектора.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_length_squared:

.. rst-class:: classref-method

:ref:`int<class_int>` **length_squared**\ (\ ) |const| :ref:`🔗<class_Vector4i_method_length_squared>`

Возвращает длину данного вектора в квадрате.

Этот метод выполняется быстрее, чем :ref:`length()<class_Vector4i_method_length>`, поэтому он предпочтительнее если вам нужно сравнить векторы или нужно расстояние в квадрате для какой-либо формулы.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_max:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **max**\ (\ with\: :ref:`Vector4i<class_Vector4i>`\ ) |const| :ref:`🔗<class_Vector4i_method_max>`

Возвращает покомпонентный максимум этого и ``with``, что эквивалентно ``Vector4i(maxi(x, with.x), maxi(y, with.y), maxi(z, with.z), maxi(w, with.w))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_max_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **max_axis_index**\ (\ ) |const| :ref:`🔗<class_Vector4i_method_max_axis_index>`

Возвращает ось наибольшего значения вектора. См. константы ``AXIS_*``. Если все компоненты равны, этот метод возвращает :ref:`AXIS_X<class_Vector4i_constant_AXIS_X>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_maxi:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **maxi**\ (\ with\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector4i_method_maxi>`

Возвращает покомпонентный максимум этого и ``with``, что эквивалентно ``Vector4i(maxi(x, with), maxi(y, with), maxi(z, with), maxi(w, with))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_min:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **min**\ (\ with\: :ref:`Vector4i<class_Vector4i>`\ ) |const| :ref:`🔗<class_Vector4i_method_min>`

Возвращает покомпонентный минимум этого и ``with``, эквивалентно ``Vector4i(mini(x, with.x), mini(y, with.y), mini(z, with.z), mini(w, with.w))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_min_axis_index:

.. rst-class:: classref-method

:ref:`int<class_int>` **min_axis_index**\ (\ ) |const| :ref:`🔗<class_Vector4i_method_min_axis_index>`

Возвращает ось наименьшего значения вектора. См. константы ``AXIS_*``. Если все компоненты равны, этот метод возвращает :ref:`AXIS_W<class_Vector4i_constant_AXIS_W>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_mini:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **mini**\ (\ with\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector4i_method_mini>`

Возвращает покомпонентный минимум этого и ``with``, эквивалентный ``Vector4i(mini(x, with), mini(y, with), mini(z, with), mini(w, with))``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_sign:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **sign**\ (\ ) |const| :ref:`🔗<class_Vector4i_method_sign>`

Возвращает новый вектор, в котором каждый компонент установлен на ``1``, если он положительный, ``-1``, если он отрицательный, и ``0``, если он равен нулю. Результат идентичен вызову :ref:`@GlobalScope.sign()<class_@GlobalScope_method_sign>` для каждого компонента.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_snapped:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **snapped**\ (\ step\: :ref:`Vector4i<class_Vector4i>`\ ) |const| :ref:`🔗<class_Vector4i_method_snapped>`

Возвращает новый вектор, в котором каждый компонент привязан к ближайшему кратному соответствующего компонента в ``step``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_method_snappedi:

.. rst-class:: classref-method

:ref:`Vector4i<class_Vector4i>` **snappedi**\ (\ step\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_Vector4i_method_snappedi>`

Возвращает новый вектор, в котором каждый компонент привязан к ближайшему кратному ``step``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания оператора
------------------------------------

.. _class_Vector4i_operator_neq_Vector4i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_neq_Vector4i>`

Возвращает ``true``, если векторы не равны.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_mod_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator %**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_mod_Vector4i>`

Получает остаток каждого компонента **Vector4i** с компонентами заданного **Vector4i**. Эта операция использует усеченное деление, которое часто нежелательно, поскольку оно плохо работает с отрицательными числами. Рассмотрите возможность использования :ref:`@GlobalScope.posmod()<class_@GlobalScope_method_posmod>` вместо этого, если вы хотите обрабатывать отрицательные числа.

::

    print(Vector4i(10, -20, 30, -40) % Vector4i(7, 8, 9, 10)) # Prints (3, -4, 3, 0)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_mod_int:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator %**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector4i_operator_mod_int>`

Получает остаток каждого компонента **Vector4i** с заданным :ref:`int<class_int>`. Эта операция использует усеченное деление, которое часто нежелательно, поскольку оно плохо работает с отрицательными числами. Рассмотрите возможность использования :ref:`@GlobalScope.posmod()<class_@GlobalScope_method_posmod>` вместо этого, если вы хотите обрабатывать отрицательные числа.

::

    print(Vector4i(10, -20, 30, -40) % 7) # Prints (3, -6, 2, -5)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_mul_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator ***\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_mul_Vector4i>`

Умножает каждый компонент **Vector4i** на компоненты заданного **Vector4i**.

::

    print(Vector4i(10, 20, 30, 40) * Vector4i(3, 4, 5, 6)) # Prints (30, 80, 150, 240)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_mul_float:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Vector4i_operator_mul_float>`

Умножает каждый компонент **Vector4i** на заданный :ref:`float<class_float>`.

Возвращает значение Vector4 из-за операций с плавающей точкой.

::

    print(Vector4i(10, 20, 30, 40) * 2) # Prints (20.0, 40.0, 60.0, 80.0)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_mul_int:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector4i_operator_mul_int>`

Умножает каждый компонент **Vector4i** на заданное :ref:`int<class_int>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_sum_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator +**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_sum_Vector4i>`

Добавляет каждый компонент **Vector4i** к компонентам указанного **Vector4i**.

::

    print(Vector4i(10, 20, 30, 40) + Vector4i(3, 4, 5, 6)) # Prints (13, 24, 35, 46)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_dif_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator -**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_dif_Vector4i>`

Вычитает каждый компонент **Vector4i** из компонентов заданного **Vector4i**.

::

    print(Vector4i(10, 20, 30, 40) - Vector4i(3, 4, 5, 6)) # Prints (7, 16, 25, 34)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_div_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator /**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_div_Vector4i>`

Делит каждый компонент **Vector4i** на компоненты заданного **Vector4i**.

::

    print(Vector4i(10, 20, 30, 40) / Vector4i(2, 5, 3, 4)) # Prints (5, 4, 10, 10)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_div_float:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_Vector4i_operator_div_float>`

Делит каждый компонент **Vector4i** на заданный :ref:`float<class_float>`.

Возвращает значение Vector4 из-за операций с плавающей точкой.

::

    print(Vector4i(10, 20, 30, 40) / 2) # Prints (5.0, 10.0, 15.0, 20.0)

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_div_int:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector4i_operator_div_int>`

Делит каждый компонент **Vector4i** на заданное :ref:`int<class_int>`.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_lt_Vector4i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_lt_Vector4i>`

Сравнивает два вектора **Vector4i**, сначала проверяя, меньше ли значение X левого вектора, чем значение X вектора ``right``. Если значения X в точности равны, то он повторяет эту проверку со значениями Y двух векторов, значениями Z двух векторов, а затем со значениями W. Этот оператор полезен для сортировки векторов.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_lte_Vector4i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_lte_Vector4i>`

Сравнивает два вектора **Vector4i**, сначала проверяя, меньше ли значение X левого вектора или равно ли ему значение X вектора ``right``. Если значения X в точности равны, то он повторяет эту проверку со значениями Y двух векторов, значениями Z двух векторов, а затем со значениями W. Этот оператор полезен для сортировки векторов.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_eq_Vector4i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_eq_Vector4i>`

Возвращает ``true``, если векторы точно равны.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_gt_Vector4i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_gt_Vector4i>`

Сравнивает два вектора **Vector4i**, сначала проверяя, больше ли значение X левого вектора, чем значение X вектора ``right``. Если значения X в точности равны, то он повторяет эту проверку со значениями Y двух векторов, значениями Z двух векторов, а затем со значениями W. Этот оператор полезен для сортировки векторов.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_gte_Vector4i:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_Vector4i_operator_gte_Vector4i>`

Сравнивает два вектора **Vector4i**, сначала проверяя, больше ли значение X левого вектора или равно ли ему значение X вектора ``right``. Если значения X в точности равны, то он повторяет эту проверку со значениями Y двух векторов, значениями Z двух векторов, а затем со значениями W. Этот оператор полезен для сортировки векторов.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_idx_int:

.. rst-class:: classref-operator

:ref:`int<class_int>` **operator []**\ (\ index\: :ref:`int<class_int>`\ ) :ref:`🔗<class_Vector4i_operator_idx_int>`

Доступ к компонентам вектора осуществляется с помощью их ``index``. ``v[0]`` эквивалентно ``v.x``, ``v[1]`` эквивалентно ``v.y``, ``v[2]`` эквивалентно ``v.z``, а ``v[3]`` эквивалентно ``v.w``.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_unplus:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator unary+**\ (\ ) :ref:`🔗<class_Vector4i_operator_unplus>`

Возвращает то же значение, как если бы ``+`` не было. Унарный ``+`` ничего не делает, но иногда он может сделать ваш код более читаемым.

.. rst-class:: classref-item-separator

----

.. _class_Vector4i_operator_unminus:

.. rst-class:: classref-operator

:ref:`Vector4i<class_Vector4i>` **operator unary-**\ (\ ) :ref:`🔗<class_Vector4i_operator_unminus>`

Возвращает отрицательное значение **Vector4i**. Это то же самое, что и запись ``Vector4i(-v.x, -v.y, -v.z, -v.w)``. Эта операция меняет направление вектора, сохраняя ту же величину.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
