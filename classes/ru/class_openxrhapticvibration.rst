:github_url: hide

.. _class_OpenXRHapticVibration:

OpenXRHapticVibration
=====================

**Наследует:** :ref:`OpenXRHapticBase<class_OpenXRHapticBase>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Вибрационная тактильная обратная связь.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот ресурс тактильной обратной связи позволяет определить импульс тактильной обратной связи на основе вибрации, который может быть запущен с помощью действий на карте действий OpenXR.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------+------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`amplitude<class_OpenXRHapticVibration_property_amplitude>` | ``1.0`` |
   +---------------------------+------------------------------------------------------------------+---------+
   | :ref:`int<class_int>`     | :ref:`duration<class_OpenXRHapticVibration_property_duration>`   | ``-1``  |
   +---------------------------+------------------------------------------------------------------+---------+
   | :ref:`float<class_float>` | :ref:`frequency<class_OpenXRHapticVibration_property_frequency>` | ``0.0`` |
   +---------------------------+------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_OpenXRHapticVibration_property_amplitude:

.. rst-class:: classref-property

:ref:`float<class_float>` **amplitude** = ``1.0`` :ref:`🔗<class_OpenXRHapticVibration_property_amplitude>`

.. rst-class:: classref-property-setget

- |void| **set_amplitude**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_amplitude**\ (\ )

Амплитуда импульса между ``0.0`` и ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRHapticVibration_property_duration:

.. rst-class:: classref-property

:ref:`int<class_int>` **duration** = ``-1`` :ref:`🔗<class_OpenXRHapticVibration_property_duration>`

.. rst-class:: classref-property-setget

- |void| **set_duration**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_duration**\ (\ )

Длительность импульса в наносекундах. Используйте ``-1`` для минимальной длительности импульса для текущего времени выполнения XR.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRHapticVibration_property_frequency:

.. rst-class:: classref-property

:ref:`float<class_float>` **frequency** = ``0.0`` :ref:`🔗<class_OpenXRHapticVibration_property_frequency>`

.. rst-class:: classref-property-setget

- |void| **set_frequency**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_frequency**\ (\ )

Частота импульса в Гц. ``0.0`` позволит среде выполнения XR выбрать оптимальную частоту для используемого устройства.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
