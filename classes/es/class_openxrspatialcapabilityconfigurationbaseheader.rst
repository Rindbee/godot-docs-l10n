:github_url: hide

.. _class_OpenXRSpatialCapabilityConfigurationBaseHeader:

OpenXRSpatialCapabilityConfigurationBaseHeader
==============================================

**Experimental:** This class may be changed or removed in future versions.

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`OpenXRSpatialCapabilityConfigurationAnchor<class_OpenXRSpatialCapabilityConfigurationAnchor>`, :ref:`OpenXRSpatialCapabilityConfigurationAprilTag<class_OpenXRSpatialCapabilityConfigurationAprilTag>`, :ref:`OpenXRSpatialCapabilityConfigurationAruco<class_OpenXRSpatialCapabilityConfigurationAruco>`, :ref:`OpenXRSpatialCapabilityConfigurationMicroQrCode<class_OpenXRSpatialCapabilityConfigurationMicroQrCode>`, :ref:`OpenXRSpatialCapabilityConfigurationPlaneTracking<class_OpenXRSpatialCapabilityConfigurationPlaneTracking>`, :ref:`OpenXRSpatialCapabilityConfigurationQrCode<class_OpenXRSpatialCapabilityConfigurationQrCode>`

Wrapper base class for OpenXR Spatial Capability Configuration headers.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Wrapper base class for OpenXR Spatial Capability Configuration headers. This class needs to be implemented for each capability configuration structure usable within OpenXR's spatial entities system.

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`   | :ref:`_get_configuration<class_OpenXRSpatialCapabilityConfigurationBaseHeader_private_method__get_configuration>`\ (\ ) |virtual|                     |
   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`_has_valid_configuration<class_OpenXRSpatialCapabilityConfigurationBaseHeader_private_method__has_valid_configuration>`\ (\ ) |virtual| |const| |
   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`has_valid_configuration<class_OpenXRSpatialCapabilityConfigurationBaseHeader_method_has_valid_configuration>`\ (\ ) |const|                     |
   +-------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_OpenXRSpatialCapabilityConfigurationBaseHeader_private_method__get_configuration:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_configuration**\ (\ ) |virtual| :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationBaseHeader_private_method__get_configuration>`

Return a pointer (encoded as an ``int64_t``) to a struct holding the spatial capability configuration data. The memory for this struct should remain accessible as long as this object remains instantiated.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialCapabilityConfigurationBaseHeader_private_method__has_valid_configuration:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_valid_configuration**\ (\ ) |virtual| |const| :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationBaseHeader_private_method__has_valid_configuration>`

Return ``true`` if this object contains a valid configuration that can be retrieved when calling :ref:`_get_configuration()<class_OpenXRSpatialCapabilityConfigurationBaseHeader_private_method__get_configuration>`.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialCapabilityConfigurationBaseHeader_method_has_valid_configuration:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_valid_configuration**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationBaseHeader_method_has_valid_configuration>`

Returns ``true`` if this object contains a valid configuration that can be used when calling :ref:`OpenXRSpatialEntityExtension.create_spatial_context()<class_OpenXRSpatialEntityExtension_method_create_spatial_context>`.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
