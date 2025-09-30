:github_url: hide

.. _class_VisualShaderNodeCubemap:

VisualShaderNodeCubemap
=======================

**Hereda:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un nodo de muestreo :ref:`Cubemap<class_Cubemap>` para ser usado dentro del gráfico de shader visual.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Traducido a ``texture(cubemap, vec3)`` en el lenguaje de shaders. Devuelve un vector de color y un canal alfa como escalar.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`TextureLayered<class_TextureLayered>`                  | :ref:`cube_map<class_VisualShaderNodeCubemap_property_cube_map>`         |       |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`Source<enum_VisualShaderNodeCubemap_Source>`           | :ref:`source<class_VisualShaderNodeCubemap_property_source>`             | ``0`` |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+
   | :ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` | :ref:`texture_type<class_VisualShaderNodeCubemap_property_texture_type>` | ``0`` |
   +--------------------------------------------------------------+--------------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_VisualShaderNodeCubemap_Source:

.. rst-class:: classref-enumeration

enum **Source**: :ref:`🔗<enum_VisualShaderNodeCubemap_Source>`

.. _class_VisualShaderNodeCubemap_constant_SOURCE_TEXTURE:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeCubemap_Source>` **SOURCE_TEXTURE** = ``0``

Usa el :ref:`Cubemap<class_Cubemap>` establecido a través de :ref:`cube_map<class_VisualShaderNodeCubemap_property_cube_map>`. Si se establece en :ref:`source<class_VisualShaderNodeCubemap_property_source>`, el puerto ``samplerCube`` se ignora.

.. _class_VisualShaderNodeCubemap_constant_SOURCE_PORT:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeCubemap_Source>` **SOURCE_PORT** = ``1``

Usa la referencia del sampler :ref:`Cubemap<class_Cubemap>` pasada a través del puerto ``samplerCube``. Si se establece en :ref:`source<class_VisualShaderNodeCubemap_property_source>`, la textura :ref:`cube_map<class_VisualShaderNodeCubemap_property_cube_map>` se ignora.

.. _class_VisualShaderNodeCubemap_constant_SOURCE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeCubemap_Source>` **SOURCE_MAX** = ``2``

Representa el tamaño del enum :ref:`Source<enum_VisualShaderNodeCubemap_Source>`.

.. rst-class:: classref-item-separator

----

.. _enum_VisualShaderNodeCubemap_TextureType:

.. rst-class:: classref-enumeration

enum **TextureType**: :ref:`🔗<enum_VisualShaderNodeCubemap_TextureType>`

.. _class_VisualShaderNodeCubemap_constant_TYPE_DATA:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` **TYPE_DATA** = ``0``

No se añade ninguna sugerencia a la declaración del uniforme.

.. _class_VisualShaderNodeCubemap_constant_TYPE_COLOR:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` **TYPE_COLOR** = ``1``

Añade ``source_color`` como pista a la declaración uniforme para una conversión correcta de sRGB a lineal.

.. _class_VisualShaderNodeCubemap_constant_TYPE_NORMAL_MAP:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` **TYPE_NORMAL_MAP** = ``2``

Añade ``hint_normal`` como sugerencia a la declaración uniforme, lo que internamente convierte la textura para su uso adecuado como mapa normal.

.. _class_VisualShaderNodeCubemap_constant_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` **TYPE_MAX** = ``3``

Representa el tamaño del enum :ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VisualShaderNodeCubemap_property_cube_map:

.. rst-class:: classref-property

:ref:`TextureLayered<class_TextureLayered>` **cube_map** :ref:`🔗<class_VisualShaderNodeCubemap_property_cube_map>`

.. rst-class:: classref-property-setget

- |void| **set_cube_map**\ (\ value\: :ref:`TextureLayered<class_TextureLayered>`\ )
- :ref:`TextureLayered<class_TextureLayered>` **get_cube_map**\ (\ )

La textura :ref:`Cubemap<class_Cubemap>` a muestrear cuando se usa :ref:`SOURCE_TEXTURE<class_VisualShaderNodeCubemap_constant_SOURCE_TEXTURE>` como :ref:`source<class_VisualShaderNodeCubemap_property_source>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCubemap_property_source:

.. rst-class:: classref-property

:ref:`Source<enum_VisualShaderNodeCubemap_Source>` **source** = ``0`` :ref:`🔗<class_VisualShaderNodeCubemap_property_source>`

.. rst-class:: classref-property-setget

- |void| **set_source**\ (\ value\: :ref:`Source<enum_VisualShaderNodeCubemap_Source>`\ )
- :ref:`Source<enum_VisualShaderNodeCubemap_Source>` **get_source**\ (\ )

Define qué fuente se debe utilizar para el muestreo.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeCubemap_property_texture_type:

.. rst-class:: classref-property

:ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` **texture_type** = ``0`` :ref:`🔗<class_VisualShaderNodeCubemap_property_texture_type>`

.. rst-class:: classref-property-setget

- |void| **set_texture_type**\ (\ value\: :ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>`\ )
- :ref:`TextureType<enum_VisualShaderNodeCubemap_TextureType>` **get_texture_type**\ (\ )

Define el tipo de datos proporcionados por la textura de origen.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
