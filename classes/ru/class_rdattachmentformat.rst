:github_url: hide

.. _class_RDAttachmentFormat:

RDAttachmentFormat
==================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Формат вложения (используется :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Описание
----------------

Этот объект используется :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +------------------------------------------------------------+-------------------------------------------------------------------+--------+
   | :ref:`DataFormat<enum_RenderingDevice_DataFormat>`         | :ref:`format<class_RDAttachmentFormat_property_format>`           | ``36`` |
   +------------------------------------------------------------+-------------------------------------------------------------------+--------+
   | :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` | :ref:`samples<class_RDAttachmentFormat_property_samples>`         | ``0``  |
   +------------------------------------------------------------+-------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`                                      | :ref:`usage_flags<class_RDAttachmentFormat_property_usage_flags>` | ``0``  |
   +------------------------------------------------------------+-------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_RDAttachmentFormat_property_format:

.. rst-class:: classref-property

:ref:`DataFormat<enum_RenderingDevice_DataFormat>` **format** = ``36`` :ref:`🔗<class_RDAttachmentFormat_property_format>`

.. rst-class:: classref-property-setget

- |void| **set_format**\ (\ value\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ )
- :ref:`DataFormat<enum_RenderingDevice_DataFormat>` **get_format**\ (\ )

Формат данных вложения.

.. rst-class:: classref-item-separator

----

.. _class_RDAttachmentFormat_property_samples:

.. rst-class:: classref-property

:ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **samples** = ``0`` :ref:`🔗<class_RDAttachmentFormat_property_samples>`

.. rst-class:: classref-property-setget

- |void| **set_samples**\ (\ value\: :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>`\ )
- :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **get_samples**\ (\ )

Количество образцов, использованных при отборе образцов навесного оборудования.

.. rst-class:: classref-item-separator

----

.. _class_RDAttachmentFormat_property_usage_flags:

.. rst-class:: classref-property

:ref:`int<class_int>` **usage_flags** = ``0`` :ref:`🔗<class_RDAttachmentFormat_property_usage_flags>`

.. rst-class:: classref-property-setget

- |void| **set_usage_flags**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_usage_flags**\ (\ )

Флаги использования вложения, которые определяют, что с ним можно делать.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
