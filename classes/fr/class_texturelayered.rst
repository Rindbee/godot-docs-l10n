:github_url: hide

.. _class_TextureLayered:

TextureLayered
==============

**Hérite de :** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité par :** :ref:`CompressedTextureLayered<class_CompressedTextureLayered>`, :ref:`ImageTextureLayered<class_ImageTextureLayered>`, :ref:`PlaceholderTextureLayered<class_PlaceholderTextureLayered>`, :ref:`TextureLayeredRD<class_TextureLayeredRD>`

Base class for texture types which contain the data of multiple :ref:`Image<class_Image>`\ s. Each image is of the same size and format.

.. rst-class:: classref-introduction-group

Description
-----------

Base class for :ref:`ImageTextureLayered<class_ImageTextureLayered>` and :ref:`CompressedTextureLayered<class_CompressedTextureLayered>`. Cannot be used directly, but contains all the functions necessary for accessing the derived resource types. See also :ref:`Texture3D<class_Texture3D>`.

Data is set on a per-layer basis. For :ref:`Texture2DArray<class_Texture2DArray>`\ s, the layer specifies the array layer.

All images need to have the same width, height and number of mipmap levels.

A **TextureLayered** can be loaded with :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>`.

Internally, Godot maps these files to their respective counterparts in the target rendering driver (Vulkan, OpenGL3).

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Format<enum_Image_Format>`                    | :ref:`_get_format<class_TextureLayered_private_method__get_format>`\ (\ ) |virtual| |required| |const|                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`_get_height<class_TextureLayered_private_method__get_height>`\ (\ ) |virtual| |required| |const|                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Image<class_Image>`                           | :ref:`_get_layer_data<class_TextureLayered_private_method__get_layer_data>`\ (\ layer_index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`_get_layered_type<class_TextureLayered_private_method__get_layered_type>`\ (\ ) |virtual| |required| |const|                                  |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`_get_layers<class_TextureLayered_private_method__get_layers>`\ (\ ) |virtual| |required| |const|                                              |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`_get_width<class_TextureLayered_private_method__get_width>`\ (\ ) |virtual| |required| |const|                                                |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`_has_mipmaps<class_TextureLayered_private_method__has_mipmaps>`\ (\ ) |virtual| |required| |const|                                            |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Format<enum_Image_Format>`                    | :ref:`get_format<class_TextureLayered_method_get_format>`\ (\ ) |const|                                                                             |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_height<class_TextureLayered_method_get_height>`\ (\ ) |const|                                                                             |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Image<class_Image>`                           | :ref:`get_layer_data<class_TextureLayered_method_get_layer_data>`\ (\ layer\: :ref:`int<class_int>`\ ) |const|                                      |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`LayeredType<enum_TextureLayered_LayeredType>` | :ref:`get_layered_type<class_TextureLayered_method_get_layered_type>`\ (\ ) |const|                                                                 |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_layers<class_TextureLayered_method_get_layers>`\ (\ ) |const|                                                                             |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                               | :ref:`get_width<class_TextureLayered_method_get_width>`\ (\ ) |const|                                                                               |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`has_mipmaps<class_TextureLayered_method_has_mipmaps>`\ (\ ) |const|                                                                           |
   +-----------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Énumérations
------------------------

.. _enum_TextureLayered_LayeredType:

.. rst-class:: classref-enumeration

enum **LayeredType**: :ref:`🔗<enum_TextureLayered_LayeredType>`

.. _class_TextureLayered_constant_LAYERED_TYPE_2D_ARRAY:

.. rst-class:: classref-enumeration-constant

:ref:`LayeredType<enum_TextureLayered_LayeredType>` **LAYERED_TYPE_2D_ARRAY** = ``0``

Texture is a generic :ref:`Texture2DArray<class_Texture2DArray>`.

.. _class_TextureLayered_constant_LAYERED_TYPE_CUBEMAP:

.. rst-class:: classref-enumeration-constant

:ref:`LayeredType<enum_TextureLayered_LayeredType>` **LAYERED_TYPE_CUBEMAP** = ``1``

Texture is a :ref:`Cubemap<class_Cubemap>`, with each side in its own layer (6 in total).

.. _class_TextureLayered_constant_LAYERED_TYPE_CUBEMAP_ARRAY:

.. rst-class:: classref-enumeration-constant

:ref:`LayeredType<enum_TextureLayered_LayeredType>` **LAYERED_TYPE_CUBEMAP_ARRAY** = ``2``

Texture is a :ref:`CubemapArray<class_CubemapArray>`, with each cubemap being made of 6 layers.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_TextureLayered_private_method__get_format:

.. rst-class:: classref-method

:ref:`Format<enum_Image_Format>` **_get_format**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__get_format>`

Called when the **TextureLayered**'s format is queried.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_private_method__get_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_height**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__get_height>`

Called when the **TextureLayered**'s height is queried.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_private_method__get_layer_data:

.. rst-class:: classref-method

:ref:`Image<class_Image>` **_get_layer_data**\ (\ layer_index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__get_layer_data>`

Called when the data for a layer in the **TextureLayered** is queried.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_private_method__get_layered_type:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_layered_type**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__get_layered_type>`

Called when the layers' type in the **TextureLayered** is queried.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_private_method__get_layers:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_layers**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__get_layers>`

Called when the number of layers in the **TextureLayered** is queried.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_private_method__get_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_width**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__get_width>`

Called when the **TextureLayered**'s width queried.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_private_method__has_mipmaps:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_mipmaps**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__has_mipmaps>`

Called when the presence of mipmaps in the **TextureLayered** is queried.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_get_format:

.. rst-class:: classref-method

:ref:`Format<enum_Image_Format>` **get_format**\ (\ ) |const| :ref:`🔗<class_TextureLayered_method_get_format>`

Returns the current format being used by this texture.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_get_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_height**\ (\ ) |const| :ref:`🔗<class_TextureLayered_method_get_height>`

Returns the height of the texture in pixels. Height is typically represented by the Y axis.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_get_layer_data:

.. rst-class:: classref-method

:ref:`Image<class_Image>` **get_layer_data**\ (\ layer\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextureLayered_method_get_layer_data>`

Returns an :ref:`Image<class_Image>` resource with the data from specified ``layer``.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_get_layered_type:

.. rst-class:: classref-method

:ref:`LayeredType<enum_TextureLayered_LayeredType>` **get_layered_type**\ (\ ) |const| :ref:`🔗<class_TextureLayered_method_get_layered_type>`

Returns the **TextureLayered**'s type. The type determines how the data is accessed, with cubemaps having special types.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_get_layers:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_layers**\ (\ ) |const| :ref:`🔗<class_TextureLayered_method_get_layers>`

Renvoie le nombre d':ref:`Image<class_Image>`\ s référencées.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_get_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_width**\ (\ ) |const| :ref:`🔗<class_TextureLayered_method_get_width>`

Returns the width of the texture in pixels. Width is typically represented by the X axis.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_has_mipmaps:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_mipmaps**\ (\ ) |const| :ref:`🔗<class_TextureLayered_method_has_mipmaps>`

Renvoie ``true`` si les couches ont des mipmaps générées.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
