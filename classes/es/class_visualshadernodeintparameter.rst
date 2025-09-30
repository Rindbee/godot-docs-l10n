:github_url: hide

.. _class_VisualShaderNodeIntParameter:

VisualShaderNodeIntParameter
============================

**Hereda:** :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un nodo de shader visual para el parámetro de shader (uniforme) de tipo :ref:`int<class_int>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` de tipo :ref:`int<class_int>`. Ofrece personalización adicional para el rango de valores aceptados.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                               | :ref:`default_value<class_VisualShaderNodeIntParameter_property_default_value>`                 | ``0``                   |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`bool<class_bool>`                             | :ref:`default_value_enabled<class_VisualShaderNodeIntParameter_property_default_value_enabled>` | ``false``               |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`PackedStringArray<class_PackedStringArray>`   | :ref:`enum_names<class_VisualShaderNodeIntParameter_property_enum_names>`                       | ``PackedStringArray()`` |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` | :ref:`hint<class_VisualShaderNodeIntParameter_property_hint>`                                   | ``0``                   |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                               | :ref:`max<class_VisualShaderNodeIntParameter_property_max>`                                     | ``100``                 |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                               | :ref:`min<class_VisualShaderNodeIntParameter_property_min>`                                     | ``0``                   |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+
   | :ref:`int<class_int>`                               | :ref:`step<class_VisualShaderNodeIntParameter_property_step>`                                   | ``1``                   |
   +-----------------------------------------------------+-------------------------------------------------------------------------------------------------+-------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_VisualShaderNodeIntParameter_Hint:

.. rst-class:: classref-enumeration

enum **Hint**: :ref:`🔗<enum_VisualShaderNodeIntParameter_Hint>`

.. _class_VisualShaderNodeIntParameter_constant_HINT_NONE:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **HINT_NONE** = ``0``

El parámetro no restringirá su valor.

.. _class_VisualShaderNodeIntParameter_constant_HINT_RANGE:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **HINT_RANGE** = ``1``

El valor del parámetro debe estar dentro del rango :ref:`min<class_VisualShaderNodeIntParameter_property_min>`/:ref:`max<class_VisualShaderNodeIntParameter_property_max>` especificado.

.. _class_VisualShaderNodeIntParameter_constant_HINT_RANGE_STEP:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **HINT_RANGE_STEP** = ``2``

El valor del parámetro debe estar dentro del rango especificado, con el :ref:`step<class_VisualShaderNodeIntParameter_property_step>` dado entre los valores.

.. _class_VisualShaderNodeIntParameter_constant_HINT_ENUM:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **HINT_ENUM** = ``3``

El parámetro utiliza una enumeración para asociar valores preestablecidos a nombres en el editor.

.. _class_VisualShaderNodeIntParameter_constant_HINT_MAX:

.. rst-class:: classref-enumeration-constant

:ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **HINT_MAX** = ``4``

Representa el tamaño del enum :ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VisualShaderNodeIntParameter_property_default_value:

.. rst-class:: classref-property

:ref:`int<class_int>` **default_value** = ``0`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_default_value>`

.. rst-class:: classref-property-setget

- |void| **set_default_value**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_default_value**\ (\ )

Valor predeterminado de este parámetro, que se utilizará si no se establece externamente. :ref:`default_value_enabled<class_VisualShaderNodeIntParameter_property_default_value_enabled>` debe estar habilitado; de lo contrario, el valor predeterminado es ``0``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeIntParameter_property_default_value_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **default_value_enabled** = ``false`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_default_value_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_default_value_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_default_value_enabled**\ (\ )

Si es ``true``, el nodo tendrá un valor por defecto personalizado.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeIntParameter_property_enum_names:

.. rst-class:: classref-property

:ref:`PackedStringArray<class_PackedStringArray>` **enum_names** = ``PackedStringArray()`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_enum_names>`

.. rst-class:: classref-property-setget

- |void| **set_enum_names**\ (\ value\: :ref:`PackedStringArray<class_PackedStringArray>`\ )
- :ref:`PackedStringArray<class_PackedStringArray>` **get_enum_names**\ (\ )

Los nombres utilizados para la selección del enum en el editor. :ref:`hint<class_VisualShaderNodeIntParameter_property_hint>` debe ser :ref:`HINT_ENUM<class_VisualShaderNodeIntParameter_constant_HINT_ENUM>` para que esto tenga efecto.

**Note:** The returned array is *copied* and any changes to it will not update the original property value. See :ref:`PackedStringArray<class_PackedStringArray>` for more details.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeIntParameter_property_hint:

.. rst-class:: classref-property

:ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **hint** = ``0`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_hint>`

.. rst-class:: classref-property-setget

- |void| **set_hint**\ (\ value\: :ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>`\ )
- :ref:`Hint<enum_VisualShaderNodeIntParameter_Hint>` **get_hint**\ (\ )

Sugerencia de rango de este nodo. Úsalo para personalizar el rango de parámetros válido.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeIntParameter_property_max:

.. rst-class:: classref-property

:ref:`int<class_int>` **max** = ``100`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_max>`

.. rst-class:: classref-property-setget

- |void| **set_max**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max**\ (\ )

El valor máximo que puede tomar este parámetro. :ref:`hint<class_VisualShaderNodeIntParameter_property_hint>` debe ser :ref:`HINT_RANGE<class_VisualShaderNodeIntParameter_constant_HINT_RANGE>` o :ref:`HINT_RANGE_STEP<class_VisualShaderNodeIntParameter_constant_HINT_RANGE_STEP>` para que esto tenga efecto.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeIntParameter_property_min:

.. rst-class:: classref-property

:ref:`int<class_int>` **min** = ``0`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_min>`

.. rst-class:: classref-property-setget

- |void| **set_min**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_min**\ (\ )

El valor mínimo que puede tomar este parámetro. :ref:`hint<class_VisualShaderNodeIntParameter_property_hint>` debe ser :ref:`HINT_RANGE<class_VisualShaderNodeIntParameter_constant_HINT_RANGE>` o :ref:`HINT_RANGE_STEP<class_VisualShaderNodeIntParameter_constant_HINT_RANGE_STEP>` para que esto tenga efecto.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeIntParameter_property_step:

.. rst-class:: classref-property

:ref:`int<class_int>` **step** = ``1`` :ref:`🔗<class_VisualShaderNodeIntParameter_property_step>`

.. rst-class:: classref-property-setget

- |void| **set_step**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_step**\ (\ )

El paso entre los valores del parámetro. Fuerza al parámetro a ser un múltiplo del valor dado. :ref:`hint<class_VisualShaderNodeIntParameter_property_hint>` debe ser :ref:`HINT_RANGE_STEP<class_VisualShaderNodeIntParameter_constant_HINT_RANGE_STEP>` para que esto tenga efecto.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
