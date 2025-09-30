:github_url: hide

.. _class_RDShaderFile:

RDShaderFile
============

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Compiled shader file in SPIR-V form (used by :ref:`RenderingDevice<class_RenderingDevice>`). Not to be confused with Godot's own :ref:`Shader<class_Shader>`.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Compiled shader file in SPIR-V form.

See also :ref:`RDShaderSource<class_RDShaderSource>`. **RDShaderFile** is only meant to be used with the :ref:`RenderingDevice<class_RenderingDevice>` API. It should not be confused with Godot's own :ref:`Shader<class_Shader>` resource, which is what Godot's various nodes use for high-level shader programming.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +-----------------------------+-----------------------------------------------------------+--------+
   | :ref:`String<class_String>` | :ref:`base_error<class_RDShaderFile_property_base_error>` | ``""`` |
   +-----------------------------+-----------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RDShaderSPIRV<class_RDShaderSPIRV>`                        | :ref:`get_spirv<class_RDShaderFile_method_get_spirv>`\ (\ version\: :ref:`StringName<class_StringName>` = &""\ ) |const|                                                     |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] | :ref:`get_version_list<class_RDShaderFile_method_get_version_list>`\ (\ ) |const|                                                                                            |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                                           | :ref:`set_bytecode<class_RDShaderFile_method_set_bytecode>`\ (\ bytecode\: :ref:`RDShaderSPIRV<class_RDShaderSPIRV>`, version\: :ref:`StringName<class_StringName>` = &""\ ) |
   +------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_RDShaderFile_property_base_error:

.. rst-class:: classref-property

:ref:`String<class_String>` **base_error** = ``""`` :ref:`🔗<class_RDShaderFile_property_base_error>`

.. rst-class:: classref-property-setget

- |void| **set_base_error**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_base_error**\ (\ )

The base compilation error message, which indicates errors not related to a specific shader stage if non-empty. If empty, shader compilation is not necessarily successful (check :ref:`RDShaderSPIRV<class_RDShaderSPIRV>`'s error message members).

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_RDShaderFile_method_get_spirv:

.. rst-class:: classref-method

:ref:`RDShaderSPIRV<class_RDShaderSPIRV>` **get_spirv**\ (\ version\: :ref:`StringName<class_StringName>` = &""\ ) |const| :ref:`🔗<class_RDShaderFile_method_get_spirv>`

Returns the SPIR-V intermediate representation for the specified shader ``version``.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderFile_method_get_version_list:

.. rst-class:: classref-method

:ref:`Array<class_Array>`\[:ref:`StringName<class_StringName>`\] **get_version_list**\ (\ ) |const| :ref:`🔗<class_RDShaderFile_method_get_version_list>`

Returns the list of compiled versions for this shader.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderFile_method_set_bytecode:

.. rst-class:: classref-method

|void| **set_bytecode**\ (\ bytecode\: :ref:`RDShaderSPIRV<class_RDShaderSPIRV>`, version\: :ref:`StringName<class_StringName>` = &""\ ) :ref:`🔗<class_RDShaderFile_method_set_bytecode>`

Sets the SPIR-V ``bytecode`` that will be compiled for the specified ``version``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
