:github_url: hide

.. DO NOT EDIT THIS FILE!!!
.. Generated automatically from Godot engine sources.
.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/ImageTexture.xml.

.. _class_ImageTexture:

ImageTexture
============

**继承：** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

基于 :ref:`Image<class_Image>` 的 :ref:`Texture2D<class_Texture2D>`\ 。

.. rst-class:: classref-introduction-group

描述
----

A :ref:`Texture2D<class_Texture2D>` based on an :ref:`Image<class_Image>`. For an image to be displayed, an **ImageTexture** has to be created from it using the :ref:`create_from_image<class_ImageTexture_method_create_from_image>` method:

::

    var image = Image.load_from_file("res://icon.svg")
    var texture = ImageTexture.create_from_image(image)
    $Sprite2D.texture = texture

This way, textures can be created at run-time by loading images both from within the editor and externally.

\ **Warning:** Prefer to load imported textures with :ref:`@GDScript.load<class_@GDScript_method_load>` over loading them from within the filesystem dynamically with :ref:`Image.load<class_Image_method_load>`, as it may not work in exported projects:

::

    var texture = load("res://icon.svg")
    $Sprite2D.texture = texture

This is because images have to be imported as a :ref:`CompressedTexture2D<class_CompressedTexture2D>` first to be loaded with :ref:`@GDScript.load<class_@GDScript_method_load>`. If you'd still like to load an image file just like any other :ref:`Resource<class_Resource>`, import it as an :ref:`Image<class_Image>` resource instead, and then load it normally using the :ref:`@GDScript.load<class_@GDScript_method_load>` method.

\ **Note:** The image can be retrieved from an imported texture using the :ref:`Texture2D.get_image<class_Texture2D_method_get_image>` method, which returns a copy of the image:

::

    var texture = load("res://icon.svg")
    var image = texture.get_image()

An **ImageTexture** is not meant to be operated from within the editor interface directly, and is mostly useful for rendering images on screen dynamically via code. If you need to generate images procedurally from within the editor, consider saving and importing images as custom texture resources implementing a new :ref:`EditorImportPlugin<class_EditorImportPlugin>`.

\ **Note:** The maximum texture size is 16384×16384 pixels due to graphics hardware limitations.

.. rst-class:: classref-introduction-group

教程
----

- :doc:`导入图像 <../tutorials/assets_pipeline/importing_images>`

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------+-------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>` | resource_local_to_scene | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------+-------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

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

方法说明
--------

.. _class_ImageTexture_method_create_from_image:

.. rst-class:: classref-method

:ref:`ImageTexture<class_ImageTexture>` **create_from_image**\ (\ image\: :ref:`Image<class_Image>`\ ) |static| :ref:`🔗<class_ImageTexture_method_create_from_image>`

创建一个新的 **ImageTexture**\ ，并通过分配和设置来自 :ref:`Image<class_Image>` 的数据来初始化它。

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture_method_get_format:

.. rst-class:: classref-method

:ref:`Format<enum_Image_Format>` **get_format**\ (\ ) |const| :ref:`🔗<class_ImageTexture_method_get_format>`

返回纹理的格式，\ :ref:`Format<enum_Image_Format>` 之一。

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture_method_set_image:

.. rst-class:: classref-method

|void| **set_image**\ (\ image\: :ref:`Image<class_Image>`\ ) :ref:`🔗<class_ImageTexture_method_set_image>`

用新的 :ref:`Image<class_Image>` 替换该纹理的数据。这将为该纹理重新分配新内存。

如果要更新图像，但不需要更改其参数（格式、大小），请改用 :ref:`update<class_ImageTexture_method_update>` 以获得更好的性能。

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture_method_set_size_override:

.. rst-class:: classref-method

|void| **set_size_override**\ (\ size\: :ref:`Vector2i<class_Vector2i>`\ ) :ref:`🔗<class_ImageTexture_method_set_size_override>`

将纹理的大小调整为指定的尺寸。

.. rst-class:: classref-item-separator

----

.. _class_ImageTexture_method_update:

.. rst-class:: classref-method

|void| **update**\ (\ image\: :ref:`Image<class_Image>`\ ) :ref:`🔗<class_ImageTexture_method_update>`

用新的 :ref:`Image<class_Image>` 替换该纹理的数据。

\ **注意：**\ 该纹理必须使用 :ref:`create_from_image<class_ImageTexture_method_create_from_image>` 创建或首先使用 :ref:`set_image<class_ImageTexture_method_set_image>` 方法初始化，然后才能更新。新的图像大小、格式和 mipmap 配置，应与现有纹理的图像配置相匹配。

如果需要频繁更新纹理，请使用该方法而不是 :ref:`set_image<class_ImageTexture_method_set_image>`\ ，这比每次为一个新纹理分配额外内存要快。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
