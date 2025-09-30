:github_url: hide

.. _class_OpenXRCompositionLayerCylinder:

OpenXRCompositionLayerCylinder
==============================

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`OpenXRCompositionLayer<class_OpenXRCompositionLayer>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Слой композиции OpenXR, который визуализируется как внутренний срез цилиндра.

.. rst-class:: classref-introduction-group

Описание
----------------

Слой композиции OpenXR, позволяющий визуализировать :ref:`SubViewport<class_SubViewport>` на внутреннем срезе цилиндра.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------+-------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`aspect_ratio<class_OpenXRCompositionLayerCylinder_property_aspect_ratio>`           | ``1.0``       |
   +---------------------------+-------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`central_angle<class_OpenXRCompositionLayerCylinder_property_central_angle>`         | ``1.5707964`` |
   +---------------------------+-------------------------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`     | :ref:`fallback_segments<class_OpenXRCompositionLayerCylinder_property_fallback_segments>` | ``10``        |
   +---------------------------+-------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`radius<class_OpenXRCompositionLayerCylinder_property_radius>`                       | ``1.0``       |
   +---------------------------+-------------------------------------------------------------------------------------------+---------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_OpenXRCompositionLayerCylinder_property_aspect_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **aspect_ratio** = ``1.0`` :ref:`🔗<class_OpenXRCompositionLayerCylinder_property_aspect_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_aspect_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_aspect_ratio**\ (\ )

Соотношение сторон среза. Используется для установки высоты относительно ширины.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayerCylinder_property_central_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **central_angle** = ``1.5707964`` :ref:`🔗<class_OpenXRCompositionLayerCylinder_property_central_angle>`

.. rst-class:: classref-property-setget

- |void| **set_central_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_central_angle**\ (\ )

Центральный угол цилиндра. Используется для установки ширины.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayerCylinder_property_fallback_segments:

.. rst-class:: classref-property

:ref:`int<class_int>` **fallback_segments** = ``10`` :ref:`🔗<class_OpenXRCompositionLayerCylinder_property_fallback_segments>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_segments**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fallback_segments**\ (\ )

Количество сегментов, используемых в резервной сетке.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayerCylinder_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``1.0`` :ref:`🔗<class_OpenXRCompositionLayerCylinder_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Радиус цилиндра.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
