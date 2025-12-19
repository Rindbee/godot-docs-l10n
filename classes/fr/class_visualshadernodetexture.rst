:github_url: hide

.. _class_VisualShaderNodeTexture:

VisualShaderNodeTexture
=======================

**Hérite de :** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Performs a 2D texture lookup within the visual shader graph.

.. rst-class:: classref-introduction-group

Description
-----------

Performs a lookup operation on the provided texture, with support for multiple texture sources to choose from.

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`Source<enum_VisualShaderNodeTexture_Source>`           | :ref:`source<class_VisualShaderNodeTexture_property_source>`             | ``0`` |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`Texture2D<class_Texture2D>`                            | :ref:`texture<class_VisualShaderNodeTexture_property_texture>`           |       |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>` | :ref:`texture_type<class_VisualShaderNodeTexture_property_texture_type>` | ``0`` |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_VisualShaderNodeTexture_Source:

.. rst-class:: classref-enumeration

enum **Source**: :ref:`🔗<enum_VisualShaderNodeTexture_Source>`

.. _class_VisualShaderNodeTexture_constant_SOURCE_TEXTURE:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_TEXTURE** = ``0``

Use the texture given as an argument for this function.

.. _class_VisualShaderNodeTexture_constant_SOURCE_SCREEN:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_SCREEN** = ``1``

Utilise la texture de la fenêtre d'affichage actuelle comme source.

.. _class_VisualShaderNodeTexture_constant_SOURCE_2D_TEXTURE:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_2D_TEXTURE** = ``2``

Use the texture from this shader's texture built-in (e.g. a texture of a :ref:`Sprite2D<class_Sprite2D>`).

.. _class_VisualShaderNodeTexture_constant_SOURCE_2D_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_2D_NORMAL** = ``3``

Use the texture from this shader's normal map built-in.

.. _class_VisualShaderNodeTexture_constant_SOURCE_DEPTH:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_DEPTH** = ``4``

Use the depth texture captured during the depth prepass. Only available when the depth prepass is used (i.e. in spatial shaders and in the forward_plus or gl_compatibility renderers).

.. _class_VisualShaderNodeTexture_constant_SOURCE_PORT:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_PORT** = ``5``

Utilise la texture spécifiée en entrée pour cette fonction.

.. _class_VisualShaderNodeTexture_constant_SOURCE_3D_NORMAL:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_3D_NORMAL** = ``6``

Use the normal buffer captured during the depth prepass. Only available when the normal-roughness buffer is available (i.e. in spatial shaders and in the forward_plus renderer).

.. _class_VisualShaderNodeTexture_constant_SOURCE_ROUGHNESS:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_ROUGHNESS** = ``7``

Use the roughness buffer captured during the depth prepass. Only available when the normal-roughness buffer is available (i.e. in spatial shaders and in the forward_plus renderer).

.. _class_VisualShaderNodeTexture_constant_SOURCE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **SOURCE_MAX** = ``8``

Représente la taille de l'énumération :ref:`Source<enum_VisualShaderNodeTexture_Source>`.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeTexture_TextureType:

.. rst-class:: classref-enumeration

enum **TextureType**: :ref:`🔗<enum_VisualShaderNodeTexture_TextureType>`

.. _class_VisualShaderNodeTexture_constant_TYPE_DATA:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>` **TYPE_DATA** = ``0``

Aucun indice n'a été ajouté à la déclaration de l'uniform.

.. _class_VisualShaderNodeTexture_constant_TYPE_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>` **TYPE_COLOR** = ``1``

Adds ``source_color`` as hint to the uniform declaration for proper conversion from nonlinear sRGB encoding to linear encoding.

.. _class_VisualShaderNodeTexture_constant_TYPE_NORMAL_MAP:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>` **TYPE_NORMAL_MAP** = ``2``

Ajoute ``hint_normal`` comme indication de la déclaration d'uniform, qui convertit en interne la texture pour l'utiliser de manière appropriée comme normal map.

.. _class_VisualShaderNodeTexture_constant_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>` **TYPE_MAX** = ``3``

Représente la taille de l’énumération :ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des propriétés
------------------------------------------------------

.. _class_VisualShaderNodeTexture_property_source:

.. rst-class:: classref-property

:ref:`Source<enum_VisualShaderNodeTexture_Source>` **source** = ``0`` :ref:`🔗<class_VisualShaderNodeTexture_property_source>`

.. rst-class:: classref-property-setget

- |void| **set_source**\ (\ value\: :ref:`Source<enum_VisualShaderNodeTexture_Source>`\ )
- :ref:`Source<enum_VisualShaderNodeTexture_Source>` **get_source**\ (\ )

Determines the source for the lookup.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeTexture_property_texture:

.. rst-class:: classref-property

:ref:`Texture2D<class_Texture2D>` **texture** :ref:`🔗<class_VisualShaderNodeTexture_property_texture>`

.. rst-class:: classref-property-setget

- |void| **set_texture**\ (\ value\: :ref:`Texture2D<class_Texture2D>`\ )
- :ref:`Texture2D<class_Texture2D>` **get_texture**\ (\ )

The source texture, if needed for the selected :ref:`source<class_VisualShaderNodeTexture_property_source>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeTexture_property_texture_type:

.. rst-class:: classref-property

:ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>` **texture_type** = ``0`` :ref:`🔗<class_VisualShaderNodeTexture_property_texture_type>`

.. rst-class:: classref-property-setget

- |void| **set_texture_type**\ (\ value\: :ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>`\ )
- :ref:`TextureType<enum_VisualShaderNodeTexture_TextureType>` **get_texture_type**\ (\ )

Specifies the type of the texture if :ref:`source<class_VisualShaderNodeTexture_property_source>` is set to :ref:`SOURCE_TEXTURE<class_VisualShaderNodeTexture_constant_SOURCE_TEXTURE>`.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
