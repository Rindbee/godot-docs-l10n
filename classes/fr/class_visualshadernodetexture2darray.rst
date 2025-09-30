:github_url: hide

.. _class_VisualShaderNodeTexture2DArray:

VisualShaderNodeTexture2DArray
==============================

**Hérite de :** :ref:`VisualShaderNodeSample3D<class_VisualShaderNodeSample3D>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A 2D texture uniform array to be used within the visual shader graph.

.. rst-class:: classref-introduction-group

Description
-----------

Sera traduit en ``uniform sampler2DArray`` dans le langage du shader.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +---------------------------------------------+-----------------------------------------------------------------------------------+
   | :ref:`TextureLayered<class_TextureLayered>` | :ref:`texture_array<class_VisualShaderNodeTexture2DArray_property_texture_array>` |
   +---------------------------------------------+-----------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShaderNodeTexture2DArray_property_texture_array:

.. rst-class:: classref-property

:ref:`TextureLayered<class_TextureLayered>` **texture_array** :ref:`🔗<class_VisualShaderNodeTexture2DArray_property_texture_array>`

.. rst-class:: classref-property-setget

- |void| **set_texture_array**\ (\ value\: :ref:`TextureLayered<class_TextureLayered>`\ )
- :ref:`TextureLayered<class_TextureLayered>` **get_texture_array**\ (\ )

A source texture array. Used if :ref:`VisualShaderNodeSample3D.source<class_VisualShaderNodeSample3D_property_source>` is set to :ref:`VisualShaderNodeSample3D.SOURCE_TEXTURE<class_VisualShaderNodeSample3D_constant_SOURCE_TEXTURE>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
