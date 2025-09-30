:github_url: hide

.. _class_VisualShaderNodeVectorOp:

VisualShaderNodeVectorOp
========================

**Hereda:** :ref:`VisualShaderNodeVectorBase<class_VisualShaderNodeVectorBase>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un operador vectorial para ser usado dentro del gráfico shader visual.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un nodo shader visual para uso de los operadores de vectores. Opera en el vector ``a`` y en el vector ``b``.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------------+-------------------------------------------------------------------+-------+
   | :ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` | :ref:`operator<class_VisualShaderNodeVectorOp_property_operator>` | ``0`` |
   +---------------------------------------------------------+-------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_VisualShaderNodeVectorOp_Operator:

.. rst-class:: classref-enumeration

enum **Operator**: :ref:`🔗<enum_VisualShaderNodeVectorOp_Operator>`

.. _class_VisualShaderNodeVectorOp_constant_OP_ADD:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_ADD** = ``0``

Añade dos vectores.

.. _class_VisualShaderNodeVectorOp_constant_OP_SUB:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_SUB** = ``1``

Resta un vector de un vector.

.. _class_VisualShaderNodeVectorOp_constant_OP_MUL:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_MUL** = ``2``

Multiplica dos vectores.

.. _class_VisualShaderNodeVectorOp_constant_OP_DIV:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_DIV** = ``3``

Divide vector por vector.

.. _class_VisualShaderNodeVectorOp_constant_OP_MOD:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_MOD** = ``4``

Devuelve el resto de los dos vectores.

.. _class_VisualShaderNodeVectorOp_constant_OP_POW:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_POW** = ``5``

Devuelve el valor del primer parámetro elevado a la potencia del segundo, para cada componente de los vectores.

.. _class_VisualShaderNodeVectorOp_constant_OP_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_MAX** = ``6``

Devuelve el mayor de dos valores, para cada componente de los vectores.

.. _class_VisualShaderNodeVectorOp_constant_OP_MIN:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_MIN** = ``7``

Devuelve el menor de dos valores, para cada componente de los vectores.

.. _class_VisualShaderNodeVectorOp_constant_OP_CROSS:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_CROSS** = ``8``

Calcula el producto vectorial de dos vectores.

.. _class_VisualShaderNodeVectorOp_constant_OP_ATAN2:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_ATAN2** = ``9``

Devuelve la arcotangente de los parámetros.

.. _class_VisualShaderNodeVectorOp_constant_OP_REFLECT:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_REFLECT** = ``10``

Devuelve el vector que apunta en la dirección de reflejo. ``a`` is el vector incidente y ``b`` es el vector normal.

.. _class_VisualShaderNodeVectorOp_constant_OP_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_STEP** = ``11``

Operador de paso de vector. Devuelve ``0.0`` si ``a`` es más pequeño que ``b`` y ``1.0`` en caso contrario.

.. _class_VisualShaderNodeVectorOp_constant_OP_ENUM_SIZE:

.. rst-class:: classref-enumeration-constant

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **OP_ENUM_SIZE** = ``12``

Representa el tamaño del enum :ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VisualShaderNodeVectorOp_property_operator:

.. rst-class:: classref-property

:ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **operator** = ``0`` :ref:`🔗<class_VisualShaderNodeVectorOp_property_operator>`

.. rst-class:: classref-property-setget

- |void| **set_operator**\ (\ value\: :ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>`\ )
- :ref:`Operator<enum_VisualShaderNodeVectorOp_Operator>` **get_operator**\ (\ )

El operador a utilizar.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
