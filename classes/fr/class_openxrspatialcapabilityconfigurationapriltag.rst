:github_url: hide

.. _class_OpenXRSpatialCapabilityConfigurationAprilTag:

OpenXRSpatialCapabilityConfigurationAprilTag
============================================

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`OpenXRSpatialCapabilityConfigurationBaseHeader<class_OpenXRSpatialCapabilityConfigurationBaseHeader>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Configuration header for April tag markers.

.. rst-class:: classref-introduction-group

Description
-----------

Configuration header for April tag markers. Pass this to :ref:`OpenXRSpatialEntityExtension.create_spatial_context()<class_OpenXRSpatialEntityExtension_method_create_spatial_context>` to create a spatial context that can detect April tags.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-------+
   | :ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>` | :ref:`april_dict<class_OpenXRSpatialCapabilityConfigurationAprilTag_property_april_dict>` | ``4`` |
   +-------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`PackedInt64Array<class_PackedInt64Array>` | :ref:`get_enabled_components<class_OpenXRSpatialCapabilityConfigurationAprilTag_method_get_enabled_components>`\ (\ ) |const| |
   +-------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict:

.. rst-class:: classref-enumeration

enum **AprilTagDict**: :ref:`🔗<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>`

.. _class_OpenXRSpatialCapabilityConfigurationAprilTag_constant_APRIL_TAG_DICT_16H5:

.. rst-class:: classref-enumeration-constant

:ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>` **APRIL_TAG_DICT_16H5** = ``1``

4 by 4 bits, minimum Hamming distance between any two codes = 5, 30 codes.

.. _class_OpenXRSpatialCapabilityConfigurationAprilTag_constant_APRIL_TAG_DICT_25H9:

.. rst-class:: classref-enumeration-constant

:ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>` **APRIL_TAG_DICT_25H9** = ``2``

5 by 5 bits, minimum Hamming distance between any two codes = 9, 35 codes.

.. _class_OpenXRSpatialCapabilityConfigurationAprilTag_constant_APRIL_TAG_DICT_36H10:

.. rst-class:: classref-enumeration-constant

:ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>` **APRIL_TAG_DICT_36H10** = ``3``

6 by 6 bits, minimum Hamming distance between any two codes = 10, 2320 codes.

.. _class_OpenXRSpatialCapabilityConfigurationAprilTag_constant_APRIL_TAG_DICT_36H11:

.. rst-class:: classref-enumeration-constant

:ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>` **APRIL_TAG_DICT_36H11** = ``4``

6 by 6 bits, minimum Hamming distance between any two codes = 11, 587 codes.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_OpenXRSpatialCapabilityConfigurationAprilTag_property_april_dict:

.. rst-class:: classref-property

:ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>` **april_dict** = ``4`` :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationAprilTag_property_april_dict>`

.. rst-class:: classref-property-setget

- |void| **set_april_dict**\ (\ value\: :ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>`\ )
- :ref:`AprilTagDict<enum_OpenXRSpatialCapabilityConfigurationAprilTag_AprilTagDict>` **get_april_dict**\ (\ )

Dictionary to use to decode April tags.

\ **Note:** Must be set before using this configuration to create a spatial context.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_OpenXRSpatialCapabilityConfigurationAprilTag_method_get_enabled_components:

.. rst-class:: classref-method

:ref:`PackedInt64Array<class_PackedInt64Array>` **get_enabled_components**\ (\ ) |const| :ref:`🔗<class_OpenXRSpatialCapabilityConfigurationAprilTag_method_get_enabled_components>`

Returns the components enabled by this configuration.

\ **Note:** Only valid after this configuration was used to create a spatial context.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
