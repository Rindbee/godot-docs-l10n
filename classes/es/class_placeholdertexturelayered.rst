:github_url: hide

.. _class_PlaceholderTextureLayered:

PlaceholderTextureLayered
=========================

**Hereda:** :ref:`TextureLayered<class_TextureLayered>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`PlaceholderCubemap<class_PlaceholderCubemap>`, :ref:`PlaceholderCubemapArray<class_PlaceholderCubemapArray>`, :ref:`PlaceholderTexture2DArray<class_PlaceholderTexture2DArray>`

Clase de marcador de posición para un array de texturas bidimensionales.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Esta clase se utiliza al cargar un proyecto que utiliza una subclase de :ref:`TextureLayered<class_TextureLayered>` en 2 condiciones:

- Al ejecutar el proyecto exportado en modo de servidor dedicado, solo se mantienen las dimensiones de la textura (ya que se puede confiar en ellas para fines de juego o para el posicionamiento de otros elementos). Esto permite reducir significativamente el tamaño del PCK exportado.

- Cuando falta esta subclase debido al uso de una versión o compilación diferente del motor (por ejemplo, módulos desactivados).

\ **Nota:** Esto no está diseñado para ser usado como una textura real para renderizar. No se garantiza que funcione como tal en shaders o materiales (por ejemplo, al calcular las UV).

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------+----------------------------------------------------------------+--------------------+
   | :ref:`int<class_int>`           | :ref:`layers<class_PlaceholderTextureLayered_property_layers>` | ``1``              |
   +---------------------------------+----------------------------------------------------------------+--------------------+
   | :ref:`Vector2i<class_Vector2i>` | :ref:`size<class_PlaceholderTextureLayered_property_size>`     | ``Vector2i(1, 1)`` |
   +---------------------------------+----------------------------------------------------------------+--------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_PlaceholderTextureLayered_property_layers:

.. rst-class:: classref-property

:ref:`int<class_int>` **layers** = ``1`` :ref:`🔗<class_PlaceholderTextureLayered_property_layers>`

.. rst-class:: classref-property-setget

- |void| **set_layers**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_layers**\ (\ )

El número de capas en la array de textura.

.. rst-class:: classref-item-separator

----

.. _class_PlaceholderTextureLayered_property_size:

.. rst-class:: classref-property

:ref:`Vector2i<class_Vector2i>` **size** = ``Vector2i(1, 1)`` :ref:`🔗<class_PlaceholderTextureLayered_property_size>`

.. rst-class:: classref-property-setget

- |void| **set_size**\ (\ value\: :ref:`Vector2i<class_Vector2i>`\ )
- :ref:`Vector2i<class_Vector2i>` **get_size**\ (\ )

El tamaño de cada capa de textura (en píxeles).

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
