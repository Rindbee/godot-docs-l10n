:github_url: hide

.. _class_OpenXRCompositionLayerEquirect:

OpenXRCompositionLayerEquirect
==============================

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`OpenXRCompositionLayer<class_OpenXRCompositionLayer>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un calque de composition OpenXR qui est rendu comme une tranche interne d'une sphère.

.. rst-class:: classref-introduction-group

Description
-----------

Un calque de composition OpenXR qui permet le rendu d'un :ref:`SubViewport<class_SubViewport>` sur une tranche interne d'une sphère.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------+---------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`central_horizontal_angle<class_OpenXRCompositionLayerEquirect_property_central_horizontal_angle>` | ``1.5707964`` |
   +---------------------------+---------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`int<class_int>`     | :ref:`fallback_segments<class_OpenXRCompositionLayerEquirect_property_fallback_segments>`               | ``10``        |
   +---------------------------+---------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`lower_vertical_angle<class_OpenXRCompositionLayerEquirect_property_lower_vertical_angle>`         | ``0.7853982`` |
   +---------------------------+---------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`radius<class_OpenXRCompositionLayerEquirect_property_radius>`                                     | ``1.0``       |
   +---------------------------+---------------------------------------------------------------------------------------------------------+---------------+
   | :ref:`float<class_float>` | :ref:`upper_vertical_angle<class_OpenXRCompositionLayerEquirect_property_upper_vertical_angle>`         | ``0.7853982`` |
   +---------------------------+---------------------------------------------------------------------------------------------------------+---------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_OpenXRCompositionLayerEquirect_property_central_horizontal_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **central_horizontal_angle** = ``1.5707964`` :ref:`🔗<class_OpenXRCompositionLayerEquirect_property_central_horizontal_angle>`

.. rst-class:: classref-property-setget

- |void| **set_central_horizontal_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_central_horizontal_angle**\ (\ )

L'angle horizontal central de la sphère. Utilisé pour définir la largeur.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayerEquirect_property_fallback_segments:

.. rst-class:: classref-property

:ref:`int<class_int>` **fallback_segments** = ``10`` :ref:`🔗<class_OpenXRCompositionLayerEquirect_property_fallback_segments>`

.. rst-class:: classref-property-setget

- |void| **set_fallback_segments**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_fallback_segments**\ (\ )

Le nombre de segments à utiliser dans le maillage de repli.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayerEquirect_property_lower_vertical_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **lower_vertical_angle** = ``0.7853982`` :ref:`🔗<class_OpenXRCompositionLayerEquirect_property_lower_vertical_angle>`

.. rst-class:: classref-property-setget

- |void| **set_lower_vertical_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_lower_vertical_angle**\ (\ )

L'angle vertical inférieur de la sphère. Utilisé (avec :ref:`upper_vertical_angle<class_OpenXRCompositionLayerEquirect_property_upper_vertical_angle>`) pour définir la hauteur.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayerEquirect_property_radius:

.. rst-class:: classref-property

:ref:`float<class_float>` **radius** = ``1.0`` :ref:`🔗<class_OpenXRCompositionLayerEquirect_property_radius>`

.. rst-class:: classref-property-setget

- |void| **set_radius**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_radius**\ (\ )

Le rayon de la sphère.

.. rst-class:: classref-item-separator

----

.. _class_OpenXRCompositionLayerEquirect_property_upper_vertical_angle:

.. rst-class:: classref-property

:ref:`float<class_float>` **upper_vertical_angle** = ``0.7853982`` :ref:`🔗<class_OpenXRCompositionLayerEquirect_property_upper_vertical_angle>`

.. rst-class:: classref-property-setget

- |void| **set_upper_vertical_angle**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_upper_vertical_angle**\ (\ )

L'angle vertical supérieur de la sphère. Utilisé (avec :ref:`lower_vertical_angle<class_OpenXRCompositionLayerEquirect_property_lower_vertical_angle>`) pour définir la hauteur.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
