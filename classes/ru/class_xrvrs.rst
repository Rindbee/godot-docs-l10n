:github_url: hide

.. _class_XRVRS:

XRVRS
=====

**Наследует:** :ref:`Object<class_Object>`

Вспомогательный класс для XR-интерфейсов, который генерирует изображения VRS.

.. rst-class:: classref-introduction-group

Описание
----------------

Этот класс используется различными XR-интерфейсами для создания текстур VRS, которые могут быть использованы для ускорения рендеринга.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +-----------------------------+------------------------------------------------------------------+------------------------+
   | :ref:`float<class_float>`   | :ref:`vrs_min_radius<class_XRVRS_property_vrs_min_radius>`       | ``20.0``               |
   +-----------------------------+------------------------------------------------------------------+------------------------+
   | :ref:`Rect2i<class_Rect2i>` | :ref:`vrs_render_region<class_XRVRS_property_vrs_render_region>` | ``Rect2i(0, 0, 0, 0)`` |
   +-----------------------------+------------------------------------------------------------------+------------------------+
   | :ref:`float<class_float>`   | :ref:`vrs_strength<class_XRVRS_property_vrs_strength>`           | ``1.0``                |
   +-----------------------------+------------------------------------------------------------------+------------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>` | :ref:`make_vrs_texture<class_XRVRS_method_make_vrs_texture>`\ (\ target_size\: :ref:`Vector2<class_Vector2>`, eye_foci\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) |
   +-----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_XRVRS_property_vrs_min_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **vrs_min_radius** = ``20.0`` :ref:`🔗<class_XRVRS_property_vrs_min_radius>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_min_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vrs_min_radius**\ (\ )

Минимальный радиус вокруг фокусной точки, при котором гарантируется полное качество изображения, если использовать VRS в процентах от размера экрана.

.. rst-class:: classref-item-separator

----

.. _class_XRVRS_property_vrs_render_region:

.. rst-class:: classref-property

:ref:`Rect2i<class_Rect2i>` **vrs_render_region** = ``Rect2i(0, 0, 0, 0)`` :ref:`🔗<class_XRVRS_property_vrs_render_region>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_render_region**\ (\ value\: :ref:`Rect2i<class_Rect2i>`\ )
- :ref:`Rect2i<class_Rect2i>` **get_vrs_render_region**\ (\ )

Область рендеринга, к которой будет масштабирована текстура VRS при генерации.

.. rst-class:: classref-item-separator

----

.. _class_XRVRS_property_vrs_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **vrs_strength** = ``1.0`` :ref:`🔗<class_XRVRS_property_vrs_strength>`

.. rst-class:: classref-property-setget

- |void| **set_vrs_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_vrs_strength**\ (\ )

Сила, используемая для расчета карты плотности VRS. Чем больше это значение, тем заметнее VRS.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_XRVRS_method_make_vrs_texture:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **make_vrs_texture**\ (\ target_size\: :ref:`Vector2<class_Vector2>`, eye_foci\: :ref:`PackedVector2Array<class_PackedVector2Array>`\ ) :ref:`🔗<class_XRVRS_method_make_vrs_texture>`

Генерирует VRS текстуру, основанную на рендере ``target_size`` скорректированного по размеру VRS тайла. Для каждой точки фокусировки глаза, переданной в параметре ``eye_foci``, создается слой. Фокусная точна должна находиться в NDC.

Результат будет кэширован, при запросе текстуры VRS с неизмененными параметрами и настройками будет возвращен кэшированный RID.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
