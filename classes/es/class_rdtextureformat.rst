:github_url: hide

.. _class_RDTextureFormat:

RDTextureFormat
===============

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Formato de textura (utilizado por :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este objeto es utilizado por :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                        | :ref:`array_layers<class_RDTextureFormat_property_array_layers>`           | ``1``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                        | :ref:`depth<class_RDTextureFormat_property_depth>`                         | ``1``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`DataFormat<enum_RenderingDevice_DataFormat>`                           | :ref:`format<class_RDTextureFormat_property_format>`                       | ``8``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                        | :ref:`height<class_RDTextureFormat_property_height>`                       | ``1``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                      | :ref:`is_discardable<class_RDTextureFormat_property_is_discardable>`       | ``false`` |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                      | :ref:`is_resolve_buffer<class_RDTextureFormat_property_is_resolve_buffer>` | ``false`` |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                        | :ref:`mipmaps<class_RDTextureFormat_property_mipmaps>`                     | ``1``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>`                   | :ref:`samples<class_RDTextureFormat_property_samples>`                     | ``0``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`TextureType<enum_RenderingDevice_TextureType>`                         | :ref:`texture_type<class_RDTextureFormat_property_texture_type>`           | ``1``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | |bitfield|\[:ref:`TextureUsageBits<enum_RenderingDevice_TextureUsageBits>`\] | :ref:`usage_bits<class_RDTextureFormat_property_usage_bits>`               | ``0``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                        | :ref:`width<class_RDTextureFormat_property_width>`                         | ``1``     |
   +------------------------------------------------------------------------------+----------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`add_shareable_format<class_RDTextureFormat_method_add_shareable_format>`\ (\ format\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ )       |
   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void| | :ref:`remove_shareable_format<class_RDTextureFormat_method_remove_shareable_format>`\ (\ format\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ ) |
   +--------+---------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_RDTextureFormat_property_array_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **array_layers** = ``1`` :ref:`🔗<class_RDTextureFormat_property_array_layers>`

.. rst-class:: classref-property-setget

- |void| **set_array_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_array_layers**\ (\ )

El número de capas en la textura. Solo relevante para los arrays de texturas 2D.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_depth:

.. rst-class:: classref-property

:ref:`int<class_int>` **depth** = ``1`` :ref:`🔗<class_RDTextureFormat_property_depth>`

.. rst-class:: classref-property-setget

- |void| **set_depth**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_depth**\ (\ )

La profundidad de la textura (en píxeles). Esto siempre es ``1`` para texturas 2D.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_format:

.. rst-class:: classref-property

:ref:`DataFormat<enum_RenderingDevice_DataFormat>` **format** = ``8`` :ref:`🔗<class_RDTextureFormat_property_format>`

.. rst-class:: classref-property-setget

- |void| **set_format**\ (\ value\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ )
- :ref:`DataFormat<enum_RenderingDevice_DataFormat>` **get_format**\ (\ )

El formato de datos de píxeles de la textura.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_height:

.. rst-class:: classref-property

:ref:`int<class_int>` **height** = ``1`` :ref:`🔗<class_RDTextureFormat_property_height>`

.. rst-class:: classref-property-setget

- |void| **set_height**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_height**\ (\ )

La altura de la textura (en píxeles).

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_is_discardable:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **is_discardable** = ``false`` :ref:`🔗<class_RDTextureFormat_property_is_discardable>`

.. rst-class:: classref-property-setget

- |void| **set_is_discardable**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_is_discardable**\ (\ )

Si una textura es descartable, no es necesario preservar su contenido entre frames. Este indicador solo es relevante cuando la textura se usa como destino en una lista de dibujo.

Esta información es utilizada por :ref:`RenderingDevice<class_RenderingDevice>` para determinar si el contenido de una textura puede descartarse, eliminando escrituras innecesarias en la memoria y aumentando el rendimiento.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_is_resolve_buffer:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **is_resolve_buffer** = ``false`` :ref:`🔗<class_RDTextureFormat_property_is_resolve_buffer>`

.. rst-class:: classref-property-setget

- |void| **set_is_resolve_buffer**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_is_resolve_buffer**\ (\ )

La textura se utilizará como destino de una operación de resolución.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_mipmaps:

.. rst-class:: classref-property

:ref:`int<class_int>` **mipmaps** = ``1`` :ref:`🔗<class_RDTextureFormat_property_mipmaps>`

.. rst-class:: classref-property-setget

- |void| **set_mipmaps**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_mipmaps**\ (\ )

El número de mipmaps disponibles en la textura.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_samples:

.. rst-class:: classref-property

:ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **samples** = ``0`` :ref:`🔗<class_RDTextureFormat_property_samples>`

.. rst-class:: classref-property-setget

- |void| **set_samples**\ (\ value\: :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>`\ )
- :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **get_samples**\ (\ )

El número de muestras utilizadas al muestrear la textura.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_texture_type:

.. rst-class:: classref-property

:ref:`TextureType<enum_RenderingDevice_TextureType>` **texture_type** = ``1`` :ref:`🔗<class_RDTextureFormat_property_texture_type>`

.. rst-class:: classref-property-setget

- |void| **set_texture_type**\ (\ value\: :ref:`TextureType<enum_RenderingDevice_TextureType>`\ )
- :ref:`TextureType<enum_RenderingDevice_TextureType>` **get_texture_type**\ (\ )

El tipo de textura.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_usage_bits:

.. rst-class:: classref-property

|bitfield|\[:ref:`TextureUsageBits<enum_RenderingDevice_TextureUsageBits>`\] **usage_bits** = ``0`` :ref:`🔗<class_RDTextureFormat_property_usage_bits>`

.. rst-class:: classref-property-setget

- |void| **set_usage_bits**\ (\ value\: |bitfield|\[:ref:`TextureUsageBits<enum_RenderingDevice_TextureUsageBits>`\]\ )
- |bitfield|\[:ref:`TextureUsageBits<enum_RenderingDevice_TextureUsageBits>`\] **get_usage_bits**\ (\ )

Los bits de uso de la textura, que determinan lo que se puede hacer con la textura.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_property_width:

.. rst-class:: classref-property

:ref:`int<class_int>` **width** = ``1`` :ref:`🔗<class_RDTextureFormat_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_width**\ (\ )

El ancho de la textura (en píxeles).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_RDTextureFormat_method_add_shareable_format:

.. rst-class:: classref-method

|void| **add_shareable_format**\ (\ format\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ ) :ref:`🔗<class_RDTextureFormat_method_add_shareable_format>`

Añade ``format`` como un formato válido para la propiedad :ref:`RDTextureView.format_override<class_RDTextureView_property_format_override>` de la :ref:`RDTextureView<class_RDTextureView>` correspondiente. Si se añade algún formato como compartible, también se debe añadir el :ref:`format<class_RDTextureFormat_property_format>` principal.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureFormat_method_remove_shareable_format:

.. rst-class:: classref-method

|void| **remove_shareable_format**\ (\ format\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ ) :ref:`🔗<class_RDTextureFormat_method_remove_shareable_format>`

Elimina ``format`` de la lista de formatos válidos a los que se puede establecer la propiedad :ref:`RDTextureView.format_override<class_RDTextureView_property_format_override>` de la :ref:`RDTextureView<class_RDTextureView>` correspondiente.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
