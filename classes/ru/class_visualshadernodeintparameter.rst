:github_url: hide

.. _class_VisualShaderNodeIntParameter:

VisualShaderNodeIntParameter
============================

**Наследует:** :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Узел визуального шейдера для параметра шейдера (uniform) типа :ref:`int<class_int>`.

.. rst-class:: classref-introduction-group

Описание
----------------

:ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` типа :ref:`int<class_int>`. Предлагает дополнительную настройку для диапазона допустимых значений.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                               | :ref:`default_value<class_VisualShaderNodeIntParameter_property_default_value>`                 | ``0``                   |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`default_value_enabled<class_VisualShaderNodeIntParameter_property_default_value_enabled>` | ``false``               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`   | :ref:`enum_names<class_VisualShaderNodeIntParameter_property_enum_names>`                       | ``PackedStringArray()`` |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` | :ref:`hint<class_VisualShaderNodeIntParameter_property_hint>`                                   | ``0``                   |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                               | :ref:`max<class_VisualShaderNodeIntParameter_property_max>`                                     | ``100``                 |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                               | :ref:`min<class_VisualShaderNodeIntParameter_property_min>`                                     | ``0``                   |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                               | :ref:`step<class_VisualShaderNodeIntParameter_property_step>`                                   | ``1``                   |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Перечисления
------------------------

.. _enum_VisualShaderNodeIntParameter_Hint:

.. rst-class:: classref-enumeration

enum **Hint**: :ref:`🔗<enum_VisualShaderNodeIntParameter_Hint>`

.. _class_VisualShaderNodeIntParameter_constant_HINT_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **HINT_NONE** = ``0``

Параметр не будет ограничивать свое значение.

.. _class_VisualShaderNodeIntParameter_constant_HINT_RANGE:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **HINT_RANGE** = ``1``

Значение параметра должно находиться в указанном диапазоне :ref:`min<class_VisualShaderNodeIntParameter_property_min>`/:ref:`max<class_VisualShaderNodeIntParameter_property_max>`.

.. _class_VisualShaderNodeIntParameter_constant_HINT_RANGE_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **HINT_RANGE_STEP** = ``2``

Значение параметра должно находиться в указанном диапазоне с заданным :ref:`step<class_VisualShaderNodeIntParameter_property_step>` между значениями.

.. _class_VisualShaderNodeIntParameter_constant_HINT_ENUM:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **HINT_ENUM** = ``3``

Параметр использует перечисление для связывания предустановленных значений с именами в редакторе.

.. _class_VisualShaderNodeIntParameter_constant_HINT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **HINT_MAX** = ``4``

Представляет размер перечисления :ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VisualShaderNodeIntParameter_property_default_value:

.. rst-class:: classref-property

:ref:`int<class_int>` **default_value** = ``0`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_default_value>`

.. rst-class:: classref-property-setget

- |void| **set_default_value**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_default_value**\ (\ )

Значение этого параметра по умолчанию, которое будет использоваться, если не задано извне. :ref:`default_value_enabled<class_VisualShaderNodeIntParameter_property_default_value_enabled>` должен быть включен; в противном случае по умолчанию используется ``0``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeIntParameter_property_default_value_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **default_value_enabled** = ``false`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_default_value_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_default_value_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_default_value_enabled**\ (\ )

Если ``истина``, узел будет иметь пользовательское значение по умолчанию.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeIntParameter_property_enum_names:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **enum_names** = ``PackedStringArray()`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_enum_names>`

.. rst-class:: classref-property-setget

- |void| **set_enum_names**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_enum_names**\ (\ )

Имена, используемые для перечисления, выбираются в редакторе. :ref:`hint<class_VisualShaderNodeIntParameter_property_hint>` должна быть :ref:`HINT_ENUM<class_VisualShaderNodeIntParameter_constant_HINT_ENUM>`, чтобы это вступило в силу.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeIntParameter_property_hint:

.. rst-class:: classref-property

:ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **hint** = ``0`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_hint>`

.. rst-class:: classref-property-setget

- |void| **set_hint**\ (\ value\: :ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>`\ )
- :ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **get_hint**\ (\ )

Подсказка диапазона этого узла. Используйте ее для настройки допустимого диапазона параметров.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeIntParameter_property_max:

.. rst-class:: classref-property

:ref:`int<class_int>` **max** = ``100`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_max>`

.. rst-class:: classref-property-setget

- |void| **set_max**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max**\ (\ )

Максимальное значение, которое может принимать этот параметр. :ref:`hint<class_VisualShaderNodeIntParameter_property_hint>` должен быть либо :ref:`HINT_RANGE<class_VisualShaderNodeIntParameter_constant_HINT_RANGE>`, либо :ref:`HINT_RANGE_STEP<class_VisualShaderNodeIntParameter_constant_HINT_RANGE_STEP>`, чтобы это вступило в силу.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeIntParameter_property_min:

.. rst-class:: classref-property

:ref:`int<class_int>` **min** = ``0`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_min>`

.. rst-class:: classref-property-setget

- |void| **set_min**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_min**\ (\ )

Минимальное значение, которое может принимать этот параметр. :ref:`hint<class_VisualShaderNodeIntParameter_property_hint>` должен быть либо :ref:`HINT_RANGE<class_VisualShaderNodeIntParameter_constant_HINT_RANGE>`, либо :ref:`HINT_RANGE_STEP<class_VisualShaderNodeIntParameter_constant_HINT_RANGE_STEP>`, чтобы это вступило в силу.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeIntParameter_property_step:

.. rst-class:: classref-property

:ref:`int<class_int>` **step** = ``1`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_step>`

.. rst-class:: classref-property-setget

- |void| **set_step**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_step**\ (\ )

Шаг между значениями параметра. Заставляет параметр быть кратным заданному значению. :ref:`hint<class_VisualShaderNodeIntParameter_property_hint>` должен быть :ref:`HINT_RANGE_STEP<class_VisualShaderNodeIntParameter_constant_HINT_RANGE_STEP>`, чтобы это вступило в силу.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
