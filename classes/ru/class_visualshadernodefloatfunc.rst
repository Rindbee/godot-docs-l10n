:github_url: hide

.. _class_VisualShaderNodeFloatFunc:

VisualShaderNodeFloatFunc
=========================

**Наследует:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Скалярная функция с плавающей точкой, используемая в графе визуального шейдера.

.. rst-class:: classref-introduction-group

Описание
----------------

Принять скаляр с плавающей точкой (``x``) на входной порт и преобразовать его в соответствии с :ref:`function<class_VisualShaderNodeFloatFunc_property_function>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +----------------------------------------------------------+--------------------------------------------------------------------+--------+
   | :ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` | :ref:`function<class_VisualShaderNodeFloatFunc_property_function>` | ``13`` |
   +----------------------------------------------------------+--------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_VisualShaderNodeFloatFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeFloatFunc_Function>`

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_SIN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_SIN** = ``0``

Возвращает синус параметра. Переводится в ``sin(x)`` на языке шейдеров Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_COS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_COS** = ``1``

Возвращает косинус параметра. Переводится в ``cos(x)`` на языке шейдеров Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_TAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_TAN** = ``2``

Возвращает тангенс параметра. Переводится в ``tan(x)`` на языке шейдеров Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ASIN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ASIN** = ``3``

Возвращает арксинус параметра. Переводится в ``asin(x)`` на языке шейдеров Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ACOS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ACOS** = ``4``

Возвращает арккосинус параметра. Переводится в ``acos(x)`` на языке шейдеров Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ATAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ATAN** = ``5``

Возвращает арктангенс параметра. Переводится в ``atan(x)`` на языке шейдеров Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_SINH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_SINH** = ``6``

Возвращает гиперболический синус параметра. Переводится в ``sinh(x)`` на языке шейдеров Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_COSH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_COSH** = ``7``

Возвращает гиперболический косинус параметра. Переводится в ``cosh(x)`` на языке шейдеров Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_TANH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_TANH** = ``8``

Возвращает гиперболический тангенс параметра. Переводится в ``tanh(x)`` на языке шейдеров Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_LOG:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_LOG** = ``9``

Возвращает натуральный логарифм параметра. Переводится в ``log(x)`` на языке шейдеров Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_EXP:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_EXP** = ``10``

Возвращает натуральное возведение параметра в степень. Переводится в ``exp(x)`` на языке шейдеров Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_SQRT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_SQRT** = ``11``

Возвращает квадратный корень параметра. Переводится в ``sqrt(x)`` на языке шейдеров Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ABS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ABS** = ``12``

Возвращает абсолютное значение параметра. Переводится в ``abs(x)`` на языке шейдеров Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_SIGN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_SIGN** = ``13``

Извлекает знак параметра. Переводится в ``sign(x)`` на языке шейдеров Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_FLOOR:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_FLOOR** = ``14``

Находит ближайшее целое число, меньшее или равное параметру. Переводится в ``floor(x)`` на языке шейдеров Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ROUND:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ROUND** = ``15``

Находит ближайшее целое число к параметру. Переводится в ``round(x)`` на языке шейдеров Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_CEIL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_CEIL** = ``16``

Находит ближайшее целое число, которое больше или равно параметру. Переводится в ``ceil(x)`` на языке шейдеров Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_FRACT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_FRACT** = ``17``

Вычисляет дробную часть аргумента. Переводится в ``fract(x)`` на языке шейдеров Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_SATURATE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_SATURATE** = ``18``

Фиксирует значение между ``0.0`` и ``1.0`` с помощью ``min(max(x, 0.0), 1.0)``.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_NEGATE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_NEGATE** = ``19``

Отменяет ``x`` с помощью ``-(x)``.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ACOSH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ACOSH** = ``20``

Возвращает арк-гиперболический косинус параметра. Переводится в ``acosh(x)`` на языке шейдеров Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ASINH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ASINH** = ``21``

Возвращает арк-гиперболический синус параметра. Переводится в ``asinh(x)`` на языке шейдеров Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ATANH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ATANH** = ``22``

Возвращает арк-гиперболический тангенс параметра. Переводится в ``atanh(x)`` на языке шейдеров Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_DEGREES:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_DEGREES** = ``23``

Преобразовать величину в радианах в градусы. Переводит в ``degrees(x)`` на языке шейдеров Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_EXP2:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_EXP2** = ``24``

Возвращает 2, возведенное в степень параметра. Переводится в ``exp2(x)`` на языке шейдеров Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_INVERSE_SQRT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_INVERSE_SQRT** = ``25``

Возвращает обратный квадратный корень параметра. Переводится в ``inversesqrt(x)`` на языке шейдеров Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_LOG2:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_LOG2** = ``26``

Возвращает логарифм параметра по основанию 2. Переводится в ``log2(x)`` на языке шейдеров Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_RADIANS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_RADIANS** = ``27``

Преобразовать величину в градусах в радианы. Переводит в ``radians(x)`` на языке шейдеров Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_RECIPROCAL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_RECIPROCAL** = ``28``

Находит обратное значение деления 1 на ``x`` (т.е. ``1 / x``).

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ROUNDEVEN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ROUNDEVEN** = ``29``

Находит ближайшее четное целое число к параметру. Переводится в ``roundEven(x)`` на языке шейдеров Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_TRUNC:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_TRUNC** = ``30``

Возвращает значение, равное ближайшему целому числу к ``x``, абсолютное значение которого не больше абсолютного значения ``x``. Переводится в ``trunc(x)`` на языке шейдеров Godot.

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_ONEMINUS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_ONEMINUS** = ``31``

Вычитает скаляр ``x`` из 1 (т. е. ``1 - x``).

.. _class_VisualShaderNodeFloatFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **FUNC_MAX** = ``32``

Представляет размер перечисления :ref:`Function<enum_VisualShaderNodeFloatFunc_Function>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VisualShaderNodeFloatFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **function** = ``13`` :ref:`🔗<class_VisualShaderNodeFloatFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeFloatFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeFloatFunc_Function>` **get_function**\ (\ )

Функция, применяемая к скаляру.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
