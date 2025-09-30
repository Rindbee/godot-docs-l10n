:github_url: hide

.. _class_OpenXRCompositionLayerQuad:

OpenXRCompositionLayerQuad
==========================

**Expérimental :** This class may be changed or removed in future versions.

**Hérite de :** :ref:`OpenXRCompositionLayer<class_OpenXRCompositionLayer>` **<** :ref:`Node3D<class_Node3D>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un calque de composition OpenXR qui est rendu comme un quadrilatère.

.. rst-class:: classref-introduction-group

Description
-----------

Un calque de composition OpenXR qui permet le rendu d'un :ref:`SubViewport<class_SubViewport>` sur un quadrilatère.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------------+-----------------------------------------------------------------------+-------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`quad_size<class_OpenXRCompositionLayerQuad_property_quad_size>` | ``Vector2(1, 1)`` |
   +-------------------------------+-----------------------------------------------------------------------+-------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_OpenXRCompositionLayerQuad_property_quad_size:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **quad_size** = ``Vector2(1, 1)`` :ref:`🔗<class_OpenXRCompositionLayerQuad_property_quad_size>`

.. rst-class:: classref-property-setget

- |void| **set_quad_size**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_quad_size**\ (\ )

Les dimensions du quadrilatère.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
