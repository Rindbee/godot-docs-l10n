:github_url: hide

.. _class_FogMaterial:

FogMaterial
===========

**Hereda:** :ref:`Material<class_Material>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un material que controla cómo se renderiza la niebla volumétrica, para ser asignado a un :ref:`FogVolume<class_FogVolume>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un recurso :ref:`Material<class_Material>` que puede ser utilizado por :ref:`FogVolume<class_FogVolume>`\ s para dibujar efectos volumétricos.

Si necesitas efectos más avanzados, usa un :doc:`shader de niebla <../tutorials/shaders/shader_reference/fog_shader>` personalizado.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`albedo<class_FogMaterial_property_albedo>`                   | ``Color(1, 1, 1, 1)`` |
   +-----------------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`density<class_FogMaterial_property_density>`                 | ``1.0``               |
   +-----------------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`Texture3D<class_Texture3D>` | :ref:`density_texture<class_FogMaterial_property_density_texture>` |                       |
   +-----------------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`edge_fade<class_FogMaterial_property_edge_fade>`             | ``0.1``               |
   +-----------------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`         | :ref:`emission<class_FogMaterial_property_emission>`               | ``Color(0, 0, 0, 1)`` |
   +-----------------------------------+--------------------------------------------------------------------+-----------------------+
   | :ref:`float<class_float>`         | :ref:`height_falloff<class_FogMaterial_property_height_falloff>`   | ``0.0``               |
   +-----------------------------------+--------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_FogMaterial_property_albedo:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **albedo** = ``Color(1, 1, 1, 1)`` :ref:`🔗<class_FogMaterial_property_albedo>`

.. rst-class:: classref-property-setget

- |void| **set_albedo**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_albedo**\ (\ )

El :ref:`Color<class_Color>` de dispersión simple del :ref:`FogVolume<class_FogVolume>`. Internamente, :ref:`albedo<class_FogMaterial_property_albedo>` se convierte en dispersión simple, que se mezcla aditivamente con otros :ref:`FogVolume<class_FogVolume>`\ s y el :ref:`Environment.volumetric_fog_albedo<class_Environment_property_volumetric_fog_albedo>`.

.. rst-class:: classref-item-separator

----

.. _class_FogMaterial_property_density:

.. rst-class:: classref-property

:ref:`float<class_float>` **density** = ``1.0`` :ref:`🔗<class_FogMaterial_property_density>`

.. rst-class:: classref-property-setget

- |void| **set_density**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_density**\ (\ )

La densidad del :ref:`FogVolume<class_FogVolume>`. Los objetos más densos son más opacos, pero pueden sufrir artefactos de submuestreo que parecen rayas. Se pueden usar valores negativos para restar niebla de otros :ref:`FogVolume<class_FogVolume>`\ s o niebla volumétrica global.

\ **Nota:** Debido a la precisión limitada, los valores de :ref:`density<class_FogMaterial_property_density>` entre ``-0.001`` y ``0.001`` (exclusivo) actúan como ``0.0``. Esto no se aplica a :ref:`Environment.volumetric_fog_density<class_Environment_property_volumetric_fog_density>`.

.. rst-class:: classref-item-separator

----

.. _class_FogMaterial_property_density_texture:

.. rst-class:: classref-property

:ref:`Texture3D<class_Texture3D>` **density_texture** :ref:`🔗<class_FogMaterial_property_density_texture>`

.. rst-class:: classref-property-setget

- |void| **set_density_texture**\ (\ value\: :ref:`Texture3D<class_Texture3D>`\ )
- :ref:`Texture3D<class_Texture3D>` **get_density_texture**\ (\ )

La textura 3D que se utiliza para escalar la :ref:`density<class_FogMaterial_property_density>` del :ref:`FogVolume<class_FogVolume>`. Esto se puede utilizar para variar la densidad de la niebla dentro del :ref:`FogVolume<class_FogVolume>` con cualquier tipo de patrón estático. Para efectos animados, considera usar un :doc:`shader de niebla <../tutorials/shaders/shader_reference/fog_shader>` personalizado.

.. rst-class:: classref-item-separator

----

.. _class_FogMaterial_property_edge_fade:

.. rst-class:: classref-property

:ref:`float<class_float>` **edge_fade** = ``0.1`` :ref:`🔗<class_FogMaterial_property_edge_fade>`

.. rst-class:: classref-property-setget

- |void| **set_edge_fade**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_edge_fade**\ (\ )

Dureza de los bordes de :ref:`FogVolume<class_FogVolume>`. Un valor más alto resultará en bordes más suaves, mientras que un valor más bajo resultará en bordes más duros.

.. rst-class:: classref-item-separator

----

.. _class_FogMaterial_property_emission:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **emission** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_FogMaterial_property_emission>`

.. rst-class:: classref-property-setget

- |void| **set_emission**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_emission**\ (\ )

El :ref:`Color<class_Color>` de la luz emitida por el :ref:`FogVolume<class_FogVolume>`. La luz emitida no proyectará luz ni sombras sobre otros objetos, pero puede ser útil para modular el :ref:`Color<class_Color>` del :ref:`FogVolume<class_FogVolume>` independientemente de las fuentes de luz.

.. rst-class:: classref-item-separator

----

.. _class_FogMaterial_property_height_falloff:

.. rst-class:: classref-property

:ref:`float<class_float>` **height_falloff** = ``0.0`` :ref:`🔗<class_FogMaterial_property_height_falloff>`

.. rst-class:: classref-property-setget

- |void| **set_height_falloff**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_height_falloff**\ (\ )

La velocidad a la que la niebla basada en la altura disminuye en densidad a medida que la altura aumenta en el espacio mundial. Una atenuación alta resultará en una transición brusca, mientras que una atenuación baja resultará en una transición más suave. Un valor de ``0.0`` resulta en una niebla de densidad uniforme. El umbral de altura está determinado por la altura del :ref:`FogVolume<class_FogVolume>` asociado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
