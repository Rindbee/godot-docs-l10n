:github_url: hide

.. _class_VisualShaderNodeFloatParameter:

VisualShaderNodeFloatParameter
==============================

**Наследует:** :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Скалярный параметр с плавающей точкой, который будет использоваться в графе визуального шейдера.

.. rst-class:: classref-introduction-group

Описание
----------------

Переводится как ``uniform float`` на языке шейдеров.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`default_value<class_VisualShaderNodeFloatParameter_property_default_value>`                 | ``0.0``   |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                               | :ref:`default_value_enabled<class_VisualShaderNodeFloatParameter_property_default_value_enabled>` | ``false`` |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` | :ref:`hint<class_VisualShaderNodeFloatParameter_property_hint>`                                   | ``0``     |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`max<class_VisualShaderNodeFloatParameter_property_max>`                                     | ``1.0``   |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`min<class_VisualShaderNodeFloatParameter_property_min>`                                     | ``0.0``   |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                             | :ref:`step<class_VisualShaderNodeFloatParameter_property_step>`                                   | ``0.1``   |
   +-------------------------------------------------------+---------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_VisualShaderNodeFloatParameter_Hint:

.. rst-class:: classref-enumeration

enum **Hint**: :ref:`🔗<enum_VisualShaderNodeFloatParameter_Hint>`

.. _class_VisualShaderNodeFloatParameter_constant_HINT_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` **HINT_NONE** = ``0``

Нет подсказки.

.. _class_VisualShaderNodeFloatParameter_constant_HINT_RANGE:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` **HINT_RANGE** = ``1``

Подсказка диапазона для скалярного значения, которая ограничивает возможные входные значения между :ref:`min<class_VisualShaderNodeFloatParameter_property_min>` и :ref:`max<class_VisualShaderNodeFloatParameter_property_max>`. Переводится как ``hint_range(min, max)`` в коде шейдера.

.. _class_VisualShaderNodeFloatParameter_constant_HINT_RANGE_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` **HINT_RANGE_STEP** = ``2``

Подсказка диапазона для скалярного значения с шагом, которая ограничивает возможные входные значения между :ref:`min<class_VisualShaderNodeFloatParameter_property_min>` и :ref:`max<class_VisualShaderNodeFloatParameter_property_max>` с шагом (приращением) :ref:`step<class_VisualShaderNodeFloatParameter_property_step>`). Переводится как ``hint_range(min, max, step)`` в коде шейдера.

.. _class_VisualShaderNodeFloatParameter_constant_HINT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` **HINT_MAX** = ``3``

Представляет размер перечисления :ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VisualShaderNodeFloatParameter_property_default_value:

.. rst-class:: classref-property

:ref:`float<class_float>` **default_value** = ``0.0`` :ref:`🔗<class_VisualShaderNodeFloatParameter_property_default_value>`

.. rst-class:: classref-property-setget

- |void| **set_default_value**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_default_value**\ (\ )

Значение по умолчанию, назначаемое в шейдере.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFloatParameter_property_default_value_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **default_value_enabled** = ``false`` :ref:`🔗<class_VisualShaderNodeFloatParameter_property_default_value_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_default_value_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_default_value_enabled**\ (\ )

Позволяет использовать :ref:`default_value<class_VisualShaderNodeFloatParameter_property_default_value>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFloatParameter_property_hint:

.. rst-class:: classref-property

:ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` **hint** = ``0`` :ref:`🔗<class_VisualShaderNodeFloatParameter_property_hint>`

.. rst-class:: classref-property-setget

- |void| **set_hint**\ (\ value\: :ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>`\ )
- :ref:`Hint<enum_VisualShaderNodeFloatParameter_Hint>` **get_hint**\ (\ )

Подсказка, применяемая к униформе, которая управляет значениями, которые она может принимать при установке через Инспектор.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFloatParameter_property_max:

.. rst-class:: classref-property

:ref:`float<class_float>` **max** = ``1.0`` :ref:`🔗<class_VisualShaderNodeFloatParameter_property_max>`

.. rst-class:: classref-property-setget

- |void| **set_max**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_max**\ (\ )

Минимальное значение для подсказок диапазона. Используется, если :ref:`hint<class_VisualShaderNodeFloatParameter_property_hint>` установлен на :ref:`HINT_RANGE<class_VisualShaderNodeFloatParameter_constant_HINT_RANGE>` или :ref:`HINT_RANGE_STEP<class_VisualShaderNodeFloatParameter_constant_HINT_RANGE_STEP>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFloatParameter_property_min:

.. rst-class:: classref-property

:ref:`float<class_float>` **min** = ``0.0`` :ref:`🔗<class_VisualShaderNodeFloatParameter_property_min>`

.. rst-class:: classref-property-setget

- |void| **set_min**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min**\ (\ )

Максимальное значение для подсказок диапазона. Используется, если :ref:`hint<class_VisualShaderNodeFloatParameter_property_hint>` установлен на :ref:`HINT_RANGE<class_VisualShaderNodeFloatParameter_constant_HINT_RANGE>` или :ref:`HINT_RANGE_STEP<class_VisualShaderNodeFloatParameter_constant_HINT_RANGE_STEP>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeFloatParameter_property_step:

.. rst-class:: classref-property

:ref:`float<class_float>` **step** = ``0.1`` :ref:`🔗<class_VisualShaderNodeFloatParameter_property_step>`

.. rst-class:: classref-property-setget

- |void| **set_step**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_step**\ (\ )

Значение шага (приращения) для подсказки диапазона с шагом. Используется, если :ref:`hint<class_VisualShaderNodeFloatParameter_property_hint>` установлен в :ref:`HINT_RANGE_STEP<class_VisualShaderNodeFloatParameter_constant_HINT_RANGE_STEP>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
