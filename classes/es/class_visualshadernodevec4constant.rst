:github_url: hide

.. _class_VisualShaderNodeVec4Constant:

VisualShaderNodeVec4Constant
============================

**Hereda:** :ref:`VisualShaderNodeConstant<class_VisualShaderNodeConstant>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Una constante vectorial 4D que se utilizará dentro del gráfico de shader visual.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un vector 4D constante, que se puede usar como un nodo de entrada.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------------+----------------------------+
   | :ref:`Quaternion<class_Quaternion>` | :ref:`constant<class_VisualShaderNodeVec4Constant_property_constant>` | ``Quaternion(0, 0, 0, 1)`` |
   +-------------------------------------+-----------------------------------------------------------------------+----------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VisualShaderNodeVec4Constant_property_constant:

.. rst-class:: classref-property

:ref:`Quaternion<class_Quaternion>` **constant** = ``Quaternion(0, 0, 0, 1)`` :ref:`🔗<class_VisualShaderNodeVec4Constant_property_constant>`

.. rst-class:: classref-property-setget

- |void| **set_constant**\ (\ value\: :ref:`Quaternion<class_Quaternion>`\ )
- :ref:`Quaternion<class_Quaternion>` **get_constant**\ (\ )

Un vector 4D (representado como un :ref:`Quaternion<class_Quaternion>`) constante que representa el estado de este nodo.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
