:github_url: hide

.. _class_RDShaderSource:

RDShaderSource
==============

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Código fuente del shader (utilizado por :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Descripción
----------------------

Shader source code in text form.

See also :ref:`RDShaderFile<class_RDShaderFile>`. **RDShaderSource** is only meant to be used with the :ref:`RenderingDevice<class_RenderingDevice>` API. It should not be confused with Godot's own :ref:`Shader<class_Shader>` resource, which is what Godot's various nodes use for high-level shader programming.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`ShaderLanguage<enum_RenderingDevice_ShaderLanguage>` | :ref:`language<class_RDShaderSource_property_language>`                                           | ``0``  |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_compute<class_RDShaderSource_property_source_compute>`                               | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_fragment<class_RDShaderSource_property_source_fragment>`                             | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_tesselation_control<class_RDShaderSource_property_source_tesselation_control>`       | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_tesselation_evaluation<class_RDShaderSource_property_source_tesselation_evaluation>` | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+
   | :ref:`String<class_String>`                                | :ref:`source_vertex<class_RDShaderSource_property_source_vertex>`                                 | ``""`` |
   +------------------------------------------------------------+---------------------------------------------------------------------------------------------------+--------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`String<class_String>` | :ref:`get_stage_source<class_RDShaderSource_method_get_stage_source>`\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|                               |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                      | :ref:`set_stage_source<class_RDShaderSource_method_set_stage_source>`\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ ) |
   +-----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_RDShaderSource_property_language:

.. rst-class:: classref-property

:ref:`ShaderLanguage<enum_RenderingDevice_ShaderLanguage>` **language** = ``0`` :ref:`🔗<class_RDShaderSource_property_language>`

.. rst-class:: classref-property-setget

- |void| **set_language**\ (\ value\: :ref:`ShaderLanguage<enum_RenderingDevice_ShaderLanguage>`\ )
- :ref:`ShaderLanguage<enum_RenderingDevice_ShaderLanguage>` **get_language**\ (\ )

El lenguaje en el que está escrito el shader.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_compute:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_compute** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_compute>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Código fuente para la etapa de cálculo del shader.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_fragment:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_fragment** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_fragment>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Código fuente para la etapa de fragmento del shader.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_tesselation_control:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_tesselation_control** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_tesselation_control>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Código fuente para la etapa de control de teselación del shader.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_tesselation_evaluation:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_tesselation_evaluation** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_tesselation_evaluation>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Código fuente para la etapa de evaluación de teselación del shader.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_property_source_vertex:

.. rst-class:: classref-property

:ref:`String<class_String>` **source_vertex** = ``""`` :ref:`🔗<class_RDShaderSource_property_source_vertex>`

.. rst-class:: classref-property-setget

- |void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const|

Código fuente para la etapa de vértice del shader.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_RDShaderSource_method_get_stage_source:

.. rst-class:: classref-method

:ref:`String<class_String>` **get_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`\ ) |const| :ref:`🔗<class_RDShaderSource_method_get_stage_source>`

Returns source code for the specified shader ``stage``. Equivalent to getting one of :ref:`source_compute<class_RDShaderSource_property_source_compute>`, :ref:`source_fragment<class_RDShaderSource_property_source_fragment>`, :ref:`source_tesselation_control<class_RDShaderSource_property_source_tesselation_control>`, :ref:`source_tesselation_evaluation<class_RDShaderSource_property_source_tesselation_evaluation>` or :ref:`source_vertex<class_RDShaderSource_property_source_vertex>`.

.. rst-class:: classref-item-separator

----

.. _class_RDShaderSource_method_set_stage_source:

.. rst-class:: classref-method

|void| **set_stage_source**\ (\ stage\: :ref:`ShaderStage<enum_RenderingDevice_ShaderStage>`, source\: :ref:`String<class_String>`\ ) :ref:`🔗<class_RDShaderSource_method_set_stage_source>`

Sets ``source`` code for the specified shader ``stage``. Equivalent to setting one of :ref:`source_compute<class_RDShaderSource_property_source_compute>`, :ref:`source_fragment<class_RDShaderSource_property_source_fragment>`, :ref:`source_tesselation_control<class_RDShaderSource_property_source_tesselation_control>`, :ref:`source_tesselation_evaluation<class_RDShaderSource_property_source_tesselation_evaluation>` or :ref:`source_vertex<class_RDShaderSource_property_source_vertex>`.

\ **Note:** If you set the compute shader source code using this method directly, remember to remove the Godot-specific hint ``#[compute]``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
