:github_url: hide

.. _class_VisualShaderNodeColorParameter:

VisualShaderNodeColorParameter
==============================

**Наследует:** :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Параметр :ref:`Color<class_Color>`, который будет использоваться в графе визуального шейдера.

.. rst-class:: classref-introduction-group

Описание
----------------

Переведено в ``uniform vec4`` на языке шейдеров.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>` | :ref:`default_value<class_VisualShaderNodeColorParameter_property_default_value>`                 | ``Color(1, 1, 1, 1)`` |
   +---------------------------+---------------------------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`   | :ref:`default_value_enabled<class_VisualShaderNodeColorParameter_property_default_value_enabled>` | ``false``             |
   +---------------------------+---------------------------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_VisualShaderNodeColorParameter_property_default_value:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **default_value** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_VisualShaderNodeColorParameter_property_default_value>`

.. rst-class:: classref-property-setget

- |void| **set_default_value**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_default_value**\ (\ )

Значение по умолчанию, назначаемое в шейдере.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeColorParameter_property_default_value_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **default_value_enabled** = ``false`` :ref:`🔗<class_VisualShaderNodeColorParameter_property_default_value_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_default_value_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_default_value_enabled**\ (\ )

Позволяет использовать :ref:`default_value<class_VisualShaderNodeColorParameter_property_default_value>`.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
