:github_url: hide

.. _class_RDPipelineColorBlendState:

RDPipelineColorBlendState
=========================

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Estado de mezcla de color del pipeline (utilizado por :ref:`RenderingDevice<class_RenderingDevice>`).

.. rst-class:: classref-introduction-group

Descripción
----------------------

Este objeto es utilizado por :ref:`RenderingDevice<class_RenderingDevice>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`Array<class_Array>`\[:ref:`RDPipelineColorBlendStateAttachment<class_RDPipelineColorBlendStateAttachment>`\] | :ref:`attachments<class_RDPipelineColorBlendState_property_attachments>`         | ``[]``                |
   +--------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`Color<class_Color>`                                                                                          | :ref:`blend_constant<class_RDPipelineColorBlendState_property_blend_constant>`   | ``Color(0, 0, 0, 1)`` |
   +--------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`bool<class_bool>`                                                                                            | :ref:`enable_logic_op<class_RDPipelineColorBlendState_property_enable_logic_op>` | ``false``             |
   +--------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+
   | :ref:`LogicOperation<enum_RenderingDevice_LogicOperation>`                                                         | :ref:`logic_op<class_RDPipelineColorBlendState_property_logic_op>`               | ``0``                 |
   +--------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_RDPipelineColorBlendState_property_attachments:

.. rst-class:: classref-property

:ref:`Array<class_Array>`\[:ref:`RDPipelineColorBlendStateAttachment<class_RDPipelineColorBlendStateAttachment>`\] **attachments** = ``[]`` :ref:`🔗<class_RDPipelineColorBlendState_property_attachments>`

.. rst-class:: classref-property-setget

- |void| **set_attachments**\ (\ value\: :ref:`Array<class_Array>`\[:ref:`RDPipelineColorBlendStateAttachment<class_RDPipelineColorBlendStateAttachment>`\]\ )
- :ref:`Array<class_Array>`\[:ref:`RDPipelineColorBlendStateAttachment<class_RDPipelineColorBlendStateAttachment>`\] **get_attachments**\ (\ )

Los adjuntos que se mezclan.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendState_property_blend_constant:

.. rst-class:: classref-property

:ref:`Color<class_Color>` **blend_constant** = ``Color(0, 0, 0, 1)`` :ref:`🔗<class_RDPipelineColorBlendState_property_blend_constant>`

.. rst-class:: classref-property-setget

- |void| **set_blend_constant**\ (\ value\: :ref:`Color<class_Color>`\ )
- :ref:`Color<class_Color>` **get_blend_constant**\ (\ )

El color constante con el que mezclar. Véase también :ref:`RenderingDevice.draw_list_set_blend_constants()<class_RenderingDevice_method_draw_list_set_blend_constants>`.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendState_property_enable_logic_op:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **enable_logic_op** = ``false`` :ref:`🔗<class_RDPipelineColorBlendState_property_enable_logic_op>`

.. rst-class:: classref-property-setget

- |void| **set_enable_logic_op**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_enable_logic_op**\ (\ )

Si es ``true``, realiza la operación lógica definida en :ref:`logic_op<class_RDPipelineColorBlendState_property_logic_op>`.

.. rst-class:: classref-item-separator

----

.. _class_RDPipelineColorBlendState_property_logic_op:

.. rst-class:: classref-property

:ref:`LogicOperation<enum_RenderingDevice_LogicOperation>` **logic_op** = ``0`` :ref:`🔗<class_RDPipelineColorBlendState_property_logic_op>`

.. rst-class:: classref-property-setget

- |void| **set_logic_op**\ (\ value\: :ref:`LogicOperation<enum_RenderingDevice_LogicOperation>`\ )
- :ref:`LogicOperation<enum_RenderingDevice_LogicOperation>` **get_logic_op**\ (\ )

La operación lógica a realizar para la mezcla. Solo es efectiva si :ref:`enable_logic_op<class_RDPipelineColorBlendState_property_enable_logic_op>` es ``true``.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
