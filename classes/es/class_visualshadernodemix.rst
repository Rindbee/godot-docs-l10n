:github_url: hide

.. _class_VisualShaderNodeMix:

VisualShaderNodeMix
===================

**Hereda:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Interpola linealmente entre dos valores dentro del gráfico de shader visual.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Se traduce a ``mix(a, b, weight)`` en el lenguaje de shaders.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +------------------------------------------------+------------------------------------------------------------+-------+
   | :ref:`OpType<enum_VisualShaderNodeMix_OpType>` | :ref:`op_type<class_VisualShaderNodeMix_property_op_type>` | ``0`` |
   +------------------------------------------------+------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_VisualShaderNodeMix_OpType:

.. rst-class:: classref-enumeration

enum **OpType**: :ref:`🔗<enum_VisualShaderNodeMix_OpType>`

.. _class_VisualShaderNodeMix_constant_OP_TYPE_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeMix_OpType>` **OP_TYPE_SCALAR** = ``0``

Un escalar real.

.. _class_VisualShaderNodeMix_constant_OP_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeMix_OpType>` **OP_TYPE_VECTOR_2D** = ``1``

Un tipo vector 2D.

.. _class_VisualShaderNodeMix_constant_OP_TYPE_VECTOR_2D_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeMix_OpType>` **OP_TYPE_VECTOR_2D_SCALAR** = ``2``

Los puertos ``a`` y ``b`` utilizan un tipo de vector 2D. El puerto ``weight`` utiliza un tipo escalar.

.. _class_VisualShaderNodeMix_constant_OP_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeMix_OpType>` **OP_TYPE_VECTOR_3D** = ``3``

Un tipo vector 3D.

.. _class_VisualShaderNodeMix_constant_OP_TYPE_VECTOR_3D_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeMix_OpType>` **OP_TYPE_VECTOR_3D_SCALAR** = ``4``

Los puertos ``a`` y ``b`` utilizan un tipo de vector 3D. El puerto ``weight`` utiliza un tipo escalar.

.. _class_VisualShaderNodeMix_constant_OP_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeMix_OpType>` **OP_TYPE_VECTOR_4D** = ``5``

Un tipo vector 4D.

.. _class_VisualShaderNodeMix_constant_OP_TYPE_VECTOR_4D_SCALAR:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeMix_OpType>` **OP_TYPE_VECTOR_4D_SCALAR** = ``6``

Los puertos ``a`` y ``b`` utilizan un tipo de vector 4D. El puerto ``weight`` utiliza un tipo escalar.

.. _class_VisualShaderNodeMix_constant_OP_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeMix_OpType>` **OP_TYPE_MAX** = ``7``

Representa el tamaño del enum :ref:`OpType<enum_VisualShaderNodeMix_OpType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VisualShaderNodeMix_property_op_type:

.. rst-class:: classref-property

:ref:`OpType<enum_VisualShaderNodeMix_OpType>` **op_type** = ``0`` :ref:`🔗<class_VisualShaderNodeMix_property_op_type>`

.. rst-class:: classref-property-setget

- |void| **set_op_type**\ (\ value\: :ref:`OpType<enum_VisualShaderNodeMix_OpType>`\ )
- :ref:`OpType<enum_VisualShaderNodeMix_OpType>` **get_op_type**\ (\ )

Un tipo de operando y valor de retorno.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
