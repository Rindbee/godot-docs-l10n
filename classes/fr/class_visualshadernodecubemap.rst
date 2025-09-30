:github_url: hide

.. _class_VisualShaderNodeCubemap:

VisualShaderNodeCubemap
=======================

**Hérite de :** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A :ref:`Cubemap<class_Cubemap>` sampling node to be used within the visual shader graph.

.. rst-class:: classref-introduction-group

Description
-----------

Sera traduit en ``texture(cubemap, vec3)`` dans le code du shader. Renvoie une couleur dans un vecteur et le canal alpha comme scalaire.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`TextureLayered<class_TextureLayered>`                  | :ref:`cube_map<class_VisualShaderNodeCubemap_property_cube_map>`         |       |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`Source<enum_VisualShaderNodeCubemap_Source>`           | :ref:`source<class_VisualShaderNodeCubemap_property_source>`             | ``0`` |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` | :ref:`texture_type<class_VisualShaderNodeCubemap_property_texture_type>` | ``0`` |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_VisualShaderNodeCubemap_Source:

.. rst-class:: classref-enumeration

enum **Source**: :ref:`🔗<enum_VisualShaderNodeCubemap_Source>`

.. _class_VisualShaderNodeCubemap_constant_SOURCE_TEXTURE:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeCubemap_Source>` **SOURCE_TEXTURE** = ``0``

Use the :ref:`Cubemap<class_Cubemap>` set via :ref:`cube_map<class_VisualShaderNodeCubemap_property_cube_map>`. If this is set to :ref:`source<class_VisualShaderNodeCubemap_property_source>`, the ``samplerCube`` port is ignored.

.. _class_VisualShaderNodeCubemap_constant_SOURCE_PORT:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeCubemap_Source>` **SOURCE_PORT** = ``1``

Use the :ref:`Cubemap<class_Cubemap>` sampler reference passed via the ``samplerCube`` port. If this is set to :ref:`source<class_VisualShaderNodeCubemap_property_source>`, the :ref:`cube_map<class_VisualShaderNodeCubemap_property_cube_map>` texture is ignored.

.. _class_VisualShaderNodeCubemap_constant_SOURCE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeCubemap_Source>` **SOURCE_MAX** = ``2``

Représente la taille de l'énumération :ref:`Source<enum_VisualShaderNodeCubemap_Source>`.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeCubemap_TextureType:

.. rst-class:: classref-enumeration

enum **TextureType**: :ref:`🔗<enum_VisualShaderNodeCubemap_TextureType>`

.. _class_VisualShaderNodeCubemap_constant_TYPE_DATA:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` **TYPE_DATA** = ``0``

Aucun indice n'a été ajouté à la déclaration de l'uniform.

.. _class_VisualShaderNodeCubemap_constant_TYPE_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` **TYPE_COLOR** = ``1``

Adds ``source_color`` as hint to the uniform declaration for proper sRGB to linear conversion.

.. _class_VisualShaderNodeCubemap_constant_TYPE_NORMAL_MAP:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` **TYPE_NORMAL_MAP** = ``2``

Ajoute ``hint_normal`` comme indication de la déclaration d'uniform, qui convertit en interne la texture pour l'utiliser de manière appropriée comme normal map.

.. _class_VisualShaderNodeCubemap_constant_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` **TYPE_MAX** = ``3``

Représente la taille de l’énumération :ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShaderNodeCubemap_property_cube_map:

.. rst-class:: classref-property

:ref:`TextureLayered<class_TextureLayered>` **cube_map** :ref:`🔗<class_VisualShaderNodeCubemap_property_cube_map>`

.. rst-class:: classref-property-setget

- |void| **set_cube_map**\ (\ value\: :ref:`TextureLayered<class_TextureLayered>`\ )
- :ref:`TextureLayered<class_TextureLayered>` **get_cube_map**\ (\ )

The :ref:`Cubemap<class_Cubemap>` texture to sample when using :ref:`SOURCE_TEXTURE<class_VisualShaderNodeCubemap_constant_SOURCE_TEXTURE>` as :ref:`source<class_VisualShaderNodeCubemap_property_source>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCubemap_property_source:

.. rst-class:: classref-property

:ref:`Source<enum_VisualShaderNodeCubemap_Source>` **source** = ``0`` :ref:`🔗<class_VisualShaderNodeCubemap_property_source>`

.. rst-class:: classref-property-setget

- |void| **set_source**\ (\ value\: :ref:`Source<enum_VisualShaderNodeCubemap_Source>`\ )
- :ref:`Source<enum_VisualShaderNodeCubemap_Source>` **get_source**\ (\ )

Defines which source should be used for the sampling.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCubemap_property_texture_type:

.. rst-class:: classref-property

:ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` **texture_type** = ``0`` :ref:`🔗<class_VisualShaderNodeCubemap_property_texture_type>`

.. rst-class:: classref-property-setget

- |void| **set_texture_type**\ (\ value\: :ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>`\ )
- :ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` **get_texture_type**\ (\ )

Defines the type of data provided by the source texture.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
