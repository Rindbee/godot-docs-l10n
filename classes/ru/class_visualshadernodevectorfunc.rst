:github_url: hide

.. _class_VisualShaderNodeVectorFunc:

VisualShaderNodeVectorFunc
==========================

**Наследует:** :ref:`VisualShaderNodeVectorBase<class_VisualShaderNodeVectorBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Векторная функция, используемая в графе визуального шейдера.

.. rst-class:: classref-introduction-group

Описание
----------------

Узел визуального шейдера, способный выполнять различные функции с использованием векторов.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------------+---------------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` | :ref:`function<class_VisualShaderNodeVectorFunc_property_function>` | ``0`` |
   +-----------------------------------------------------------+---------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_VisualShaderNodeVectorFunc_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeVectorFunc_Function>`

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_NORMALIZE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_NORMALIZE** = ``0``

Нормализует вектор так, чтобы он имел длину ``1``, но указывал в том же направлении.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_SATURATE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_SATURATE** = ``1``

Фиксирует значение между ``0.0`` и ``1.0``.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_NEGATE:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_NEGATE** = ``2``

Возвращает значение, противоположное параметру.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_RECIPROCAL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_RECIPROCAL** = ``3``

Возвращает ``1/вектор``.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ABS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ABS** = ``4``

Возвращает абсолютное значение параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ACOS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ACOS** = ``5``

Возвращает арккосинус параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ACOSH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ACOSH** = ``6``

Возвращает обратный гиперболический косинус параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ASIN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ASIN** = ``7``

Возвращает арксинус параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ASINH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ASINH** = ``8``

Возвращает обратный гиперболический синус параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ATAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ATAN** = ``9``

Возвращает арктангенс параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ATANH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ATANH** = ``10``

Возвращает обратный гиперболический тангенс параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_CEIL:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_CEIL** = ``11``

Находит ближайшее целое, которое больше или равно параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_COS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_COS** = ``12``

Возвращает косинус параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_COSH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_COSH** = ``13``

Возвращает гиперболический косинус параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_DEGREES:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_DEGREES** = ``14``

Переводит значение из радиан в градусы.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_EXP:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_EXP** = ``15``

Экспонента с основанием e.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_EXP2:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_EXP2** = ``16``

Экспонента с основанием 2.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_FLOOR:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_FLOOR** = ``17``

Находит ближайшее целое, меньшее или равное аргументу.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_FRACT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_FRACT** = ``18``

Вычисляет дробную часть аргумента.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_INVERSE_SQRT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_INVERSE_SQRT** = ``19``

Возвращает обратный квадратный корень из аргумента.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_LOG:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_LOG** = ``20``

Натуральный логарифм.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_LOG2:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_LOG2** = ``21``

Логарифм по основанию 2.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_RADIANS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_RADIANS** = ``22``

Переводит значение из градусов в радианы.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ROUND:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ROUND** = ``23``

Находит ближайшее к параметру целое число.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ROUNDEVEN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ROUNDEVEN** = ``24``

Находит ближайшее чётное число к параметру.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_SIGN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_SIGN** = ``25``

Извлекает знак параметра, т.е. возвращает ``-1``, если параметр отрицательный, ``1``, если он положительный, и ``0`` в противном случае.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_SIN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_SIN** = ``26``

Возвращает синус параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_SINH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_SINH** = ``27``

Возвращает гиперболический синус параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_SQRT:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_SQRT** = ``28``

Возвращает квадратный корень из параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_TAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_TAN** = ``29``

Возвращает тангенс параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_TANH:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_TANH** = ``30``

Возвращает гиперболический тангенс параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_TRUNC:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_TRUNC** = ``31``

Возвращает значение, равное ближайшему целому числу к параметру, абсолютное значение которого не больше абсолютного значения параметра.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_ONEMINUS:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_ONEMINUS** = ``32``

Возвращает ``1.0 - vector``.

.. _class_VisualShaderNodeVectorFunc_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **FUNC_MAX** = ``33``

Представляет размер перечисления :ref:`Function<enum_VisualShaderNodeVectorFunc_Function>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VisualShaderNodeVectorFunc_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeVectorFunc_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeVectorFunc_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeVectorFunc_Function>` **get_function**\ (\ )

Функция, которая должна быть выполнена.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
