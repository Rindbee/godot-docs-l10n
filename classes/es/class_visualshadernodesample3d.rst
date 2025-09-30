:github_url: hide

.. _class_VisualShaderNodeSample3D:

VisualShaderNodeSample3D
========================

**Hereda:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`VisualShaderNodeTexture2DArray<class_VisualShaderNodeTexture2DArray>`, :ref:`VisualShaderNodeTexture3D<class_VisualShaderNodeTexture3D>`

Un nodo base para los nodos que muestrean texturas 3D en el gráfico de shader visual.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una clase virtual, use los descendientes en su lugar.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+---------------------------------------------------------------+-------+
   | :ref:`Source<enum_VisualShaderNodeSample3D_Source>` | :ref:`source<class_VisualShaderNodeSample3D_property_source>` | ``0`` |
   +-----------------------------------------------------+---------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_VisualShaderNodeSample3D_Source:

.. rst-class:: classref-enumeration

enum **Source**: :ref:`🔗<enum_VisualShaderNodeSample3D_Source>`

.. _class_VisualShaderNodeSample3D_constant_SOURCE_TEXTURE:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeSample3D_Source>` **SOURCE_TEXTURE** = ``0``

Crea un uniforme interno y proporciona una forma de asignarlo dentro del nodo.

.. _class_VisualShaderNodeSample3D_constant_SOURCE_PORT:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeSample3D_Source>` **SOURCE_PORT** = ``1``

Usar la textura uniforme del puerto de muestreo.

.. _class_VisualShaderNodeSample3D_constant_SOURCE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Source<enum_VisualShaderNodeSample3D_Source>` **SOURCE_MAX** = ``2``

Representa el tamaño del enum :ref:`Source<enum_VisualShaderNodeSample3D_Source>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VisualShaderNodeSample3D_property_source:

.. rst-class:: classref-property

:ref:`Source<enum_VisualShaderNodeSample3D_Source>` **source** = ``0`` :ref:`🔗<class_VisualShaderNodeSample3D_property_source>`

.. rst-class:: classref-property-setget

- |void| **set_source**\ (\ value\: :ref:`Source<enum_VisualShaderNodeSample3D_Source>`\ )
- :ref:`Source<enum_VisualShaderNodeSample3D_Source>` **get_source**\ (\ )

Un tipo de fuente de entrada.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
