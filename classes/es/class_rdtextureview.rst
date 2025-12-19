:github_url: hide

.. _class_RDTextureView:

RDTextureView
=============

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Vista de textura (utilizada por :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este objeto es utilizado por :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+----------------------------------------------------------------------+---------+
   | :ref:`DataFormat<enum_RenderingDevice_DataFormat>`         | :ref:`format_override<class_RDTextureView_property_format_override>` | ``232`` |
   +------------------------------------------------------------+----------------------------------------------------------------------+---------+
   | :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` | :ref:`swizzle_a<class_RDTextureView_property_swizzle_a>`             | ``6``   |
   +------------------------------------------------------------+----------------------------------------------------------------------+---------+
   | :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` | :ref:`swizzle_b<class_RDTextureView_property_swizzle_b>`             | ``5``   |
   +------------------------------------------------------------+----------------------------------------------------------------------+---------+
   | :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` | :ref:`swizzle_g<class_RDTextureView_property_swizzle_g>`             | ``4``   |
   +------------------------------------------------------------+----------------------------------------------------------------------+---------+
   | :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` | :ref:`swizzle_r<class_RDTextureView_property_swizzle_r>`             | ``3``   |
   +------------------------------------------------------------+----------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_RDTextureView_property_format_override:

.. rst-class:: classref-property

:ref:`DataFormat<enum_RenderingDevice_DataFormat>` **format_override** = ``232`` :ref:`🔗<class_RDTextureView_property_format_override>`

.. rst-class:: classref-property-setget

- |void| **set_format_override**\ (\ value\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ )
- :ref:`DataFormat<enum_RenderingDevice_DataFormat>` **get_format_override**\ (\ )

Sobrescritura opcional para el formato de datos en el que se devolverán los valores muestreados. El :ref:`RDTextureFormat<class_RDTextureFormat>` correspondiente debe haber añadido esto como un formato compartible. El valor predeterminado de :ref:`RenderingDevice.DATA_FORMAT_MAX<class_RenderingDevice_constant_DATA_FORMAT_MAX>` no anula el formato.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureView_property_swizzle_a:

.. rst-class:: classref-property

:ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **swizzle_a** = ``6`` :ref:`🔗<class_RDTextureView_property_swizzle_a>`

.. rst-class:: classref-property-setget

- |void| **set_swizzle_a**\ (\ value\: :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>`\ )
- :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **get_swizzle_a**\ (\ )

El canal para muestrear cuando se muestrea el canal alfa.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureView_property_swizzle_b:

.. rst-class:: classref-property

:ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **swizzle_b** = ``5`` :ref:`🔗<class_RDTextureView_property_swizzle_b>`

.. rst-class:: classref-property-setget

- |void| **set_swizzle_b**\ (\ value\: :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>`\ )
- :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **get_swizzle_b**\ (\ )

El canal para muestrear cuando se muestrea el canal de color azul.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureView_property_swizzle_g:

.. rst-class:: classref-property

:ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **swizzle_g** = ``4`` :ref:`🔗<class_RDTextureView_property_swizzle_g>`

.. rst-class:: classref-property-setget

- |void| **set_swizzle_g**\ (\ value\: :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>`\ )
- :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **get_swizzle_g**\ (\ )

El canal para muestrear cuando se muestrea el canal de color verde.

.. rst-class:: classref-item-separator

----

.. _class_RDTextureView_property_swizzle_r:

.. rst-class:: classref-property

:ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **swizzle_r** = ``3`` :ref:`🔗<class_RDTextureView_property_swizzle_r>`

.. rst-class:: classref-property-setget

- |void| **set_swizzle_r**\ (\ value\: :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>`\ )
- :ref:`TextureSwizzle<enum_RenderingDevice_TextureSwizzle>` **get_swizzle_r**\ (\ )

El canal para muestrear cuando se muestrea el canal de color rojo.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
