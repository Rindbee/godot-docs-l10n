:github_url: hide

.. _class_float:

float
=====

Встроенный тип для чисел с плавающей точкой.

.. rst-class:: classref-introduction-group

Описание
----------------

Встроенный тип **float** — это 64-битное число с плавающей точкой двойной точности, эквивалентное ``double`` в C++. Этот тип имеет 14 надежных десятичных знаков точности. Максимальное значение **float** составляет приблизительно ``1.79769e308``, а минимальное — приблизительно ``-1.79769e308``.

Многие методы и свойства в движке используют вместо этого 32-битные числа с плавающей точкой одинарной точности, эквивалентные ``float`` в C++, которые имеют 6 надежных десятичных знаков точности. Для структур данных, таких как :ref:`Vector2<class_Vector2>` и :ref:`Vector3<class_Vector3>`, Godot по умолчанию использует 32-битные числа с плавающей точкой, но их можно изменить на использование 64-битных чисел двойной точности, если Godot скомпилирован с опцией ``precision=double``.

Математические вычисления, выполненные с использованием типа **float**, не гарантируют точности и часто приводят к небольшим ошибкам. Обычно следует использовать методы :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>` и :ref:`@GlobalScope.is_zero_approx()<class_@GlobalScope_method_is_zero_approx>` вместо ``==`` для сравнения значений **float** на равенство.

.. rst-class:: classref-introduction-group

Обучающие материалы
--------------------------------------

- `Википедия: Формат чисел с плавающей точкой двойной точности <https://en.wikipedia.org/wiki/Double-precision_floating-point_format>`__

- `Википедия: Формат чисел с плавающей точкой одинарной точности <https://en.wikipedia.org/wiki/Single-precision_floating-point_format>`__

.. rst-class:: classref-reftable-group

Конструкторы
------------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`float<class_float_constructor_float>`\ (\ )                                     |
   +---------------------------+---------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`float<class_float_constructor_float>`\ (\ from\: :ref:`float<class_float>`\ )   |
   +---------------------------+---------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`float<class_float_constructor_float>`\ (\ from\: :ref:`String<class_String>`\ ) |
   +---------------------------+---------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`float<class_float_constructor_float>`\ (\ from\: :ref:`bool<class_bool>`\ )     |
   +---------------------------+---------------------------------------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`float<class_float_constructor_float>`\ (\ from\: :ref:`int<class_int>`\ )       |
   +---------------------------+---------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Операторы
------------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator !=<class_float_operator_neq_float>`\ (\ right\: :ref:`float<class_float>`\ )               |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator !=<class_float_operator_neq_int>`\ (\ right\: :ref:`int<class_int>`\ )                     |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`Color<class_Color>`           | :ref:`operator *<class_float_operator_mul_Color>`\ (\ right\: :ref:`Color<class_Color>`\ )                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`operator *<class_float_operator_mul_Quaternion>`\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`operator *<class_float_operator_mul_Vector2>`\ (\ right\: :ref:`Vector2<class_Vector2>`\ )          |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`operator *<class_float_operator_mul_Vector2i>`\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ )       |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`operator *<class_float_operator_mul_Vector3>`\ (\ right\: :ref:`Vector3<class_Vector3>`\ )          |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector3<class_Vector3>`       | :ref:`operator *<class_float_operator_mul_Vector3i>`\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ )       |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`       | :ref:`operator *<class_float_operator_mul_Vector4>`\ (\ right\: :ref:`Vector4<class_Vector4>`\ )          |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`Vector4<class_Vector4>`       | :ref:`operator *<class_float_operator_mul_Vector4i>`\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ )       |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator *<class_float_operator_mul_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator *<class_float_operator_mul_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator **<class_float_operator_pow_float>`\ (\ right\: :ref:`float<class_float>`\ )               |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator **<class_float_operator_pow_int>`\ (\ right\: :ref:`int<class_int>`\ )                     |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator +<class_float_operator_sum_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator +<class_float_operator_sum_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator -<class_float_operator_dif_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator -<class_float_operator_dif_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator /<class_float_operator_div_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator /<class_float_operator_div_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator \<<class_float_operator_lt_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator \<<class_float_operator_lt_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator \<=<class_float_operator_lte_float>`\ (\ right\: :ref:`float<class_float>`\ )              |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator \<=<class_float_operator_lte_int>`\ (\ right\: :ref:`int<class_int>`\ )                    |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ==<class_float_operator_eq_float>`\ (\ right\: :ref:`float<class_float>`\ )                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ==<class_float_operator_eq_int>`\ (\ right\: :ref:`int<class_int>`\ )                      |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ><class_float_operator_gt_float>`\ (\ right\: :ref:`float<class_float>`\ )                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator ><class_float_operator_gt_int>`\ (\ right\: :ref:`int<class_int>`\ )                       |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator >=<class_float_operator_gte_float>`\ (\ right\: :ref:`float<class_float>`\ )               |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`operator >=<class_float_operator_gte_int>`\ (\ right\: :ref:`int<class_int>`\ )                     |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator unary+<class_float_operator_unplus>`\ (\ )                                                 |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`operator unary-<class_float_operator_unminus>`\ (\ )                                                |
   +-------------------------------------+-----------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания конструктора
------------------------------------------

.. _class_float_constructor_float:

.. rst-class:: classref-constructor

:ref:`float<class_float>` **float**\ (\ ) :ref:`🔗<class_float_constructor_float>`

Создает инициализированное по умолчанию **float**, установленное на ``0.0``.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`float<class_float>` **float**\ (\ from\: :ref:`float<class_float>`\ )

Создает **float** как копию заданного **float**.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`float<class_float>` **float**\ (\ from\: :ref:`String<class_String>`\ )

Преобразует :ref:`String<class_String>` в **float**, следуя тем же правилам, что и :ref:`String.to_float()<class_String_method_to_float>`.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`float<class_float>` **float**\ (\ from\: :ref:`bool<class_bool>`\ )

Приведите значение :ref:`bool<class_bool>` к значению с плавающей точкой, ``float(true)`` будет равно 1,0, а ``float(false)`` будет равно 0,0.

.. rst-class:: classref-item-separator

----

.. rst-class:: classref-constructor

:ref:`float<class_float>` **float**\ (\ from\: :ref:`int<class_int>`\ )

Приведите значение :ref:`int<class_int>` к значению с плавающей точкой, ``float(1)`` будет равно ``1.0``.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания оператора
------------------------------------

.. _class_float_operator_neq_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_neq_float>`

Возвращает ``true``, если два числа с плавающей точкой отличаются друг от друга.

\ **Примечание:** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` ведет себя не так, как другие числа. Поэтому результаты этого оператора могут быть неточными, если включены NaN.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_neq_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator !=**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_neq_int>`

Возвращает ``true``, если целое число имеет значение, отличное от плавающего.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_mul_Color:

.. rst-class:: classref-operator

:ref:`Color<class_Color>` **operator ***\ (\ right\: :ref:`Color<class_Color>`\ ) :ref:`🔗<class_float_operator_mul_Color>`

Умножает каждый компонент :ref:`Color<class_Color>`, включая альфа, на заданный **float**.

::

    print(1.5 * Color(0.5, 0.5, 0.5)) # Prints (0.75, 0.75, 0.75, 1.5)

.. rst-class:: classref-item-separator

----

.. _class_float_operator_mul_Quaternion:

.. rst-class:: classref-operator

:ref:`Quaternion<class_Quaternion>` **operator ***\ (\ right\: :ref:`Quaternion<class_Quaternion>`\ ) :ref:`🔗<class_float_operator_mul_Quaternion>`

Умножает каждый компонент :ref:`Quaternion<class_Quaternion>` на заданный **float**. Эта операция сама по себе не имеет смысла, но ее можно использовать как часть большего выражения.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_mul_Vector2:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator ***\ (\ right\: :ref:`Vector2<class_Vector2>`\ ) :ref:`🔗<class_float_operator_mul_Vector2>`

Умножает каждый компонент :ref:`Vector2<class_Vector2>` на заданный **float**.

::

    print(2.5 * Vector2(1, 3)) # Prints (2.5, 7.5)

.. rst-class:: classref-item-separator

----

.. _class_float_operator_mul_Vector2i:

.. rst-class:: classref-operator

:ref:`Vector2<class_Vector2>` **operator ***\ (\ right\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_float_operator_mul_Vector2i>`

Умножает каждый компонент :ref:`Vector2i<class_Vector2i>` на заданный **float**. Возвращает :ref:`Vector2<class_Vector2>`.

::

    print(0.9 * Vector2i(10, 15)) # Prints (9.0, 13.5)

.. rst-class:: classref-item-separator

----

.. _class_float_operator_mul_Vector3:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`Vector3<class_Vector3>`\ ) :ref:`🔗<class_float_operator_mul_Vector3>`

Умножает каждый компонент :ref:`Vector3<class_Vector3>` на заданное **float**.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_mul_Vector3i:

.. rst-class:: classref-operator

:ref:`Vector3<class_Vector3>` **operator ***\ (\ right\: :ref:`Vector3i<class_Vector3i>`\ ) :ref:`🔗<class_float_operator_mul_Vector3i>`

Умножает каждый компонент :ref:`Vector3i<class_Vector3i>` на заданный **float**. Возвращает :ref:`Vector3<class_Vector3>`.

::

    print(0.9 * Vector3i(10, 15, 20)) # Prints (9.0, 13.5, 18.0)

.. rst-class:: classref-item-separator

----

.. _class_float_operator_mul_Vector4:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator ***\ (\ right\: :ref:`Vector4<class_Vector4>`\ ) :ref:`🔗<class_float_operator_mul_Vector4>`

Умножает каждый компонент :ref:`Vector4<class_Vector4>` на заданное **float**.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_mul_Vector4i:

.. rst-class:: classref-operator

:ref:`Vector4<class_Vector4>` **operator ***\ (\ right\: :ref:`Vector4i<class_Vector4i>`\ ) :ref:`🔗<class_float_operator_mul_Vector4i>`

Умножает каждый компонент :ref:`Vector4i<class_Vector4i>` на заданный **float**. Возвращает :ref:`Vector4<class_Vector4>`.

::

    print(0.9 * Vector4i(10, 15, 20, -10)) # Prints (9.0, 13.5, 18.0, -9.0)

.. rst-class:: classref-item-separator

----

.. _class_float_operator_mul_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator ***\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_mul_float>`

Умножает два числа **float**.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_mul_int:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator ***\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_mul_int>`

Умножает **float** и :ref:`int<class_int>`. Результат — **float**.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_pow_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator ****\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_pow_float>`

Возводит **float** в степень **float**.

::

    print(39.0625**0.25) # 2.5

.. rst-class:: classref-item-separator

----

.. _class_float_operator_pow_int:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator ****\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_pow_int>`

Возводит **float** в степень :ref:`int<class_int>`. Результат — **float**.

::

    print(0.9**3) # 0.729

.. rst-class:: classref-item-separator

----

.. _class_float_operator_sum_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator +**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_sum_float>`

Складывает два float'а.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_sum_int:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator +**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_sum_int>`

Складывает **float** и :ref:`int<class_int>`. Результат — **float**.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_dif_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator -**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_dif_float>`

Вычитает число с плавающей точкой из числа с плавающей точкой.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_dif_int:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator -**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_dif_int>`

Вычитает :ref:`int<class_int>` из **float**. Результат — **float**.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_div_float:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator /**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_div_float>`

Делит два числа с плавающей точкой.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_div_int:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator /**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_div_int>`

Делит **float** на :ref:`int<class_int>`. Результат — **float**.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_lt_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_lt_float>`

Возвращает ``true``, если левое число с плавающей точкой меньше правого.

\ **Примечание:** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` ведет себя не так, как другие числа. Поэтому результаты этого оператора могут быть неточными, если включены NaN.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_lt_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_lt_int>`

Возвращает ``true``, если это **float** меньше указанного :ref:`int<class_int>`.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_lte_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_lte_float>`

Возвращает ``true``, если левое число с плавающей точкой меньше или равно правому.

\ **Примечание:** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` ведет себя не так, как другие числа. Поэтому результаты этого оператора могут быть неточными, если включены NaN.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_lte_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator <=**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_lte_int>`

Возвращает ``true``, если это **float** меньше или равно заданному :ref:`int<class_int>`.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_eq_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_eq_float>`

Возвращает ``true``, если оба числа с плавающей точкой в точности равны.

\ **Примечание:** Из-за ошибок точности чисел с плавающей точкой рассмотрите возможность использования :ref:`@GlobalScope.is_equal_approx()<class_@GlobalScope_method_is_equal_approx>` или :ref:`@GlobalScope.is_zero_approx()<class_@GlobalScope_method_is_zero_approx>` вместо этого, которые более надежны.

\ **Примечание:** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` ведет себя не так, как другие числа. Поэтому результаты этого оператора могут быть неточными, если включены NaN.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_eq_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator ==**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_eq_int>`

Возвращает ``true``, если **float** и заданное :ref:`int<class_int>` равны.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_gt_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_gt_float>`

Возвращает ``true``, если левое число с плавающей точкой больше правого.

\ **Примечание:** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` ведет себя не так, как другие числа. Поэтому результаты этого оператора могут быть неточными, если включены NaN.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_gt_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_gt_int>`

Возвращает ``true``, если это **float** больше указанного :ref:`int<class_int>`.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_gte_float:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`float<class_float>`\ ) :ref:`🔗<class_float_operator_gte_float>`

Возвращает ``true``, если левое число с плавающей точкой больше или равно правому.

\ **Примечание:** :ref:`@GDScript.NAN<class_@GDScript_constant_NAN>` ведет себя не так, как другие числа. Поэтому результаты этого оператора могут быть неточными, если включены NaN.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_gte_int:

.. rst-class:: classref-operator

:ref:`bool<class_bool>` **operator >=**\ (\ right\: :ref:`int<class_int>`\ ) :ref:`🔗<class_float_operator_gte_int>`

Возвращает ``true``, если это **float** больше или равно заданному :ref:`int<class_int>`.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_unplus:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator unary+**\ (\ ) :ref:`🔗<class_float_operator_unplus>`

Возвращает то же значение, как если бы ``+`` не было. Унарный ``+`` ничего не делает, но иногда он может сделать ваш код более читаемым.

.. rst-class:: classref-item-separator

----

.. _class_float_operator_unminus:

.. rst-class:: classref-operator

:ref:`float<class_float>` **operator unary-**\ (\ ) :ref:`🔗<class_float_operator_unminus>`

Возвращает отрицательное значение **float**. Если положительное, делает число отрицательным. Если отрицательное, делает число положительным. С float число ноль может быть как положительным, так и отрицательным.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
