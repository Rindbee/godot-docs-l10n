:github_url: hide

.. _class_CameraTexture:

CameraTexture
=============

**Hereda:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Textura proporcionada por un :ref:`CameraFeed<class_CameraFeed>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta textura da acceso a la textura de la cámara proporcionada por un :ref:`CameraFeed<class_CameraFeed>`.

\ **Nota:** Muchas cámaras suministran imágenes YCbCr que necesitan ser convertidas en un shader.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------+------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                         | :ref:`camera_feed_id<class_CameraTexture_property_camera_feed_id>`     | ``0``                                                                                  |
   +-----------------------------------------------+------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | :ref:`camera_is_active<class_CameraTexture_property_camera_is_active>` | ``false``                                                                              |
   +-----------------------------------------------+------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                       | resource_local_to_scene                                                | ``false`` (overrides :ref:`Resource<class_Resource_property_resource_local_to_scene>`) |
   +-----------------------------------------------+------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
   | :ref:`FeedImage<enum_CameraServer_FeedImage>` | :ref:`which_feed<class_CameraTexture_property_which_feed>`             | ``0``                                                                                  |
   +-----------------------------------------------+------------------------------------------------------------------------+----------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_CameraTexture_property_camera_feed_id:

.. rst-class:: classref-property

:ref:`int<class_int>` **camera_feed_id** = ``0`` :ref:`🔗<class_CameraTexture_property_camera_feed_id>`

.. rst-class:: classref-property-setget

- |void| **set_camera_feed_id**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_camera_feed_id**\ (\ )

El ID del :ref:`CameraFeed<class_CameraFeed>` para el cual queremos mostrar la imagen.

.. rst-class:: classref-item-separator

----

.. _class_CameraTexture_property_camera_is_active:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **camera_is_active** = ``false`` :ref:`🔗<class_CameraTexture_property_camera_is_active>`

.. rst-class:: classref-property-setget

- |void| **set_camera_active**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_camera_active**\ (\ )

Propiedad de conveniencia que da acceso a la propiedad activa de la :ref:`CameraFeed<class_CameraFeed>`.

.. rst-class:: classref-item-separator

----

.. _class_CameraTexture_property_which_feed:

.. rst-class:: classref-property

:ref:`FeedImage<enum_CameraServer_FeedImage>` **which_feed** = ``0`` :ref:`🔗<class_CameraTexture_property_which_feed>`

.. rst-class:: classref-property-setget

- |void| **set_which_feed**\ (\ value\: :ref:`FeedImage<enum_CameraServer_FeedImage>`\ )
- :ref:`FeedImage<enum_CameraServer_FeedImage>` **get_which_feed**\ (\ )

La imagen dentro de la :ref:`CameraFeed<class_CameraFeed>` a la que queremos acceder, es importante si la imagen de la cámara está dividida en un componente Y y CbCr.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
