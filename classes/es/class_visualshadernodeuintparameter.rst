:github_url: hide

.. _class_VisualShaderNodeUIntParameter:

VisualShaderNodeUIntParameter
=============================

**Hereda:** :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` **<** :ref:`VisualShaderNode<class_VisualShaderNode>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Un nodo de shader visual para un parámetro de shader (uniform) de tipo :ref:`int<class_int>` sin signo.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un :ref:`VisualShaderNodeParameter<class_VisualShaderNodeParameter>` de tipo :ref:`int<class_int>` sin signo. Ofrece personalización adicional para el rango de valores aceptados.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`   | :ref:`default_value<class_VisualShaderNodeUIntParameter_property_default_value>`                 | ``0``     |
   +-------------------------+--------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>` | :ref:`default_value_enabled<class_VisualShaderNodeUIntParameter_property_default_value_enabled>` | ``false`` |
   +-------------------------+--------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_VisualShaderNodeUIntParameter_property_default_value:

.. rst-class:: classref-property

:ref:`int<class_int>` **default_value** = ``0`` :ref:`🔗<class_VisualShaderNodeUIntParameter_property_default_value>`

.. rst-class:: classref-property-setget

- |void| **set_default_value**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_default_value**\ (\ )

Valor predeterminado de este parámetro, que se utilizará si no se establece externamente. :ref:`default_value_enabled<class_VisualShaderNodeUIntParameter_property_default_value_enabled>` debe estar habilitado; de lo contrario, el valor predeterminado es ``0``.

.. rst-class:: classref-item-separator

----

.. _class_VisualShaderNodeUIntParameter_property_default_value_enabled:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **default_value_enabled** = ``false`` :ref:`🔗<class_VisualShaderNodeUIntParameter_property_default_value_enabled>`

.. rst-class:: classref-property-setget

- |void| **set_default_value_enabled**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_default_value_enabled**\ (\ )

Si es ``true``, el nodo tendrá un valor por defecto personalizado.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
