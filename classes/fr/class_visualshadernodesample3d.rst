:github_url: hide

.. _class_VisualShaderNodeSample3D:

VisualShaderNodeSample3D
========================

**Hérite de :** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`VisualShaderNodeTexture2DArray<class_VisualShaderNodeTexture2DArray>`, :ref:`VisualShaderNodeTexture3D<class_VisualShaderNodeTexture3D>`

A base node for nodes which samples 3D textures in the visual shader graph.

.. rst-class:: classref-introduction-group

Description
-----------

A virtual class, use the descendants instead.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------+-------+
   | :ref:`Source<enum_VisualShaderNodeSample3D_Source>` | :ref:`source<class_VisualShaderNodeSample3D_property_source>` | ``0`` |
   +-----------------------------------------------------+---------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_VisualShaderNodeSample3D_Source:

.. rst-class:: classref-enumeration

enum **Source**: :ref:`🔗<enum_VisualShaderNodeSample3D_Source>`

.. _class_VisualShaderNodeSample3D_constant_SOURCE_TEXTURE:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeSample3D_Source>` **SOURCE_TEXTURE** = ``0``

Creates internal uniform and provides a way to assign it within node.

.. _class_VisualShaderNodeSample3D_constant_SOURCE_PORT:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeSample3D_Source>` **SOURCE_PORT** = ``1``

Use the uniform texture from sampler port.

.. _class_VisualShaderNodeSample3D_constant_SOURCE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeSample3D_Source>` **SOURCE_MAX** = ``2``

Représente la taille de l'énumération :ref:`Source<enum_VisualShaderNodeSample3D_Source>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShaderNodeSample3D_property_source:

.. rst-class:: classref-property

:ref:`Source<enum_VisualShaderNodeSample3D_Source>` **source** = ``0`` :ref:`🔗<class_VisualShaderNodeSample3D_property_source>`

.. rst-class:: classref-property-setget

- |void| **set_source**\ (\ value\: :ref:`Source<enum_VisualShaderNodeSample3D_Source>`\ )
- :ref:`Source<enum_VisualShaderNodeSample3D_Source>` **get_source**\ (\ )

Un type de source d'entrée.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
