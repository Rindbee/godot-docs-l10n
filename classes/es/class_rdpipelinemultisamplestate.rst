:github_url: hide

.. _class_RDPipelineMultisampleState:

RDPipelineMultisampleState
==========================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Estado de muestreo múltiple del pipeline (utilizado por :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Descripción
----------------------

**RDPipelineMultisampleState** se utiliza para controlar cómo se realiza el antialiasing de muestreo múltiple o supermuestreo al renderizar con :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                    | :ref:`enable_alpha_to_coverage<class_RDPipelineMultisampleState_property_enable_alpha_to_coverage>` | ``false`` |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                    | :ref:`enable_alpha_to_one<class_RDPipelineMultisampleState_property_enable_alpha_to_one>`           | ``false`` |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                    | :ref:`enable_sample_shading<class_RDPipelineMultisampleState_property_enable_sample_shading>`       | ``false`` |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                  | :ref:`min_sample_shading<class_RDPipelineMultisampleState_property_min_sample_shading>`             | ``0.0``   |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` | :ref:`sample_count<class_RDPipelineMultisampleState_property_sample_count>`                         | ``0``     |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-----------+
   | :ref:`Array<class_Array>`\[:ref:`int<class_int>`\]         | :ref:`sample_masks<class_RDPipelineMultisampleState_property_sample_masks>`                         | ``[]``    |
   +------------------------------------------------------------+-----------------------------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_RDPipelineMultisampleState_property_enable_alpha_to_coverage:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_alpha_to_coverage** = ``false`` :ref:`🔗<class_RDPipelineMultisampleState_property_enable_alpha_to_coverage>`

.. rst-class:: classref-property-setget

- |void| **set_enable_alpha_to_coverage**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_alpha_to_coverage**\ (\ )

Si es ``true``, se habilita la cobertura alfa. Esto genera un valor de cobertura temporal basado en el componente alfa de la primera salida de color del fragmento. Esto permite que la transparencia alfa haga uso del antialiasing de muestreo múltiple.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineMultisampleState_property_enable_alpha_to_one:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_alpha_to_one** = ``false`` :ref:`🔗<class_RDPipelineMultisampleState_property_enable_alpha_to_one>`

.. rst-class:: classref-property-setget

- |void| **set_enable_alpha_to_one**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_alpha_to_one**\ (\ )

If ``true``, alpha is forced to either ``0.0`` or ``1.0``. This allows hardening the edges of antialiased alpha transparencies. Only relevant if :ref:`enable_alpha_to_coverage<class_RDPipelineMultisampleState_property_enable_alpha_to_coverage>` is ``true``.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineMultisampleState_property_enable_sample_shading:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_sample_shading** = ``false`` :ref:`🔗<class_RDPipelineMultisampleState_property_enable_sample_shading>`

.. rst-class:: classref-property-setget

- |void| **set_enable_sample_shading**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_sample_shading**\ (\ )

Si es ``true``, habilita el sombreado por muestra, que reemplaza MSAA por SSAA. Esto proporciona un antialiasing de mayor calidad que funciona con bordes transparentes (alpha scissor). Esto tiene un coste de rendimiento muy alto. Véase también :ref:`min_sample_shading<class_RDPipelineMultisampleState_property_min_sample_shading>`. Véase la `documentación de Vulkan sobre el sombreado por muestra <https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#primsrast-sampleshading>`__ para obtener más detalles.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineMultisampleState_property_min_sample_shading:

.. rst-class:: classref-property

:ref:`float<class_float>` **min_sample_shading** = ``0.0`` :ref:`🔗<class_RDPipelineMultisampleState_property_min_sample_shading>`

.. rst-class:: classref-property-setget

- |void| **set_min_sample_shading**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_min_sample_shading**\ (\ )

El multiplicador de :ref:`sample_count<class_RDPipelineMultisampleState_property_sample_count>` que determina cuántas muestras se realizan para cada fragmento. Debe estar entre ``0.0`` y ``1.0`` (inclusive). Sólo es efectivo si :ref:`enable_sample_shading<class_RDPipelineMultisampleState_property_enable_sample_shading>` es ``true``. Si :ref:`min_sample_shading<class_RDPipelineMultisampleState_property_min_sample_shading>` es ``1.0``, la invocación de fragmentos sólo debe leer de la muestra del índice de cobertura. El acceso a la imagen de tile no debe utilizarse si :ref:`enable_sample_shading<class_RDPipelineMultisampleState_property_enable_sample_shading>` *no* es ``1.0``.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineMultisampleState_property_sample_count:

.. rst-class:: classref-property

:ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **sample_count** = ``0`` :ref:`🔗<class_RDPipelineMultisampleState_property_sample_count>`

.. rst-class:: classref-property-setget

- |void| **set_sample_count**\ (\ value\: :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>`\ )
- :ref:`TextureSamples<enum_RenderingDevice_TextureSamples>` **get_sample_count**\ (\ )

El número de muestras MSAA (o muestras SSAA si :ref:`enable_sample_shading<class_RDPipelineMultisampleState_property_enable_sample_shading>` es ``true``) a realizar. Los valores más altos resultan en un mejor antialiasing, a costa del rendimiento.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineMultisampleState_property_sample_masks:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`int<class_int>`\] **sample_masks** = ``[]`` :ref:`🔗<class_RDPipelineMultisampleState_property_sample_masks>`

.. rst-class:: classref-property-setget

- |void| **set_sample_masks**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`int<class_int>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`int<class_int>`\] **get_sample_masks**\ (\ )

El array de máscara de muestra. Véase la `documentación de Vulkan sobre la máscara de muestra <https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#fragops-samplemask>`__ para más detalles.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
