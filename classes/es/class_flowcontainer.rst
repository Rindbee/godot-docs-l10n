:github_url: hide

.. _class_FlowContainer:

FlowContainer
=============

**Hereda:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`HFlowContainer<class_HFlowContainer>`, :ref:`VFlowContainer<class_VFlowContainer>`

Un contenedor que organiza sus controles hijos horizontal o verticalmente y los envuelve alrededor de los bordes.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Un contenedor que organiza sus controles hijos horizontal o verticalmente y los envuelve alrededor de los bordes. Esto es similar a cómo el texto en un libro se envuelve cuando no caben más palabras en una línea.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usar Contenedores <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +------------------------------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`AlignmentMode<enum_FlowContainer_AlignmentMode>`                 | :ref:`alignment<class_FlowContainer_property_alignment>`                     | ``0``     |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>` | :ref:`last_wrap_alignment<class_FlowContainer_property_last_wrap_alignment>` | ``0``     |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                | :ref:`reverse_fill<class_FlowContainer_property_reverse_fill>`               | ``false`` |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                | :ref:`vertical<class_FlowContainer_property_vertical>`                       | ``false`` |
   +------------------------------------------------------------------------+------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-----------------------+--------------------------------------------------------------------------------+
   | :ref:`int<class_int>` | :ref:`get_line_count<class_FlowContainer_method_get_line_count>`\ (\ ) |const| |
   +-----------------------+--------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Propiedades del Tema
----------------------------------------

.. table::
   :widths: auto

   +-----------------------+----------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`h_separation<class_FlowContainer_theme_constant_h_separation>` | ``4`` |
   +-----------------------+----------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`v_separation<class_FlowContainer_theme_constant_v_separation>` | ``4`` |
   +-----------------------+----------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_FlowContainer_AlignmentMode:

.. rst-class:: classref-enumeration

enum **AlignmentMode**: :ref:`🔗<enum_FlowContainer_AlignmentMode>`

.. _class_FlowContainer_constant_ALIGNMENT_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_FlowContainer_AlignmentMode>` **ALIGNMENT_BEGIN** = ``0``

Los controles secundarios se organizarán al principio del contenedor, es decir, en la parte superior si la orientación es vertical, a la izquierda si la orientación es horizontal (a la derecha para el diseño RTL).

.. _class_FlowContainer_constant_ALIGNMENT_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_FlowContainer_AlignmentMode>` **ALIGNMENT_CENTER** = ``1``

Los controles hijos se centrarán en el contenedor.

.. _class_FlowContainer_constant_ALIGNMENT_END:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_FlowContainer_AlignmentMode>` **ALIGNMENT_END** = ``2``

Los controles secundarios se organizarán al final del contenedor, es decir, en la parte inferior si la orientación es vertical, a la derecha si la orientación es horizontal (a la izquierda para el diseño RTL).

.. rst-class:: classref-item-separator

----

.. _enum_FlowContainer_LastWrapAlignmentMode:

.. rst-class:: classref-enumeration

enum **LastWrapAlignmentMode**: :ref:`🔗<enum_FlowContainer_LastWrapAlignmentMode>`

.. _class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_INHERIT:

.. rst-class:: classref-enumeration-constant

:ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>` **LAST_WRAP_ALIGNMENT_INHERIT** = ``0``

La última fila o columna parcialmente llena se ajustará alineada con la fila o columna anterior de acuerdo con :ref:`alignment<class_FlowContainer_property_alignment>`.

.. _class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>` **LAST_WRAP_ALIGNMENT_BEGIN** = ``1``

La última fila o columna parcialmente llena se ajustará alineada al principio de la fila o columna anterior.

.. _class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>` **LAST_WRAP_ALIGNMENT_CENTER** = ``2``

La última fila o columna parcialmente llena se ajustará alineada al centro de la fila o columna anterior.

.. _class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_END:

.. rst-class:: classref-enumeration-constant

:ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>` **LAST_WRAP_ALIGNMENT_END** = ``3``

La última fila o columna parcialmente llena se ajustará alineada al final de la fila o columna anterior.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_FlowContainer_property_alignment:

.. rst-class:: classref-property

:ref:`AlignmentMode<enum_FlowContainer_AlignmentMode>` **alignment** = ``0`` :ref:`🔗<class_FlowContainer_property_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_alignment**\ (\ value\: :ref:`AlignmentMode<enum_FlowContainer_AlignmentMode>`\ )
- :ref:`AlignmentMode<enum_FlowContainer_AlignmentMode>` **get_alignment**\ (\ )

La alineación de los hijos del contenedor (debe ser uno de :ref:`ALIGNMENT_BEGIN<class_FlowContainer_constant_ALIGNMENT_BEGIN>`, :ref:`ALIGNMENT_CENTER<class_FlowContainer_constant_ALIGNMENT_CENTER>`, o :ref:`ALIGNMENT_END<class_FlowContainer_constant_ALIGNMENT_END>`).

.. rst-class:: classref-item-separator

----

.. _class_FlowContainer_property_last_wrap_alignment:

.. rst-class:: classref-property

:ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>` **last_wrap_alignment** = ``0`` :ref:`🔗<class_FlowContainer_property_last_wrap_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_last_wrap_alignment**\ (\ value\: :ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>`\ )
- :ref:`LastWrapAlignmentMode<enum_FlowContainer_LastWrapAlignmentMode>` **get_last_wrap_alignment**\ (\ )

El comportamiento de ajuste de la última fila o columna parcialmente llena (debe ser uno de :ref:`LAST_WRAP_ALIGNMENT_INHERIT<class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_INHERIT>`, :ref:`LAST_WRAP_ALIGNMENT_BEGIN<class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_BEGIN>`, :ref:`LAST_WRAP_ALIGNMENT_CENTER<class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_CENTER>` o :ref:`LAST_WRAP_ALIGNMENT_END<class_FlowContainer_constant_LAST_WRAP_ALIGNMENT_END>`).

.. rst-class:: classref-item-separator

----

.. _class_FlowContainer_property_reverse_fill:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **reverse_fill** = ``false`` :ref:`🔗<class_FlowContainer_property_reverse_fill>`

.. rst-class:: classref-property-setget

- |void| **set_reverse_fill**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_reverse_fill**\ (\ )

Si es ``true``, invierte la dirección de llenado. Los **FlowContainer** horizontales llenarán las filas de abajo hacia arriba, los **FlowContainer** verticales llenarán las columnas de derecha a izquierda.

Cuando se usa un **FlowContainer** vertical con una :ref:`Control.layout_direction<class_Control_property_layout_direction>` de derecha a izquierda, las columnas se llenarán de izquierda a derecha en su lugar.

.. rst-class:: classref-item-separator

----

.. _class_FlowContainer_property_vertical:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **vertical** = ``false`` :ref:`🔗<class_FlowContainer_property_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_vertical**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_vertical**\ (\ )

Si es ``true``, el **FlowContainer** organizará sus hijos verticalmente, en lugar de horizontalmente.

No se puede cambiar cuando se usa :ref:`HFlowContainer<class_HFlowContainer>` y :ref:`VFlowContainer<class_VFlowContainer>`.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_FlowContainer_method_get_line_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_line_count**\ (\ ) |const| :ref:`🔗<class_FlowContainer_method_get_line_count>`

Devuelve el recuento de líneas actual.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de las propiedades del tema
----------------------------------------------------------------------------------

.. _class_FlowContainer_theme_constant_h_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **h_separation** = ``4`` :ref:`🔗<class_FlowContainer_theme_constant_h_separation>`

La separación horizontal de los nodos hijos.

.. rst-class:: classref-item-separator

----

.. _class_FlowContainer_theme_constant_v_separation:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **v_separation** = ``4`` :ref:`🔗<class_FlowContainer_theme_constant_v_separation>`

La separación vertical de los nodos hijos.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
