:github_url: hide

.. _class_OpenXRSpatialCapabilityConfigurationBaseHeader:

OpenXRSpatialCapabilityConfigurationBaseHeader
==============================================

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`OpenXRSpatialCapabilityConfigurationAnchor<class_OpenXRSpatialCapabilityConfigurationAnchor>`, :ref:`OpenXRSpatialCapabilityConfigurationAprilTag<class_OpenXRSpatialCapabilityConfigurationAprilTag>`, :ref:`OpenXRSpatialCapabilityConfigurationAruco<class_OpenXRSpatialCapabilityConfigurationAruco>`, :ref:`OpenXRSpatialCapabilityConfigurationMicroQrCode<class_OpenXRSpatialCapabilityConfigurationMicroQrCode>`, :ref:`OpenXRSpatialCapabilityConfigurationPlaneTracking<class_OpenXRSpatialCapabilityConfigurationPlaneTracking>`, :ref:`OpenXRSpatialCapabilityConfigurationQrCode<class_OpenXRSpatialCapabilityConfigurationQrCode>`

Wrapper base class for OpenXR Spatial Capability Configuration headers.

.. rst-class:: classref-introduction-group

Description
-----------

Wrapper base class for OpenXR Spatial Capability Configuration headers. This class needs to be implemented for each capability configuration structure usable within OpenXR's spatial entities system.

.. rst-class:: classref-reftable-group

Méthodes
----------------

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

Descriptions des méthodes
--------------------------------------------------

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

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
