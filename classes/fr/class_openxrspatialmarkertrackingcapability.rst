:github_url: hide

.. _class_OpenXRSpatialMarkerTrackingCapability:

OpenXRSpatialMarkerTrackingCapability
=====================================

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

Implementation for handling spatial entity marker tracking logic.

.. rst-class:: classref-introduction-group

Description
-----------

This class handles the OpenXR marker tracking spatial entity extension.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_april_tag_supported<class_OpenXRSpatialMarkerTrackingCapability_method_is_april_tag_supported>`\ (\ )       |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_aruco_supported<class_OpenXRSpatialMarkerTrackingCapability_method_is_aruco_supported>`\ (\ )               |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_micro_qrcode_supported<class_OpenXRSpatialMarkerTrackingCapability_method_is_micro_qrcode_supported>`\ (\ ) |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_qrcode_supported<class_OpenXRSpatialMarkerTrackingCapability_method_is_qrcode_supported>`\ (\ )             |
   +-------------------------+----------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_OpenXRSpatialMarkerTrackingCapability_method_is_april_tag_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_april_tag_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_is_april_tag_supported>`

Returns ``true`` if April tag marker tracking is supported by the current device.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialMarkerTrackingCapability_method_is_aruco_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_aruco_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_is_aruco_supported>`

Returns ``true`` if Aruco marker tracking is supported by the current device.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialMarkerTrackingCapability_method_is_micro_qrcode_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_micro_qrcode_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_is_micro_qrcode_supported>`

Returns ``true`` if micro QR code marker tracking is supported by the current device.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRSpatialMarkerTrackingCapability_method_is_qrcode_supported:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_qrcode_supported**\ (\ ) :ref:`🔗<class_OpenXRSpatialMarkerTrackingCapability_method_is_qrcode_supported>`

Returns ``true`` if QR code marker tracking is supported by the current device.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
