:github_url: hide

.. _class_OpenXRMarkerTracker:

OpenXRMarkerTracker
===================

**Экспериментальное:** This class may be changed or removed in future versions.

**Наследует:** :ref:`OpenXRSpatialEntityTracker<class_OpenXRSpatialEntityTracker>` **<** :ref:`XRPositionalTracker<class_XRPositionalTracker>` **<** :ref:`XRTracker<class_XRTracker>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Spatial entity tracker for our spatial entity marker tracking extension.

.. rst-class:: classref-introduction-group

Описание
----------------

Spatial entity tracker for our OpenXR spatial entity marker tracking extension. These trackers identify entities in our real space detected by a visual marker such as a QRCode or Aruco code, and map their location to our virtual space.

.. rst-class:: classref-reftable-group

Свойства
----------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+--------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>`                                       | :ref:`bounds_size<class_OpenXRMarkerTracker_property_bounds_size>` | ``Vector2(0, 0)`` |
   +---------------------------------------------------------------------+--------------------------------------------------------------------+-------------------+
   | :ref:`int<class_int>`                                               | :ref:`marker_id<class_OpenXRMarkerTracker_property_marker_id>`     | ``0``             |
   +---------------------------------------------------------------------+--------------------------------------------------------------------+-------------------+
   | :ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` | :ref:`marker_type<class_OpenXRMarkerTracker_property_marker_type>` | ``0``             |
   +---------------------------------------------------------------------+--------------------------------------------------------------------+-------------------+

.. rst-class:: classref-reftable-group

Методы
------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>` | :ref:`get_marker_data<class_OpenXRMarkerTracker_method_get_marker_data>`\ (\ ) |const|                                      |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`set_marker_data<class_OpenXRMarkerTracker_method_set_marker_data>`\ (\ marker_data\: :ref:`Variant<class_Variant>`\ ) |
   +-------------------------------+-----------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания свойств
--------------------------------

.. _class_OpenXRMarkerTracker_property_bounds_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **bounds_size** = ``Vector2(0, 0)`` :ref:`🔗<class_OpenXRMarkerTracker_property_bounds_size>`

.. rst-class:: classref-property-setget

- |void| **set_bounds_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_bounds_size**\ (\ )

The bounds size for this marker.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRMarkerTracker_property_marker_id:

.. rst-class:: classref-property

:ref:`int<class_int>` **marker_id** = ``0`` :ref:`🔗<class_OpenXRMarkerTracker_property_marker_id>`

.. rst-class:: classref-property-setget

- |void| **set_marker_id**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_marker_id**\ (\ )

The marker ID for this marker, this is only returned for Aruco and April Tag markers. Call :ref:`get_marker_data()<class_OpenXRMarkerTracker_method_get_marker_data>` for QRCode markers.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRMarkerTracker_property_marker_type:

.. rst-class:: classref-property

:ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` **marker_type** = ``0`` :ref:`🔗<class_OpenXRMarkerTracker_property_marker_type>`

.. rst-class:: classref-property-setget

- |void| **set_marker_type**\ (\ value\: :ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>`\ )
- :ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` **get_marker_type**\ (\ )

The type of marker.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описания метода
------------------------------

.. _class_OpenXRMarkerTracker_method_get_marker_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_marker_data**\ (\ ) |const| :ref:`🔗<class_OpenXRMarkerTracker_method_get_marker_data>`

Returns the marker data for this marker. This can return a :ref:`String<class_String>` or :ref:`PackedByteArray<class_PackedByteArray>`. Only applicable to QR Code based markers.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRMarkerTracker_method_set_marker_data:

.. rst-class:: classref-method

|void| **set_marker_data**\ (\ marker_data\: :ref:`Variant<class_Variant>`\ ) :ref:`🔗<class_OpenXRMarkerTracker_method_set_marker_data>`

Sets the marker data for this marker.

\ **Note:** This should only be set by marker discovery logic.

.. |virtual| replace:: :abbr:`virtual (Этот метод обычно должен быть переопределен пользователем, чтобы иметь какой-либо эффект.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Этот метод не имеет побочных эффектов. Он не изменяет ни одну из переменных-членов экземпляра.)`
.. |vararg| replace:: :abbr:`vararg (Этот метод принимает любое количество аргументов после описанных здесь.)`
.. |constructor| replace:: :abbr:`constructor (Этот метод используется для создания типа.)`
.. |static| replace:: :abbr:`static (Этот метод не нуждается в вызове экземпляра, поэтому его можно вызвать напрямую, используя имя класса.)`
.. |operator| replace:: :abbr:`operator (Этот метод описывает допустимый оператор для использования с этим типом в качестве левого операнда.)`
.. |bitfield| replace:: :abbr:`BitField (Это значение является целым числом, составленным как битовая маска следующих флагов.)`
.. |void| replace:: :abbr:`void (Нет возвращаемого значения.)`
