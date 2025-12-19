:github_url: hide

.. _class_OpenXRSpatialCapabilityConfigurationBaseHeader:

OpenXRSpatialCapabilityConfigurationBaseHeader
==============================================

**Експериментальний:** This class may be changed or removed in future versions.

**Успадковує:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Успадковано від:** :ref:`OpenXRSpatialCapabilityConfigurationAnchor<class_OpenXRSpatialCapabilityConfigurationAnchor>`, :ref:`OpenXRSpatialCapabilityConfigurationAprilTag<class_OpenXRSpatialCapabilityConfigurationAprilTag>`, :ref:`OpenXRSpatialCapabilityConfigurationAruco<class_OpenXRSpatialCapabilityConfigurationAruco>`, :ref:`OpenXRSpatialCapabilityConfigurationMicroQrCode<class_OpenXRSpatialCapabilityConfigurationMicroQrCode>`, :ref:`OpenXRSpatialCapabilityConfigurationPlaneTracking<class_OpenXRSpatialCapabilityConfigurationPlaneTracking>`, :ref:`OpenXRSpatialCapabilityConfigurationQrCode<class_OpenXRSpatialCapabilityConfigurationQrCode>`

Wrapper base class for OpenXR Spatial Capability Configuration headers.

.. rst-class:: classref-introduction-group

Опис
--------

Wrapper base class for OpenXR Spatial Capability Configuration headers. This class needs to be implemented for each capability configuration structure usable within OpenXR's spatial entities system.

.. rst-class:: classref-reftable-group

Методи
------------

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

Описи методів
--------------------------

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

.. |virtual| replace:: :abbr:`virtual (Зазвичай, цей метод перевизначається користувачем, щоб він мав вплив.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Цей метод не має побічних ефектів. Не змінює ніяку змінну екземпляра об'єкта.)`
.. |vararg| replace:: :abbr:`vararg (Цей метод приймає будь-яке число аргументів після описаних тут.)`
.. |constructor| replace:: :abbr:`constructor (Цей метод використовується для побудови типів.)`
.. |static| replace:: :abbr:`static (Цей метод не потребує екземпляра для виклику, його можна викликати безпосередньо за допомогою назви класу.)`
.. |operator| replace:: :abbr:`operator (Цей метод описує дійсний оператор для взаємодії з цим типом як з лівим операндом.)`
.. |bitfield| replace:: :abbr:`BitField (Це значення є цілим числом, складеним у вигляді бітової маски з наступних прапорів.)`
.. |void| replace:: :abbr:`void (Значення не повертається.)`
