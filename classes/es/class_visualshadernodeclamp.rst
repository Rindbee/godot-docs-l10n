:github_url: hide

.. _class_VisualShaderNodeClamp:

VisualShaderNodeClamp
=====================

**Hereda:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Restringe un valor dentro del gráfico de shader visual.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Limita un valor a situarse entre los valores ``min`` y ``max``.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------+--------------------------------------------------------------+-------+
   | :ref:`OpType<enum_VisualShaderNodeClamp_OpType>` | :ref:`op_type<class_VisualShaderNodeClamp_property_op_type>` | ``0`` |
   +--------------------------------------------------+--------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_VisualShaderNodeClamp_OpType:

.. rst-class:: classref-enumeration

enum **OpType**: :ref:`🔗<enum_VisualShaderNodeClamp_OpType>`

.. _class_VisualShaderNodeClamp_constant_OP_TYPE_FLOAT:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeClamp_OpType>` **OP_TYPE_FLOAT** = ``0``

Un escalar real.

.. _class_VisualShaderNodeClamp_constant_OP_TYPE_INT:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeClamp_OpType>` **OP_TYPE_INT** = ``1``

Un escalar entero.

.. _class_VisualShaderNodeClamp_constant_OP_TYPE_UINT:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeClamp_OpType>` **OP_TYPE_UINT** = ``2``

Un escalar entero sin signo.

.. _class_VisualShaderNodeClamp_constant_OP_TYPE_VECTOR_2D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeClamp_OpType>` **OP_TYPE_VECTOR_2D** = ``3``

Un tipo vector 2D.

.. _class_VisualShaderNodeClamp_constant_OP_TYPE_VECTOR_3D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeClamp_OpType>` **OP_TYPE_VECTOR_3D** = ``4``

Un tipo vector 3D.

.. _class_VisualShaderNodeClamp_constant_OP_TYPE_VECTOR_4D:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeClamp_OpType>` **OP_TYPE_VECTOR_4D** = ``5``

Un tipo vector 4D.

.. _class_VisualShaderNodeClamp_constant_OP_TYPE_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`OpType<enum_VisualShaderNodeClamp_OpType>` **OP_TYPE_MAX** = ``6``

Representa el tamaño del enum :ref:`OpType<enum_VisualShaderNodeClamp_OpType>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VisualShaderNodeClamp_property_op_type:

.. rst-class:: classref-property

:ref:`OpType<enum_VisualShaderNodeClamp_OpType>` **op_type** = ``0`` :ref:`🔗<class_VisualShaderNodeClamp_property_op_type>`

.. rst-class:: classref-property-setget

- |void| **set_op_type**\ (\ value\: :ref:`OpType<enum_VisualShaderNodeClamp_OpType>`\ )
- :ref:`OpType<enum_VisualShaderNodeClamp_OpType>` **get_op_type**\ (\ )

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
