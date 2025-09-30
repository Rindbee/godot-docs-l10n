:github_url: hide

.. _class_TextureLayered:

TextureLayered
==============

**Hereda:** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`CompressedTextureLayered<class_CompressedTextureLayered>`, :ref:`ImageTextureLayered<class_ImageTextureLayered>`, :ref:`PlaceholderTextureLayered<class_PlaceholderTextureLayered>`, :ref:`TextureLayeredRD<class_TextureLayeredRD>`

Clase base para los tipos de textura que contienen los datos de múltiples :ref:`Image<class_Image>`\ s. Cada imagen es del mismo tamaño y formato.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Clase base para :ref:`ImageTextureLayered<class_ImageTextureLayered>` y :ref:`CompressedTextureLayered<class_CompressedTextureLayered>`. No se puede utilizar directamente, pero contiene todas las funciones necesarias para acceder a los tipos de recursos derivados. Véase también :ref:`Texture3D<class_Texture3D>`.

Los datos se establecen por capas. Para los :ref:`Texture2DArray<class_Texture2DArray>`, la capa especifica la capa del array.

Todas las imágenes deben tener el mismo ancho, alto y número de niveles de mipmap.

Una **TextureLayered** se puede cargar con :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>`.

Internamente, Godot asigna estos archivos a sus contrapartes respectivos en el controlador de renderizado de destino (Vulkan, OpenGL3).

.. rst-class:: classref-reftable-group

Métodos
--------------

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

Enumeraciones
--------------------------

.. _enum_TextureLayered_LayeredType:

.. rst-class:: classref-enumeration

enum **LayeredType**: :ref:`🔗<enum_TextureLayered_LayeredType>`

.. _class_TextureLayered_constant_LAYERED_TYPE_2D_ARRAY:

.. rst-class:: classref-enumeration-constant

:ref:`LayeredType<enum_TextureLayered_LayeredType>` **LAYERED_TYPE_2D_ARRAY** = ``0``

La textura es una :ref:`Texture2DArray<class_Texture2DArray>` genérica.

.. _class_TextureLayered_constant_LAYERED_TYPE_CUBEMAP:

.. rst-class:: classref-enumeration-constant

:ref:`LayeredType<enum_TextureLayered_LayeredType>` **LAYERED_TYPE_CUBEMAP** = ``1``

La textura es un :ref:`Cubemap<class_Cubemap>`, con cada cara en su propia capa (6 en total).

.. _class_TextureLayered_constant_LAYERED_TYPE_CUBEMAP_ARRAY:

.. rst-class:: classref-enumeration-constant

:ref:`LayeredType<enum_TextureLayered_LayeredType>` **LAYERED_TYPE_CUBEMAP_ARRAY** = ``2``

La textura es un :ref:`CubemapArray<class_CubemapArray>`, con cada cubemap compuesto por 6 capas.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_TextureLayered_private_method__get_format:

.. rst-class:: classref-method

:ref:`Format<enum_Image_Format>` **_get_format**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__get_format>`

Llamado cuando se consulta el formato de **TextureLayered**.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_private_method__get_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_height**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__get_height>`

Llamado cuando se consulta la altura de **TextureLayered**.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_private_method__get_layer_data:

.. rst-class:: classref-method

:ref:`Image<class_Image>` **_get_layer_data**\ (\ layer_index\: :ref:`int<class_int>`\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__get_layer_data>`

Llamado cuando se consultan los datos de una capa en **TextureLayered**.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_private_method__get_layered_type:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_layered_type**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__get_layered_type>`

Llamado cuando se consulta el tipo de las capas en **TextureLayered**.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_private_method__get_layers:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_layers**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__get_layers>`

Llamado cuando se consulta el número de capas en **TextureLayered**.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_private_method__get_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **_get_width**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__get_width>`

Llamado cuando se consulta el ancho de **TextureLayered**.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_private_method__has_mipmaps:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_has_mipmaps**\ (\ ) |virtual| |required| |const| :ref:`🔗<class_TextureLayered_private_method__has_mipmaps>`

Llamado cuando se consulta la presencia de mipmaps en **TextureLayered**.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_get_format:

.. rst-class:: classref-method

:ref:`Format<enum_Image_Format>` **get_format**\ (\ ) |const| :ref:`🔗<class_TextureLayered_method_get_format>`

Devuelve el formato actual utilizado por esta textura.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_get_height:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_height**\ (\ ) |const| :ref:`🔗<class_TextureLayered_method_get_height>`

Devuelve la altura de la textura en píxeles. La altura se representa típicamente por el eje Y.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_get_layer_data:

.. rst-class:: classref-method

:ref:`Image<class_Image>` **get_layer_data**\ (\ layer\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextureLayered_method_get_layer_data>`

Devuelve un recurso :ref:`Image<class_Image>` con los datos de la capa ``layer`` especificada.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_get_layered_type:

.. rst-class:: classref-method

:ref:`LayeredType<enum_TextureLayered_LayeredType>` **get_layered_type**\ (\ ) |const| :ref:`🔗<class_TextureLayered_method_get_layered_type>`

Devuelve el tipo de la **TextureLayered**. El tipo determina cómo se accede a los datos, teniendo los cubemaps tipos especiales.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_get_layers:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_layers**\ (\ ) |const| :ref:`🔗<class_TextureLayered_method_get_layers>`

Devuelve el número de :ref:`Image<class_Image>`\ es referenciadas.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_get_width:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_width**\ (\ ) |const| :ref:`🔗<class_TextureLayered_method_get_width>`

Devuelve el ancho de la textura en píxeles. El ancho es típicamente representado por el eje X.

.. rst-class:: classref-item-separator

----

.. _class_TextureLayered_method_has_mipmaps:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_mipmaps**\ (\ ) |const| :ref:`🔗<class_TextureLayered_method_has_mipmaps>`

Devuelve ``true`` si las capas han generado mipmaps.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
