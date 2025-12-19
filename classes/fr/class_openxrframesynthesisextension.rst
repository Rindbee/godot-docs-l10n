:github_url: hide

.. _class_OpenXRFrameSynthesisExtension:

OpenXRFrameSynthesisExtension
=============================

**Hérite de :** :ref:`OpenXRExtensionWrapper<class_OpenXRExtensionWrapper>` **<** :ref:`Object<class_Object>`

The OpenXR Frame synthesis extension allows for advanced reprojection at low(er) framerates.

.. rst-class:: classref-introduction-group

Description
-----------

This class implements the `OpenXR Frame synthesis extension <https://registry.khronos.org/OpenXR/specs/1.1/html/xrspec.html#XR_EXT_frame_synthesis>`__. When enabled in the project settings and supported by the XR runtime in use, frame synthesis uses advanced reprojection techniques to inject additional frames so that your XR experience hits the full frame rate of the device.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------+------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`enabled<class_OpenXRFrameSynthesisExtension_property_enabled>`                           | ``false`` |
   +-------------------------+------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`relax_frame_interval<class_OpenXRFrameSynthesisExtension_property_relax_frame_interval>` | ``false`` |
   +-------------------------+------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | :ref:`is_available<class_OpenXRFrameSynthesisExtension_method_is_available>`\ (\ ) |const| |
   +-------------------------+--------------------------------------------------------------------------------------------+
   | |void|                  | :ref:`skip_next_frame<class_OpenXRFrameSynthesisExtension_method_skip_next_frame>`\ (\ )   |
   +-------------------------+--------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_OpenXRFrameSynthesisExtension_property_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enabled** = ``false`` :ref:`🔗<class_OpenXRFrameSynthesisExtension_property_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_enabled**\ (\ )

Enable frame synthesis. When ``true`` motion vector and depth data is provided to the XR runtime.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFrameSynthesisExtension_property_relax_frame_interval:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **relax_frame_interval** = ``false`` :ref:`🔗<class_OpenXRFrameSynthesisExtension_property_relax_frame_interval>`

.. rst-class:: classref-property-setget

- |void| **set_relax_frame_interval**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_relax_frame_interval**\ (\ )

If ``true`` this informs the XR runtime we will be providing frames at a greatly reduced rate. Enable this when you expect your application to run at low framerates and wish to inject multiple reprojected frames.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_OpenXRFrameSynthesisExtension_method_is_available:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_available**\ (\ ) |const| :ref:`🔗<class_OpenXRFrameSynthesisExtension_method_is_available>`

Returns ``true`` if frame synthesis is enabled in the project settings and the current XR runtime supports frame synthesis. The value returned will only be valid once OpenXR has been initialized.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRFrameSynthesisExtension_method_skip_next_frame:

.. rst-class:: classref-method

|void| **skip_next_frame**\ (\ ) :ref:`🔗<class_OpenXRFrameSynthesisExtension_method_skip_next_frame>`

Queues the next frame to be skipped when supplying motion vector and depth data. Call this after teleporting your player or a similar action has moved the player to prevent incorrect reprojection results due to this movement.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
