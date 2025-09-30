:github_url: hide

.. _class_CameraFeed:

CameraFeed
==========

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

La alimentación de la cámara le da acceso a una única cámara física conectada a tu dispositivo.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A camera feed gives you access to a single physical camera attached to your device. When enabled, Godot will start capturing frames from the camera which can then be used. See also :ref:`CameraServer<class_CameraServer>`.

\ **Note:** Many cameras will return YCbCr images which are split into two textures and need to be combined in a shader. Godot does this automatically for you if you set the environment to show the camera image in the background.

\ **Note:** This class is currently only implemented on Linux, Android, macOS, and iOS. On other platforms no **CameraFeed**\ s will be available. To get a **CameraFeed** on iOS, the camera plugin from `godot-ios-plugins <https://github.com/godotengine/godot-ios-plugins>`__ is required.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------+-----------------------------------------------------------------+------------------------------------+
   | :ref:`bool<class_bool>`               | :ref:`feed_is_active<class_CameraFeed_property_feed_is_active>` | ``false``                          |
   +---------------------------------------+-----------------------------------------------------------------+------------------------------------+
   | :ref:`Transform2D<class_Transform2D>` | :ref:`feed_transform<class_CameraFeed_property_feed_transform>` | ``Transform2D(1, 0, 0, -1, 0, 1)`` |
   +---------------------------------------+-----------------------------------------------------------------+------------------------------------+
   | :ref:`Array<class_Array>`             | :ref:`formats<class_CameraFeed_property_formats>`               | ``[]``                             |
   +---------------------------------------+-----------------------------------------------------------------+------------------------------------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`_activate_feed<class_CameraFeed_private_method__activate_feed>`\ (\ ) |virtual|                                                        |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`_deactivate_feed<class_CameraFeed_private_method__deactivate_feed>`\ (\ ) |virtual|                                                    |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`FeedDataType<enum_CameraFeed_FeedDataType>` | :ref:`get_datatype<class_CameraFeed_method_get_datatype>`\ (\ ) |const|                                                                      |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_id<class_CameraFeed_method_get_id>`\ (\ ) |const|                                                                                  |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>`                       | :ref:`get_name<class_CameraFeed_method_get_name>`\ (\ ) |const|                                                                              |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`FeedPosition<enum_CameraFeed_FeedPosition>` | :ref:`get_position<class_CameraFeed_method_get_position>`\ (\ ) |const|                                                                      |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                             | :ref:`get_texture_tex_id<class_CameraFeed_method_get_texture_tex_id>`\ (\ feed_image_type\: :ref:`FeedImage<enum_CameraServer_FeedImage>`\ ) |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_external<class_CameraFeed_method_set_external>`\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`\ )               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                           | :ref:`set_format<class_CameraFeed_method_set_format>`\ (\ index\: :ref:`int<class_int>`, parameters\: :ref:`Dictionary<class_Dictionary>`\ ) |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_name<class_CameraFeed_method_set_name>`\ (\ name\: :ref:`String<class_String>`\ )                                                  |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_position<class_CameraFeed_method_set_position>`\ (\ position\: :ref:`FeedPosition<enum_CameraFeed_FeedPosition>`\ )                |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_rgb_image<class_CameraFeed_method_set_rgb_image>`\ (\ rgb_image\: :ref:`Image<class_Image>`\ )                                     |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                            | :ref:`set_ycbcr_image<class_CameraFeed_method_set_ycbcr_image>`\ (\ ycbcr_image\: :ref:`Image<class_Image>`\ )                               |
   +---------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Señales
--------------

.. _class_CameraFeed_signal_format_changed:

.. rst-class:: classref-signal

**format_changed**\ (\ ) :ref:`🔗<class_CameraFeed_signal_format_changed>`

Emitida cuando el formato ha cambiado.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_signal_frame_changed:

.. rst-class:: classref-signal

**frame_changed**\ (\ ) :ref:`🔗<class_CameraFeed_signal_frame_changed>`

Emitted when a new frame is available.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_CameraFeed_FeedDataType:

.. rst-class:: classref-enumeration

enum **FeedDataType**: :ref:`🔗<enum_CameraFeed_FeedDataType>`

.. _class_CameraFeed_constant_FEED_NOIMAGE:

.. rst-class:: classref-enumeration-constant

:ref:`FeedDataType<enum_CameraFeed_FeedDataType>` **FEED_NOIMAGE** = ``0``

No hay ninguna imagen establecida para el feed.

.. _class_CameraFeed_constant_FEED_RGB:

.. rst-class:: classref-enumeration-constant

:ref:`FeedDataType<enum_CameraFeed_FeedDataType>` **FEED_RGB** = ``1``

Proporciona imágenes RGB.

.. _class_CameraFeed_constant_FEED_YCBCR:

.. rst-class:: classref-enumeration-constant

:ref:`FeedDataType<enum_CameraFeed_FeedDataType>` **FEED_YCBCR** = ``2``

Proporciona imágenes YCbCr que necesitan ser convertidas a RGB.

.. _class_CameraFeed_constant_FEED_YCBCR_SEP:

.. rst-class:: classref-enumeration-constant

:ref:`FeedDataType<enum_CameraFeed_FeedDataType>` **FEED_YCBCR_SEP** = ``3``

Feed supplies separate Y and CbCr images that need to be combined and converted to RGB.

.. _class_CameraFeed_constant_FEED_EXTERNAL:

.. rst-class:: classref-enumeration-constant

:ref:`FeedDataType<enum_CameraFeed_FeedDataType>` **FEED_EXTERNAL** = ``4``

Feed supplies external image.

.. rst-class:: classref-item-separator

----

.. _enum_CameraFeed_FeedPosition:

.. rst-class:: classref-enumeration

enum **FeedPosition**: :ref:`🔗<enum_CameraFeed_FeedPosition>`

.. _class_CameraFeed_constant_FEED_UNSPECIFIED:

.. rst-class:: classref-enumeration-constant

:ref:`FeedPosition<enum_CameraFeed_FeedPosition>` **FEED_UNSPECIFIED** = ``0``

Posición no especificada.

.. _class_CameraFeed_constant_FEED_FRONT:

.. rst-class:: classref-enumeration-constant

:ref:`FeedPosition<enum_CameraFeed_FeedPosition>` **FEED_FRONT** = ``1``

La cámara está montada en la parte frontal del dispositivo.

.. _class_CameraFeed_constant_FEED_BACK:

.. rst-class:: classref-enumeration-constant

:ref:`FeedPosition<enum_CameraFeed_FeedPosition>` **FEED_BACK** = ``2``

La cámara está montada en la parte trasera del dispositivo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_CameraFeed_property_feed_is_active:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **feed_is_active** = ``false`` :ref:`🔗<class_CameraFeed_property_feed_is_active>`

.. rst-class:: classref-property-setget

- |void| **set_active**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_active**\ (\ )

Si es ``true``, el feed está activo.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_property_feed_transform:

.. rst-class:: classref-property

:ref:`Transform2D<class_Transform2D>` **feed_transform** = ``Transform2D(1, 0, 0, -1, 0, 1)`` :ref:`🔗<class_CameraFeed_property_feed_transform>`

.. rst-class:: classref-property-setget

- |void| **set_transform**\ (\ value\: :ref:`Transform2D<class_Transform2D>`\ )
- :ref:`Transform2D<class_Transform2D>` **get_transform**\ (\ )

The transform applied to the camera's image.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_property_formats:

.. rst-class:: classref-property

:ref:`Array<class_Array>` **formats** = ``[]`` :ref:`🔗<class_CameraFeed_property_formats>`

.. rst-class:: classref-property-setget

- :ref:`Array<class_Array>` **get_formats**\ (\ )

Formats supported by the feed. Each entry is a :ref:`Dictionary<class_Dictionary>` describing format parameters.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_CameraFeed_private_method__activate_feed:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_activate_feed**\ (\ ) |virtual| :ref:`🔗<class_CameraFeed_private_method__activate_feed>`

Se llama cuando se activa la transmisión de la cámara.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_private_method__deactivate_feed:

.. rst-class:: classref-method

|void| **_deactivate_feed**\ (\ ) |virtual| :ref:`🔗<class_CameraFeed_private_method__deactivate_feed>`

Se llama cuando la transmisión de la cámara está desactivada.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_get_datatype:

.. rst-class:: classref-method

:ref:`FeedDataType<enum_CameraFeed_FeedDataType>` **get_datatype**\ (\ ) |const| :ref:`🔗<class_CameraFeed_method_get_datatype>`

Returns feed image data type.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_get_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_id**\ (\ ) |const| :ref:`🔗<class_CameraFeed_method_get_id>`

Returns the unique ID for this feed.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_get_name:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_name**\ (\ ) |const| :ref:`🔗<class_CameraFeed_method_get_name>`

Devuelve el nombre de la cámara.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_get_position:

.. rst-class:: classref-method

:ref:`FeedPosition<enum_CameraFeed_FeedPosition>` **get_position**\ (\ ) |const| :ref:`🔗<class_CameraFeed_method_get_position>`

Devuelve la posición de la cámara en el dispositivo.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_get_texture_tex_id:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_texture_tex_id**\ (\ feed_image_type\: :ref:`FeedImage<enum_CameraServer_FeedImage>`\ ) :ref:`🔗<class_CameraFeed_method_get_texture_tex_id>`

Returns the texture backend ID (usable by some external libraries that need a handle to a texture to write data).

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_set_external:

.. rst-class:: classref-method

|void| **set_external**\ (\ width\: :ref:`int<class_int>`, height\: :ref:`int<class_int>`\ ) :ref:`🔗<class_CameraFeed_method_set_external>`

Sets the feed as external feed provided by another library.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_set_format:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set_format**\ (\ index\: :ref:`int<class_int>`, parameters\: :ref:`Dictionary<class_Dictionary>`\ ) :ref:`🔗<class_CameraFeed_method_set_format>`

Sets the feed format parameters for the given ``index`` in the :ref:`formats<class_CameraFeed_property_formats>` array. Returns ``true`` on success. By default, the YUYV encoded stream is transformed to :ref:`FEED_RGB<class_CameraFeed_constant_FEED_RGB>`. The YUYV encoded stream output format can be changed by setting ``parameters``'s ``output`` entry to one of the following:

- ``"separate"`` will result in :ref:`FEED_YCBCR_SEP<class_CameraFeed_constant_FEED_YCBCR_SEP>`;

- ``"grayscale"`` will result in desaturated :ref:`FEED_RGB<class_CameraFeed_constant_FEED_RGB>`;

- ``"copy"`` will result in :ref:`FEED_YCBCR<class_CameraFeed_constant_FEED_YCBCR>`.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_set_name:

.. rst-class:: classref-method

|void| **set_name**\ (\ name\: :ref:`String<class_String>`\ ) :ref:`🔗<class_CameraFeed_method_set_name>`

Establece el nombre de la cámara.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_set_position:

.. rst-class:: classref-method

|void| **set_position**\ (\ position\: :ref:`FeedPosition<enum_CameraFeed_FeedPosition>`\ ) :ref:`🔗<class_CameraFeed_method_set_position>`

Establece la posición de esta cámara.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_set_rgb_image:

.. rst-class:: classref-method

|void| **set_rgb_image**\ (\ rgb_image\: :ref:`Image<class_Image>`\ ) :ref:`🔗<class_CameraFeed_method_set_rgb_image>`

Sets RGB image for this feed.

.. rst-class:: classref-item-separator

----

.. _class_CameraFeed_method_set_ycbcr_image:

.. rst-class:: classref-method

|void| **set_ycbcr_image**\ (\ ycbcr_image\: :ref:`Image<class_Image>`\ ) :ref:`🔗<class_CameraFeed_method_set_ycbcr_image>`

Sets YCbCr image for this feed.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
