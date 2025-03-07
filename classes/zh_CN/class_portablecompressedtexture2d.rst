:github_url: hide

.. DO NOT EDIT THIS FILE!!!
.. Generated automatically from Godot engine sources.
.. Generator: https://github.com/godotengine/godot/tree/master/doc/tools/make_rst.py.
.. XML source: https://github.com/godotengine/godot/tree/master/doc/classes/PortableCompressedTexture2D.xml.

.. _class_PortableCompressedTexture2D:

PortableCompressedTexture2D
===========================

**继承：** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

为磁盘和/或显存提供可移植的压缩纹理。

.. rst-class:: classref-introduction-group

描述
----

这个类能够将压缩纹理存储为自包含的资源（与导入资源相对）。

用于 2D 时（在磁盘上压缩、在显存中不压缩）推荐使用有损和无损模式。用于 3D 时（在显存中压缩）则取决于目标平台。

如果你只想用于桌面平台，则推荐使用 S3TC 或 BPTC。如果只用于移动平台，则推荐使用 ETC2。

如果要实现可移植、自包含的 3D 纹理，让这种纹理能同时在桌面和移动平台使用，则推荐 Basis Universal（尽管代价是有较小的质量损耗和更长的压缩时间）。

这个资源应使用代码创建。

.. rst-class:: classref-reftable-group

属性
----

.. table::
   :widths: auto

   +-------------------------------+--------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`keep_compressed_buffer<class_PortableCompressedTexture2D_property_keep_compressed_buffer>` | ``false``                                                                              |
   +-------------------------------+--------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | resource_local_to_scene                                                                          | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-------------------------------+--------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>` | :ref:`size_override<class_PortableCompressedTexture2D_property_size_override>`                   | ``Vector2(0, 0)``                                                                      |
   +-------------------------------+--------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

方法
----

.. table::
   :widths: auto

   +--------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`create_from_image<class_PortableCompressedTexture2D_method_create_from_image>`\ (\ image\: :ref:`Image<class_Image>`, compression_mode\: :ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>`, normal_map\: :ref:`bool<class_bool>` = false, lossy_quality\: :ref:`float<class_float>` = 0.8\ ) |
   +--------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>` | :ref:`get_compression_mode<class_PortableCompressedTexture2D_method_get_compression_mode>`\ (\ ) |const|                                                                                                                                                                                                                  |
   +--------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Format<enum_Image_Format>`                                         | :ref:`get_format<class_PortableCompressedTexture2D_method_get_format>`\ (\ ) |const|                                                                                                                                                                                                                                      |
   +--------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                                                  | :ref:`is_keeping_all_compressed_buffers<class_PortableCompressedTexture2D_method_is_keeping_all_compressed_buffers>`\ (\ ) |static|                                                                                                                                                                                       |
   +--------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                                   | :ref:`set_keep_all_compressed_buffers<class_PortableCompressedTexture2D_method_set_keep_all_compressed_buffers>`\ (\ keep\: :ref:`bool<class_bool>`\ ) |static|                                                                                                                                                           |
   +--------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

枚举
----

.. _enum_PortableCompressedTexture2D_CompressionMode:

.. rst-class:: classref-enumeration

enum **CompressionMode**: :ref:`🔗<enum_PortableCompressedTexture2D_CompressionMode>`

.. _class_PortableCompressedTexture2D_constant_COMPRESSION_MODE_LOSSLESS:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>` **COMPRESSION_MODE_LOSSLESS** = ``0``

.. container:: contribute

	该枚举目前没有描述，请帮我们\ :ref:`贡献一个 <doc_updating_the_class_reference>`\ 吧！



.. _class_PortableCompressedTexture2D_constant_COMPRESSION_MODE_LOSSY:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>` **COMPRESSION_MODE_LOSSY** = ``1``

.. container:: contribute

	该枚举目前没有描述，请帮我们\ :ref:`贡献一个 <doc_updating_the_class_reference>`\ 吧！



.. _class_PortableCompressedTexture2D_constant_COMPRESSION_MODE_BASIS_UNIVERSAL:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>` **COMPRESSION_MODE_BASIS_UNIVERSAL** = ``2``

.. container:: contribute

	该枚举目前没有描述，请帮我们\ :ref:`贡献一个 <doc_updating_the_class_reference>`\ 吧！



.. _class_PortableCompressedTexture2D_constant_COMPRESSION_MODE_S3TC:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>` **COMPRESSION_MODE_S3TC** = ``3``

.. container:: contribute

	该枚举目前没有描述，请帮我们\ :ref:`贡献一个 <doc_updating_the_class_reference>`\ 吧！



.. _class_PortableCompressedTexture2D_constant_COMPRESSION_MODE_ETC2:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>` **COMPRESSION_MODE_ETC2** = ``4``

.. container:: contribute

	该枚举目前没有描述，请帮我们\ :ref:`贡献一个 <doc_updating_the_class_reference>`\ 吧！



.. _class_PortableCompressedTexture2D_constant_COMPRESSION_MODE_BPTC:

.. rst-class:: classref-enumeration-constant

:ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>` **COMPRESSION_MODE_BPTC** = ``5``

.. container:: contribute

	该枚举目前没有描述，请帮我们\ :ref:`贡献一个 <doc_updating_the_class_reference>`\ 吧！



.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

属性说明
--------

.. _class_PortableCompressedTexture2D_property_keep_compressed_buffer:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **keep_compressed_buffer** = ``false`` :ref:`🔗<class_PortableCompressedTexture2D_property_keep_compressed_buffer>`

.. rst-class:: classref-property-setget

- |void| **set_keep_compressed_buffer**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_keeping_compressed_buffer**\ (\ )

在编辑器中运行时，这个类会将来源压缩数据保持在内存中。否则加载资源后来源压缩数据就会丢失，资源也无法重新保存。

如果你要在加载后再次进行持久化，这个标志能够让压缩数据保持在内存中。

.. rst-class:: classref-item-separator

----

.. _class_PortableCompressedTexture2D_property_size_override:

.. rst-class:: classref-property

:ref:`Vector2<class_Vector2>` **size_override** = ``Vector2(0, 0)`` :ref:`🔗<class_PortableCompressedTexture2D_property_size_override>`

.. rst-class:: classref-property-setget

- |void| **set_size_override**\ (\ value\: :ref:`Vector2<class_Vector2>`\ )
- :ref:`Vector2<class_Vector2>` **get_size_override**\ (\ )

允许覆盖纹理大小（仅限 2D）。

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

方法说明
--------

.. _class_PortableCompressedTexture2D_method_create_from_image:

.. rst-class:: classref-method

|void| **create_from_image**\ (\ image\: :ref:`Image<class_Image>`, compression_mode\: :ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>`, normal_map\: :ref:`bool<class_bool>` = false, lossy_quality\: :ref:`float<class_float>` = 0.8\ ) :ref:`🔗<class_PortableCompressedTexture2D_method_create_from_image>`

使用基础图像初始化压缩纹理。必须提供压缩模式。

如果该图像会用作法线贴图，则推荐使用 ``normal_map``\ ，确保达到最佳质量。

如果请求了有损压缩，还可以提供质量设置。会映射至有损 WebP 压缩质量。

.. rst-class:: classref-item-separator

----

.. _class_PortableCompressedTexture2D_method_get_compression_mode:

.. rst-class:: classref-method

:ref:`CompressionMode<enum_PortableCompressedTexture2D_CompressionMode>` **get_compression_mode**\ (\ ) |const| :ref:`🔗<class_PortableCompressedTexture2D_method_get_compression_mode>`

返回使用的压缩模式（初始化后有效）。

.. rst-class:: classref-item-separator

----

.. _class_PortableCompressedTexture2D_method_get_format:

.. rst-class:: classref-method

:ref:`Format<enum_Image_Format>` **get_format**\ (\ ) |const| :ref:`🔗<class_PortableCompressedTexture2D_method_get_format>`

返回使用的图像格式（初始化后有效）。

.. rst-class:: classref-item-separator

----

.. _class_PortableCompressedTexture2D_method_is_keeping_all_compressed_buffers:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **is_keeping_all_compressed_buffers**\ (\ ) |static| :ref:`🔗<class_PortableCompressedTexture2D_method_is_keeping_all_compressed_buffers>`

返回是否为所有该类型的纹理覆盖该标志。

.. rst-class:: classref-item-separator

----

.. _class_PortableCompressedTexture2D_method_set_keep_all_compressed_buffers:

.. rst-class:: classref-method

|void| **set_keep_all_compressed_buffers**\ (\ keep\: :ref:`bool<class_bool>`\ ) |static| :ref:`🔗<class_PortableCompressedTexture2D_method_set_keep_all_compressed_buffers>`

为该类型的所有纹理全局覆盖该标志。主要由编辑器使用。

.. |virtual| replace:: :abbr:`virtual (本方法通常需要用户覆盖才能生效。)`
.. |const| replace:: :abbr:`const (本方法无副作用，不会修改该实例的任何成员变量。)`
.. |vararg| replace:: :abbr:`vararg (本方法除了能接受在此处描述的参数外，还能够继续接受任意数量的参数。)`
.. |constructor| replace:: :abbr:`constructor (本方法用于构造某个类型。)`
.. |static| replace:: :abbr:`static (调用本方法无需实例，可直接使用类名进行调用。)`
.. |operator| replace:: :abbr:`operator (本方法描述的是使用本类型作为左操作数的有效运算符。)`
.. |bitfield| replace:: :abbr:`BitField (这个值是由下列位标志构成位掩码的整数。)`
.. |void| replace:: :abbr:`void (无返回值。)`
