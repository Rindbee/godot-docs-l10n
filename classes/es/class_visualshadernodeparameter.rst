:github_url: hide

.. _class_VisualShaderNodeParameter:

VisualShaderNodeParameter
=========================

**Hereda:** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`VisualShaderNodeBooleanParameter<class_VisualShaderNodeBooleanParameter>`, :ref:`VisualShaderNodeColorParameter<class_VisualShaderNodeColorParameter>`, :ref:`VisualShaderNodeFloatParameter<class_VisualShaderNodeFloatParameter>`, :ref:`VisualShaderNodeIntParameter<class_VisualShaderNodeIntParameter>`, :ref:`VisualShaderNodeTextureParameter<class_VisualShaderNodeTextureParameter>`, :ref:`VisualShaderNodeTransformParameter<class_VisualShaderNodeTransformParameter>`, :ref:`VisualShaderNodeUIntParameter<class_VisualShaderNodeUIntParameter>`, :ref:`VisualShaderNodeVec2Parameter<class_VisualShaderNodeVec2Parameter>`, :ref:`VisualShaderNodeVec3Parameter<class_VisualShaderNodeVec3Parameter>`, :ref:`VisualShaderNodeVec4Parameter<class_VisualShaderNodeVec4Parameter>`

Un tipo base para los parámetros dentro del gráfico de shader visual.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un parámetro representa una variable en el shader que se establece externamente, es decir, desde el :ref:`ShaderMaterial<class_ShaderMaterial>`. Los parámetros se exponen como propiedades en el :ref:`ShaderMaterial<class_ShaderMaterial>` y pueden asignarse desde el Inspector o desde un script.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+--------------------------------------------------------------------------------+--------+
   | :ref:`int<class_int>`                                      | :ref:`instance_index<class_VisualShaderNodeParameter_property_instance_index>` | ``0``  |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`parameter_name<class_VisualShaderNodeParameter_property_parameter_name>` | ``""`` |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+--------+
   | :ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` | :ref:`qualifier<class_VisualShaderNodeParameter_property_qualifier>`           | ``0``  |
   +------------------------------------------------------------+--------------------------------------------------------------------------------+--------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_VisualShaderNodeParameter_Qualifier:

.. rst-class:: classref-enumeration

enum **Qualifier**: :ref:`🔗<enum_VisualShaderNodeParameter_Qualifier>`

.. _class_VisualShaderNodeParameter_constant_QUAL_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **QUAL_NONE** = ``0``

El parámetro se vinculará al :ref:`ShaderMaterial<class_ShaderMaterial>` utilizando este shader.

.. _class_VisualShaderNodeParameter_constant_QUAL_GLOBAL:

.. rst-class:: classref-enumeration-constant

:ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **QUAL_GLOBAL** = ``1``

El parámetro usará un valor global, definido en la Configuración del proyecto.

.. _class_VisualShaderNodeParameter_constant_QUAL_INSTANCE:

.. rst-class:: classref-enumeration-constant

:ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **QUAL_INSTANCE** = ``2``

El parámetro se vinculará al nodo con :ref:`ShaderMaterial<class_ShaderMaterial>` adjunto usando este shader.

.. _class_VisualShaderNodeParameter_constant_QUAL_INSTANCE_INDEX:

.. rst-class:: classref-enumeration-constant

:ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **QUAL_INSTANCE_INDEX** = ``3``

The parameter will be tied to the node with attached :ref:`ShaderMaterial<class_ShaderMaterial>` using this shader. Enables setting a :ref:`instance_index<class_VisualShaderNodeParameter_property_instance_index>` property.

.. _class_VisualShaderNodeParameter_constant_QUAL_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **QUAL_MAX** = ``4``

Representa el tamaño del enum :ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VisualShaderNodeParameter_property_instance_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **instance_index** = ``0`` :ref:`🔗<class_VisualShaderNodeParameter_property_instance_index>`

.. rst-class:: classref-property-setget

- |void| **set_instance_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_instance_index**\ (\ )

The index within 0-15 range, which is used to avoid clashes when shader used on multiple materials.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeParameter_property_parameter_name:

.. rst-class:: classref-property

:ref:`String<class_String>` **parameter_name** = ``""`` :ref:`🔗<class_VisualShaderNodeParameter_property_parameter_name>`

.. rst-class:: classref-property-setget

- |void| **set_parameter_name**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_parameter_name**\ (\ )

Nombre del parámetro, mediante el cual se puede acceder a través de las propiedades de :ref:`ShaderMaterial<class_ShaderMaterial>`.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeParameter_property_qualifier:

.. rst-class:: classref-property

:ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **qualifier** = ``0`` :ref:`🔗<class_VisualShaderNodeParameter_property_qualifier>`

.. rst-class:: classref-property-setget

- |void| **set_qualifier**\ (\ value\: :ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>`\ )
- :ref:`Qualifier<enum_VisualShaderNodeParameter_Qualifier>` **get_qualifier**\ (\ )

Define el alcance del parámetro.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
