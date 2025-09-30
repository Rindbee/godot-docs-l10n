:github_url: hide

.. _class_RDUniform:

RDUniform
=========

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Shader uniform (used by :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Descripción
----------------------

This object is used by :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +------------------------------------------------------+------------------------------------------------------------+-------+
   | :ref:`int<class_int>`                                | :ref:`binding<class_RDUniform_property_binding>`           | ``0`` |
   +------------------------------------------------------+------------------------------------------------------------+-------+
   | :ref:`UniformType<enum_RenderingDevice_UniformType>` | :ref:`uniform_type<class_RDUniform_property_uniform_type>` | ``3`` |
   +------------------------------------------------------+------------------------------------------------------------+-------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +----------------------------------------------------+--------------------------------------------------------------------------------+
   | |void|                                             | :ref:`add_id<class_RDUniform_method_add_id>`\ (\ id\: :ref:`RID<class_RID>`\ ) |
   +----------------------------------------------------+--------------------------------------------------------------------------------+
   | |void|                                             | :ref:`clear_ids<class_RDUniform_method_clear_ids>`\ (\ )                       |
   +----------------------------------------------------+--------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] | :ref:`get_ids<class_RDUniform_method_get_ids>`\ (\ ) |const|                   |
   +----------------------------------------------------+--------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_RDUniform_property_binding:

.. rst-class:: classref-property

:ref:`int<class_int>` **binding** = ``0`` :ref:`🔗<class_RDUniform_property_binding>`

.. rst-class:: classref-property-setget

- |void| **set_binding**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_binding**\ (\ )

The uniform's binding.

.. rst-class:: classref-item-separator

----

.. _class_RDUniform_property_uniform_type:

.. rst-class:: classref-property

:ref:`UniformType<enum_RenderingDevice_UniformType>` **uniform_type** = ``3`` :ref:`🔗<class_RDUniform_property_uniform_type>`

.. rst-class:: classref-property-setget

- |void| **set_uniform_type**\ (\ value\: :ref:`UniformType<enum_RenderingDevice_UniformType>`\ )
- :ref:`UniformType<enum_RenderingDevice_UniformType>` **get_uniform_type**\ (\ )

The uniform's data type.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_RDUniform_method_add_id:

.. rst-class:: classref-method

|void| **add_id**\ (\ id\: :ref:`RID<class_RID>`\ ) :ref:`🔗<class_RDUniform_method_add_id>`

Binds the given id to the uniform. The data associated with the id is then used when the uniform is passed to a shader.

.. rst-class:: classref-item-separator

----

.. _class_RDUniform_method_clear_ids:

.. rst-class:: classref-method

|void| **clear_ids**\ (\ ) :ref:`🔗<class_RDUniform_method_clear_ids>`

Unbinds all ids currently bound to the uniform.

.. rst-class:: classref-item-separator

----

.. _class_RDUniform_method_get_ids:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`RID<class_RID>`\] **get_ids**\ (\ ) |const| :ref:`🔗<class_RDUniform_method_get_ids>`

Returns an array of all ids currently bound to the uniform.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
