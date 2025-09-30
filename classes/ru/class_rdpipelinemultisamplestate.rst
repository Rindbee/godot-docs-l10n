:github_url: hide

.. _class_RDPipelineMultisampleState:

RDPipelineMultisampleState
==========================

**Наследует:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Состояние мультисэмплирования конвейера (используется :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Описание
----------------

**RDPipelineMultisampleState** используется для управления тем, как выполняется мультисэмпловое или суперсэмпловое сглаживание при рендеринге с использованием :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                    | :ref:`enable_alpha_to_coverage<class_RDPipelineMultisampleState_property_enable_alpha_to_coverage>` | ``false`` |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                    | :ref:`enable_alpha_to_one<class_RDPipelineMultisampleState_property_enable_alpha_to_one>`           | ``false`` |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                    | :ref:`enable_sample_shading<class_RDPipelineMultisampleState_property_enable_sample_shading>`       | ``false`` |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                  | :ref:`min_sample_shading<class_RDPipelineMultisampleState_property_min_sample_shading>`             | ``0.0``   |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` | :ref:`sample_count<class_RDPipelineMultisampleState_property_sample_count>`                         | ``0``     |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Array<class_Array>`\[:ref:`int<class_int>`\]         | :ref:`sample_masks<class_RDPipelineMultisampleState_property_sample_masks>`                         | ``[]``    |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_RDPipelineMultisampleState_property_enable_alpha_to_coverage:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_alpha_to_coverage** = ``false`` :ref:`🔗<class_RDPipelineMultisampleState_property_enable_alpha_to_coverage>`

.. rst-class:: classref-property-setget

- |void| **set_enable_alpha_to_coverage**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_alpha_to_coverage**\ (\ )

Если ``true``, включено альфа-покрытие. Это генерирует временное значение покрытия на основе альфа-компоненты первого цветового вывода фрагмента. Это позволяет альфа-прозрачности использовать многовыборочное сглаживание.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineMultisampleState_property_enable_alpha_to_one:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_alpha_to_one** = ``false`` :ref:`🔗<class_RDPipelineMultisampleState_property_enable_alpha_to_one>`

.. rst-class:: classref-property-setget

- |void| **set_enable_alpha_to_one**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_alpha_to_one**\ (\ )

Если ``true``, альфа принудительно устанавливается на ``0.0`` или ``1.0``. Это позволяет усилить края сглаженных альфа-прозрачностей. Имеет значение только если :ref:`enable_alpha_to_coverage<class_RDPipelineMultisampleState_property_enable_alpha_to_coverage>` имеет значение ``true``.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineMultisampleState_property_enable_sample_shading:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_sample_shading** = ``false`` :ref:`🔗<class_RDPipelineMultisampleState_property_enable_sample_shading>`

.. rst-class:: classref-property-setget

- |void| **set_enable_sample_shading**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_sample_shading**\ (\ )

Если ``true``, включается повыборочное затенение, которое заменяет MSAA на SSAA. Это обеспечивает более качественное сглаживание, которое работает с прозрачными (альфа-ножницы) краями. Это имеет очень высокие затраты производительности. См. также :ref:`min_sample_shading<class_RDPipelineMultisampleState_property_min_sample_shading>`. См. `документацию Vulkan по повыборочному затенению <https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#primsrast-sampleshading>`__ для получения более подробной информации.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineMultisampleState_property_min_sample_shading:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_sample_shading** = ``0.0`` :ref:`🔗<class_RDPipelineMultisampleState_property_min_sample_shading>`

.. rst-class:: classref-property-setget

- |void| **set_min_sample_shading**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_sample_shading**\ (\ )

Множитель для :ref:`sample_count<class_RDPipelineMultisampleState_property_sample_count>`, определяющий количество сэмплов на фрагмент. Должен находиться в диапазоне ``0.0``\ –\ ``1.0`` (включительно). Работает только при значении ``true`` у :ref:`enable_sample_shading<class_RDPipelineMultisampleState_property_enable_sample_shading>`. Если :ref:`min_sample_shading<class_RDPipelineMultisampleState_property_min_sample_shading>` равно ``1.0``, вызов фрагмента должен читать только из сэмпла индекса покрытия. Доступ к тайловому изображению запрещён, если :ref:`enable_sample_shading<class_RDPipelineMultisampleState_property_enable_sample_shading>` *не* равно ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineMultisampleState_property_sample_count:

.. rst-class:: classref-property

:ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **sample_count** = ``0`` :ref:`🔗<class_RDPipelineMultisampleState_property_sample_count>`

.. rst-class:: classref-property-setget

- |void| **set_sample_count**\ (\ value\: :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>`\ )
- :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **get_sample_count**\ (\ )

Количество выборок MSAA (или выборок SSAA, если :ref:`enable_sample_shading<class_RDPipelineMultisampleState_property_enable_sample_shading>` имеет значение ``true``) для выполнения. Более высокие значения приводят к лучшему сглаживанию за счет производительности.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineMultisampleState_property_sample_masks:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`int<class_int>`\] **sample_masks** = ``[]`` :ref:`🔗<class_RDPipelineMultisampleState_property_sample_masks>`

.. rst-class:: classref-property-setget

- |void| **set_sample_masks**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`int<class_int>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`int<class_int>`\] **get_sample_masks**\ (\ )

Массив масок-примеров. Подробности см. в `документации Vulkan по маскам-примерам <https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#fragops-samplemask>`__.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
