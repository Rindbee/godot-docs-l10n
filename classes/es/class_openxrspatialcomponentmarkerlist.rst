:github_url: hide

.. _class_OpenXRSpatialComponentMarkerList:

OpenXRSpatialComponentMarkerList
================================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`OpenXRSpatialComponentData<class_OpenXRSpatialComponentData>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Object for storing the queries marker result data.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Object for storing the queries marker result data when calling :ref:`OpenXRSpatialEntityExtension.query_snapshot()<class_OpenXRSpatialEntityExtension_method_query_snapshot>`.

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Enumeraciones
--------------------------

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

Descripciones de Métodos
------------------------------------------------

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

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
