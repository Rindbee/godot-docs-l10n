:github_url: hide

.. _class_ImageTexture:

ImageTexture
============

**Hérite de :** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Une :ref:`Texture2D<class_Texture2D>` basée sur une :ref:`Image<class_Image>`.

.. rst-class:: classref-introduction-group

Description
-----------

A :ref:`Texture2D<class_Texture2D>` based on an :ref:`Image<class_Image>`. For an image to be displayed, an **ImageTexture** has to be created from it using the :ref:`create_from_image()<class_ImageTexture_method_create_from_image>` method:

::

    var image = Image.load_from_file("res://icon.svg")
    var texture = ImageTexture.create_from_image(image)
    $Sprite2D.texture = texture

This way, textures can be created at run-time by loading images both from within the editor and externally.

\ **Warning:** Prefer to load imported textures with :ref:`@GDScript.load()<class_@GDScript_method_load>` over loading them from within the filesystem dynamically with :ref:`Image.load()<class_Image_method_load>`, as it may not work in exported projects:

::

    var texture = load("res://icon.svg")
    $Sprite2D.texture = texture

This is because images have to be imported as a :ref:`CompressedTexture2D<class_CompressedTexture2D>` first to be loaded with :ref:`@GDScript.load()<class_@GDScript_method_load>`. If you'd still like to load an image file just like any other :ref:`Resource<class_Resource>`, import it as an :ref:`Image<class_Image>` resource instead, and then load it normally using the :ref:`@GDScript.load()<class_@GDScript_method_load>` method.

\ **Note:** The image can be retrieved from an imported texture using the :ref:`Texture2D.get_image()<class_Texture2D_method_get_image>` method, which returns a copy of the image:

::

    var texture = load("res://icon.svg")
    var image = texture.get_image()

An **ImageTexture** is not meant to be operated from within the editor interface directly, and is mostly useful for rendering images on screen dynamically via code. If you need to generate images procedurally from within the editor, consider saving and importing images as custom texture resources implementing a new :ref:`EditorImportPlugin<class_EditorImportPlugin>`.

\ **Note:** The maximum texture size is 16384×16384 pixels due to graphics hardware limitations.

.. rst-class:: classref-introduction-group

Tutoriels
------------------

- :doc:`Importer des images <../tutorials/assets_pipeline/importing_images>`

.. rst-class:: classref-reftable-group

Propriétés
--------------------

.. table::
   :widths: auto

   +-------------------------+-------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | resource_local_to_scene | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------+-------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Méthodes
----------------

.. table::
   :widths: auto

   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`ImageTexture<class_ImageTexture>` | :ref:`create_from_image<class_ImageTexture_method_create_from_image>`\ (\ image\: :ref:`Image<class_Image>`\ ) |static| |
   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Format<enum_Image_Format>`        | :ref:`get_format<class_ImageTexture_method_get_format>`\ (\ ) |const|                                                   |
   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | |void|                                  | :ref:`set_image<class_ImageTexture_method_set_image>`\ (\ image\: :ref:`Image<class_Image>`\ )                          |
   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | |void|                                  | :ref:`set_size_override<class_ImageTexture_method_set_size_override>`\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ )     |
   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+
   | |void|                                  | :ref:`update<class_ImageTexture_method_update>`\ (\ image\: :ref:`Image<class_Image>`\ )                                |
   +-----------------------------------------+-------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descriptions des méthodes
--------------------------------------------------

.. _class_ImageTexture_method_create_from_image:

.. rst-class:: classref-method

:ref:`ImageTexture<class_ImageTexture>` **create_from_image**\ (\ image\: :ref:`Image<class_Image>`\ ) |static| :ref:`🔗<class_ImageTexture_method_create_from_image>`

Creates a new **ImageTexture** and initializes it by allocating and setting the data from an :ref:`Image<class_Image>`.

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture_method_get_format:

.. rst-class:: classref-method

:ref:`Format<enum_Image_Format>` **get_format**\ (\ ) |const| :ref:`🔗<class_ImageTexture_method_get_format>`

Returns the format of the texture.

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture_method_set_image:

.. rst-class:: classref-method

|void| **set_image**\ (\ image\: :ref:`Image<class_Image>`\ ) :ref:`🔗<class_ImageTexture_method_set_image>`

Replaces the texture's data with a new :ref:`Image<class_Image>`. This will re-allocate new memory for the texture.

If you want to update the image, but don't need to change its parameters (format, size), use :ref:`update()<class_ImageTexture_method_update>` instead for better performance.

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture_method_set_size_override:

.. rst-class:: classref-method

|void| **set_size_override**\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_ImageTexture_method_set_size_override>`

Redimensionne la texture aux dimensions spécifiées.

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture_method_update:

.. rst-class:: classref-method

|void| **update**\ (\ image\: :ref:`Image<class_Image>`\ ) :ref:`🔗<class_ImageTexture_method_update>`

Replaces the texture's data with a new :ref:`Image<class_Image>`.

\ **Note:** The texture has to be created using :ref:`create_from_image()<class_ImageTexture_method_create_from_image>` or initialized first with the :ref:`set_image()<class_ImageTexture_method_set_image>` method before it can be updated. The new image dimensions, format, and mipmaps configuration should match the existing texture's image configuration.

Use this method over :ref:`set_image()<class_ImageTexture_method_set_image>` if you need to update the texture frequently, which is faster than allocating additional memory for a new texture each time.

.. |virtual| replace:: :abbr:`virtual (Cette méthode doit typiquement être redéfinie par l'utilisateur pour avoir un effet.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Cette méthode n'a pas d'effets de bord. Elle ne modifie aucune des variables membres de l'instance.)`
.. |vararg| replace:: :abbr:`vararg (Cette méthode accepte n'importe quel nombre d'arguments après ceux décris ici.)`
.. |constructor| replace:: :abbr:`constructor (Cette méthode est utilisée pour construire un type.)`
.. |static| replace:: :abbr:`static (Cette méthode n'a pas besoin d'instance pour être appelée, elle peut donc être directement appelée en utilisant le nom de la classe.)`
.. |operator| replace:: :abbr:`operator (Cette méthode décrit un opérateur valide à utiliser avec ce type en tant qu'opérande gauche.)`
.. |bitfield| replace:: :abbr:`BitField (Cette valeur est un nombre entier composé d'un masque de bits des options suivantes.)`
.. |void| replace:: :abbr:`void (Aucune valeur de retour.)`
