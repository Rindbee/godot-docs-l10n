:github_url: hide

.. _class_ImageTextureLayered:

ImageTextureLayered
===================

**Hérite de :** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Hérité de:** :ref:`Cubemap<class_Cubemap>`, :ref:`CubemapArray<class_CubemapArray>`, :ref:`Texture2DArray<class_Texture2DArray>`

Base class for texture types which contain the data of multiple :ref:`ImageTexture<class_ImageTexture>`\ s. Each image is of the same size and format.

.. rst-class:: classref-introduction-group

Description
-----------

Base class for :ref:`Texture2DArray<class_Texture2DArray>`, :ref:`Cubemap<class_Cubemap>` and :ref:`CubemapArray<class_CubemapArray>`. Cannot be used directly, but contains all the functions necessary for accessing the derived resource types. See also :ref:`Texture3D<class_Texture3D>`.

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Error<enum_@GlobalScope_Error>` | :ref:`create_from_images<class_ImageTextureLayered_method_create_from_images>`\ (\ images\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ ) |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                | :ref:`update_layer<class_ImageTextureLayered_method_update_layer>`\ (\ image\: :ref:`Image<class_Image>`, layer\: :ref:`int<class_int>`\ )            |
   +---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ImageTextureLayered_method_create_from_images:

.. rst-class:: classref-method

:ref:`Error<enum_@GlobalScope_Error>` **create_from_images**\ (\ images\: :ref:`Array<class_Array>`\[:ref:`Image<class_Image>`\]\ ) :ref:`🔗<class_ImageTextureLayered_method_create_from_images>`

Creates an **ImageTextureLayered** from an array of :ref:`Image<class_Image>`\ s. See :ref:`Image.create()<class_Image_method_create>` for the expected data format. The first image decides the width, height, image format and mipmapping setting. The other images *must* have the same width, height, image format and mipmapping setting.

Each :ref:`Image<class_Image>` represents one ``layer``.

::

    # Fill in an array of Images with different colors.
    var images = []
    const LAYERS = 6
    for i in LAYERS:
        var image = Image.create_empty(128, 128, false, Image.FORMAT_RGB8)
        if i % 3 == 0:
            image.fill(Color.RED)
        elif i % 3 == 1:
            image.fill(Color.GREEN)
        else:
            image.fill(Color.BLUE)
        images.push_back(image)

    # Create and save a 2D texture array. The array of images must have at least 1 Image.
    var texture_2d_array = Texture2DArray.new()
    texture_2d_array.create_from_images(images)
    ResourceSaver.save(texture_2d_array, "res://texture_2d_array.res", ResourceSaver.FLAG_COMPRESS)

    # Create and save a cubemap. The array of images must have exactly 6 Images.
    # The cubemap's images are specified in this order: X+, X-, Y+, Y-, Z+, Z-
    # (in Godot's coordinate system, so Y+ is "up" and Z- is "forward").
    var cubemap = Cubemap.new()
    cubemap.create_from_images(images)
    ResourceSaver.save(cubemap, "res://cubemap.res", ResourceSaver.FLAG_COMPRESS)

    # Create and save a cubemap array. The array of images must have a multiple of 6 Images.
    # Each cubemap's images are specified in this order: X+, X-, Y+, Y-, Z+, Z-
    # (in Godot's coordinate system, so Y+ is "up" and Z- is "forward").
    var cubemap_array = CubemapArray.new()
    cubemap_array.create_from_images(images)
    ResourceSaver.save(cubemap_array, "res://cubemap_array.res", ResourceSaver.FLAG_COMPRESS)

.. rst-class:: classref-item-separator

----

.. _class_ImageTextureLayered_method_update_layer:

.. rst-class:: classref-method

|void| **update_layer**\ (\ image\: :ref:`Image<class_Image>`, layer\: :ref:`int<class_int>`\ ) :ref:`🔗<class_ImageTextureLayered_method_update_layer>`

Replaces the existing :ref:`Image<class_Image>` data at the given ``layer`` with this new image.

The given :ref:`Image<class_Image>` must have the same width, height, image format, and mipmapping flag as the rest of the referenced images.

If the image format is unsupported, it will be decompressed and converted to a similar and supported :ref:`Format<enum_Image_Format>`.

The update is immediate: it's synchronized with drawing.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
