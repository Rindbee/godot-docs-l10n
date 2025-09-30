:github_url: hide

.. _class_RDFramebufferPass:

RDFramebufferPass
=================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Описание прикрепления прохода кадрового буфера (используется :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Описание
----------------

Этот класс содержит список описаний прикреплений для прохода буфера кадра. Каждый указывает с индексом на ранее предоставленный список прикреплений текстур.

Многопроходные буферы кадра могут оптимизировать некоторые конфигурации на мобильных устройствах. На настольных компьютерах они дают мало преимуществ или вообще не дают их.

Этот объект используется :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`color_attachments<class_RDFramebufferPass_property_color_attachments>`       | ``PackedInt32Array()`` |
   +-------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`int<class_int>`                           | :ref:`depth_attachment<class_RDFramebufferPass_property_depth_attachment>`         | ``-1``                 |
   +-------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`input_attachments<class_RDFramebufferPass_property_input_attachments>`       | ``PackedInt32Array()`` |
   +-------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`preserve_attachments<class_RDFramebufferPass_property_preserve_attachments>` | ``PackedInt32Array()`` |
   +-------------------------------------------------+------------------------------------------------------------------------------------+------------------------+
   | :ref:`PackedInt32Array<class_PackedInt32Array>` | :ref:`resolve_attachments<class_RDFramebufferPass_property_resolve_attachments>`   | ``PackedInt32Array()`` |
   +-------------------------------------------------+------------------------------------------------------------------------------------+------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Константы
------------------

.. _class_RDFramebufferPass_constant_ATTACHMENT_UNUSED:

.. rst-class:: classref-constant

**ATTACHMENT_UNUSED** = ``-1`` :ref:`🔗<class_RDFramebufferPass_constant_ATTACHMENT_UNUSED>`

Вложение не используется.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_RDFramebufferPass_property_color_attachments:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **color_attachments** = ``PackedInt32Array()`` :ref:`🔗<class_RDFramebufferPass_property_color_attachments>`

.. rst-class:: classref-property-setget

- |void| **set_color_attachments**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_color_attachments**\ (\ )

Цветовые вложения в порядке, начиная с 0. Если это вложение не используется шейдером, передайте ATTACHMENT_UNUSED для пропуска.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDFramebufferPass_property_depth_attachment:

.. rst-class:: classref-property

:ref:`int<class_int>` **depth_attachment** = ``-1`` :ref:`🔗<class_RDFramebufferPass_property_depth_attachment>`

.. rst-class:: classref-property-setget

- |void| **set_depth_attachment**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_depth_attachment**\ (\ )

Прикрепление глубины. ATTACHMENT_UNUSED следует использовать, если для этого прохода не требуется буфер глубины.

.. rst-class:: classref-item-separator

----

.. _class_RDFramebufferPass_property_input_attachments:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **input_attachments** = ``PackedInt32Array()`` :ref:`🔗<class_RDFramebufferPass_property_input_attachments>`

.. rst-class:: classref-property-setget

- |void| **set_input_attachments**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_input_attachments**\ (\ )

Используется для многопроходных кадровых буферов (более одного прохода рендеринга). Преобразует вложение во входные данные. Убедитесь, что вы также правильно указали его в :ref:`RDUniform<class_RDUniform>` для набора uniform.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDFramebufferPass_property_preserve_attachments:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **preserve_attachments** = ``PackedInt32Array()`` :ref:`🔗<class_RDFramebufferPass_property_preserve_attachments>`

.. rst-class:: classref-property-setget

- |void| **set_preserve_attachments**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_preserve_attachments**\ (\ )

Вложения, которые необходимо сохранить в этом проходе (в противном случае они будут стерты).

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_RDFramebufferPass_property_resolve_attachments:

.. rst-class:: classref-property

:ref:`PackedInt32Array<class_PackedInt32Array>` **resolve_attachments** = ``PackedInt32Array()`` :ref:`🔗<class_RDFramebufferPass_property_resolve_attachments>`

.. rst-class:: classref-property-setget

- |void| **set_resolve_attachments**\ (\ value\: :ref:`PackedInt32Array<class_PackedInt32Array>`\ )
- :ref:`PackedInt32Array<class_PackedInt32Array>` **get_resolve_attachments**\ (\ )

Если цветовые вложения являются мультисэмплированными, могут быть предоставлены немультисэмплированные разрешающие вложения.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedInt32Array<class_PackedInt32Array>` for more details.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
