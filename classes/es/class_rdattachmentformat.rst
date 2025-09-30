:github_url: hide

.. _class_RDAttachmentFormat:

RDAttachmentFormat
==================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Attachment format (used by :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Descripción
----------------------

This object is used by :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+-------------------------------------------------------------------+--------+
   | :ref:`DataFormat<enum_RenderingDevice_DataFormat>`         | :ref:`format<class_RDAttachmentFormat_property_format>`           | ``36`` |
   +------------------------------------------------------------+-------------------------------------------------------------------+--------+
   | :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` | :ref:`samples<class_RDAttachmentFormat_property_samples>`         | ``0``  |
   +------------------------------------------------------------+-------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`                                      | :ref:`usage_flags<class_RDAttachmentFormat_property_usage_flags>` | ``0``  |
   +------------------------------------------------------------+-------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_RDAttachmentFormat_property_format:

.. rst-class:: classref-property

:ref:`DataFormat<enum_RenderingDevice_DataFormat>` **format** = ``36`` :ref:`🔗<class_RDAttachmentFormat_property_format>`

.. rst-class:: classref-property-setget

- |void| **set_format**\ (\ value\: :ref:`DataFormat<enum_RenderingDevice_DataFormat>`\ )
- :ref:`DataFormat<enum_RenderingDevice_DataFormat>` **get_format**\ (\ )

El formato de los datos del adjunto.

.. rst-class:: classref-item-separator

----

.. _class_RDAttachmentFormat_property_samples:

.. rst-class:: classref-property

:ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **samples** = ``0`` :ref:`🔗<class_RDAttachmentFormat_property_samples>`

.. rst-class:: classref-property-setget

- |void| **set_samples**\ (\ value\: :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>`\ )
- :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **get_samples**\ (\ )

The number of samples used when sampling the attachment.

.. rst-class:: classref-item-separator

----

.. _class_RDAttachmentFormat_property_usage_flags:

.. rst-class:: classref-property

:ref:`int<class_int>` **usage_flags** = ``0`` :ref:`🔗<class_RDAttachmentFormat_property_usage_flags>`

.. rst-class:: classref-property-setget

- |void| **set_usage_flags**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_usage_flags**\ (\ )

The attachment's usage flags, which determine what can be done with it.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
