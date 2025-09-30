:github_url: hide

.. _class_Texture3D:

Texture3D
=========

**Hérite de :** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité de:** :ref:`CompressedTexture3D<class_CompressedTexture3D>`, :ref:`ImageTexture3D<class_ImageTexture3D>`, :ref:`NoiseTexture3D<class_NoiseTexture3D>`, :ref:`PlaceholderTexture3D<class_PlaceholderTexture3D>`, :ref:`Texture3DRD<class_Texture3DRD>`

Base class for 3-dimensional textures.

.. rst-class:: classref-introduction-group

Description
-----------

Base class for :ref:`ImageTexture3D<class_ImageTexture3D>` and :ref:`CompressedTexture3D<class_CompressedTexture3D>`. Cannot be used directly, but contains all the functions necessary for accessing the derived resource types. **Texture3D** is the base class for all 3-dimensional texture types. See also :ref:`TextureLayered<class_TextureLayered>`.

All images need to have the same width, height and number of mipmap levels.

To create such a texture file yourself, reimport your image files using the Godot Editor import presets.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\] | :ref:`_get_data<class_Texture3D_private_method__get_data>`\ (\ ) |virtual| |required| |const|       |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`_get_depth<class_Texture3D_private_method__get_depth>`\ (\ ) |virtual| |required| |const|     |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`Format<enum_Image_Format>`                       | :ref:`_get_format<class_Texture3D_private_method__get_format>`\ (\ ) |virtual| |required| |const|   |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`_get_height<class_Texture3D_private_method__get_height>`\ (\ ) |virtual| |required| |const|   |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`_get_width<class_Texture3D_private_method__get_width>`\ (\ ) |virtual| |required| |const|     |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`_has_mipmaps<class_Texture3D_private_method__has_mipmaps>`\ (\ ) |virtual| |required| |const| |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`Resource<class_Resource>`                        | :ref:`create_placeholder<class_Texture3D_method_create_placeholder>`\ (\ ) |const|                  |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\] | :ref:`get_data<class_Texture3D_method_get_data>`\ (\ ) |const|                                      |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`get_depth<class_Texture3D_method_get_depth>`\ (\ ) |const|                                    |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`Format<enum_Image_Format>`                       | :ref:`get_format<class_Texture3D_method_get_format>`\ (\ ) |const|                                  |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`get_height<class_Texture3D_method_get_height>`\ (\ ) |const|                                  |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                                  | :ref:`get_width<class_Texture3D_method_get_width>`\ (\ ) |const|                                    |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                | :ref:`has_mipmaps<class_Texture3D_method_has_mipmaps>`\ (\ ) |const|                                |
   +--------------------------------------------------------+-----------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_Texture3D_private_method__get_data:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\] **_get_data**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture3D_private_method__get_data>`

Appelée quand les données de la **Texture3D** sont demandées.

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_private_method__get_depth:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_depth**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture3D_private_method__get_depth>`

Appelée quand la profondeur de la **Texture3D** est demandée.

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_private_method__get_format:

.. rst-class:: classref-method

:ref:`Format<enum_Image_Format>` **_get_format**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture3D_private_method__get_format>`

Appelée quand le format de la **Texture3D** est demandé.

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_private_method__get_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_height**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture3D_private_method__get_height>`

Appelée quand la hauteur de la **Texture3D** est demandée.

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_private_method__get_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_width**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture3D_private_method__get_width>`

Appelée quand la largeur de la **Texture3D** est demandée.

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_private_method__has_mipmaps:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_mipmaps**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_Texture3D_private_method__has_mipmaps>`

Called when the presence of mipmaps in the **Texture3D** is queried.

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_method_create_placeholder:

.. rst-class:: classref-method

:ref:`Resource<class_Resource>` **create_placeholder**\ (\ ) |const| :ref:`🔗<class_Texture3D_method_create_placeholder>`

Creates a placeholder version of this resource (:ref:`PlaceholderTexture3D<class_PlaceholderTexture3D>`).

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_method_get_data:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\] **get_data**\ (\ ) |const| :ref:`🔗<class_Texture3D_method_get_data>`

Returns the **Texture3D**'s data as an array of :ref:`Image<class_Image>`\ s. Each :ref:`Image<class_Image>` represents a *slice* of the **Texture3D**, with different slices mapping to different depth (Z axis) levels.

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_method_get_depth:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_depth**\ (\ ) |const| :ref:`🔗<class_Texture3D_method_get_depth>`

Returns the **Texture3D**'s depth in pixels. Depth is typically represented by the Z axis (a dimension not present in :ref:`Texture2D<class_Texture2D>`).

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_method_get_format:

.. rst-class:: classref-method

:ref:`Format<enum_Image_Format>` **get_format**\ (\ ) |const| :ref:`🔗<class_Texture3D_method_get_format>`

Returns the current format being used by this texture.

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_method_get_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_height**\ (\ ) |const| :ref:`🔗<class_Texture3D_method_get_height>`

Returns the **Texture3D**'s height in pixels. Width is typically represented by the Y axis.

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_method_get_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_width**\ (\ ) |const| :ref:`🔗<class_Texture3D_method_get_width>`

Returns the **Texture3D**'s width in pixels. Width is typically represented by the X axis.

.. rst-class:: classref-item-separator

----

.. _class_Texture3D_method_has_mipmaps:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_mipmaps**\ (\ ) |const| :ref:`🔗<class_Texture3D_method_has_mipmaps>`

Renvoie ``true`` si la **Texture3D** a des mipmaps générées.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
