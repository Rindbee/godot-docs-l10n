:github_url: hide

.. _class_OpenXRSpatialComponentMarkerList:

OpenXRSpatialComponentMarkerList
================================

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Object for storing the queries marker result data.

.. rst-class:: classref-introduction-group

Опис
--------

Object for storing the queries marker result data when calling :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

.. rst-class:: classref-reftable-group

Методи
------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Variant<class_Variant>`                                       | :ref:`get_marker_data<class_OpenXRSpatialComponentMarkerList_method_get_marker_data>`\ (\ snapshot\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| |
   +---------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                               | :ref:`get_marker_id<class_OpenXRSpatialComponentMarkerList_method_get_marker_id>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                       |
   +---------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` | :ref:`get_marker_type<class_OpenXRSpatialComponentMarkerList_method_get_marker_type>`\ (\ index\: :ref:`int<class_int>`\ ) |const|                                   |
   +---------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Переліки
----------------

.. _enum_OpenXRSpatialComponentMarkerList_MarkerType:

.. rst-class:: classref-enumeration

enum **MarkerType**: :ref:`🔗<enum_OpenXRSpatialComponentMarkerList_MarkerType>`

.. _class_OpenXRSpatialComponentMarkerList_constant_MARKER_TYPE_UNKNOWN:

.. rst-class:: classref-enumeration-constant

:ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` **MARKER_TYPE_UNKNOWN** = ``0``

Unknown or unset marker type.

.. _class_OpenXRSpatialComponentMarkerList_constant_MARKER_TYPE_QRCODE:

.. rst-class:: classref-enumeration-constant

:ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` **MARKER_TYPE_QRCODE** = ``1``

Marker based on a QR code.

.. _class_OpenXRSpatialComponentMarkerList_constant_MARKER_TYPE_MICRO_QRCODE:

.. rst-class:: classref-enumeration-constant

:ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` **MARKER_TYPE_MICRO_QRCODE** = ``2``

Marker based on a micro QR code.

.. _class_OpenXRSpatialComponentMarkerList_constant_MARKER_TYPE_ARUCO:

.. rst-class:: classref-enumeration-constant

:ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` **MARKER_TYPE_ARUCO** = ``3``

Marker based on an Aruco code.

.. _class_OpenXRSpatialComponentMarkerList_constant_MARKER_TYPE_APRIL_TAG:

.. rst-class:: classref-enumeration-constant

:ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` **MARKER_TYPE_APRIL_TAG** = ``4``

Marker based on an April Tag.

.. _class_OpenXRSpatialComponentMarkerList_constant_MARKER_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` **MARKER_TYPE_MAX** = ``5``

Maximum value for this enum.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Описи методів
--------------------------

.. _class_OpenXRSpatialComponentMarkerList_method_get_marker_data:

.. rst-class:: classref-method

:ref:`Variant<class_Variant>` **get_marker_data**\ (\ snapshot\: :ref:`RID<class_RID>`, index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentMarkerList_method_get_marker_data>`

Returns either a :ref:`String<class_String>` or a :ref:`PackedByteArray<class_PackedByteArray>` buffer with data for the marker at this ``index``. Only applicable for QR code markers.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentMarkerList_method_get_marker_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_marker_id**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentMarkerList_method_get_marker_id>`

Returns the marker ID for the marker at this ``index``. Only applicable for Aruco or April Tag markers.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialComponentMarkerList_method_get_marker_type:

.. rst-class:: classref-method

:ref:`MarkerType<enum_OpenXRSpatialComponentMarkerList_MarkerType>` **get_marker_type**\ (\ index\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_OpenXRSpatialComponentMarkerList_method_get_marker_type>`

Returns the marker type for the marker at this ``index``.

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
