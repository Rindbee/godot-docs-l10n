:github_url: hide

.. _class_VisualShaderNodeIs:

VisualShaderNodeIs
==================

**Наследует:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Логический оператор сравнения, который будет использоваться в графе визуального шейдера.

.. rst-class:: classref-introduction-group

Описание
----------------

Возвращает логический результат сравнения между ``INF`` или ``NaN`` и скалярным параметром.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------------------+-------------------------------------------------------------+-------+
   | :ref:`Function<enum_VisualShaderNodeIs_Function>` | :ref:`function<class_VisualShaderNodeIs_property_function>` | ``0`` |
   +---------------------------------------------------+-------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_VisualShaderNodeIs_Function:

.. rst-class:: classref-enumeration

enum **Function**: :ref:`🔗<enum_VisualShaderNodeIs_Function>`

.. _class_VisualShaderNodeIs_constant_FUNC_IS_INF:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIs_Function>` **FUNC_IS_INF** = ``0``

Сравнение с ``INF`` (Бесконечность).

.. _class_VisualShaderNodeIs_constant_FUNC_IS_NAN:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIs_Function>` **FUNC_IS_NAN** = ``1``

Сравнение с ``NaN`` (не число; указывает на недопустимые числовые результаты, такие как деление на ноль).

.. _class_VisualShaderNodeIs_constant_FUNC_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Function<enum_VisualShaderNodeIs_Function>` **FUNC_MAX** = ``2``

Представляет размер перечисления :ref:`Function<enum_VisualShaderNodeIs_Function>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VisualShaderNodeIs_property_function:

.. rst-class:: classref-property

:ref:`Function<enum_VisualShaderNodeIs_Function>` **function** = ``0`` :ref:`🔗<class_VisualShaderNodeIs_property_function>`

.. rst-class:: classref-property-setget

- |void| **set_function**\ (\ value\: :ref:`Function<enum_VisualShaderNodeIs_Function>`\ )
- :ref:`Function<enum_VisualShaderNodeIs_Function>` **get_function**\ (\ )

Функция сравнения.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
