:github_url: hide

.. _class_AspectRatioContainer:

AspectRatioContainer
====================

**Hereda:** :ref:`Container<class_Container>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Un contenedor que conserva las proporciones de sus controles hijos.

.. rst-class:: classref-introduction-group

Descripción
----------------------

A container type that arranges its child controls in a way that preserves their proportions automatically when the container is resized. Useful when a container has a dynamic size and the child nodes must adjust their sizes accordingly without losing their aspect ratios.

.. rst-class:: classref-introduction-group

Tutoriales
--------------------

- :doc:`Usar Contenedores <../tutorials/ui/gui_containers>`

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------+---------------------------------------------------------------------------------------+---------+
   | :ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` | :ref:`alignment_horizontal<class_AspectRatioContainer_property_alignment_horizontal>` | ``1``   |
   +---------------------------------------------------------------+---------------------------------------------------------------------------------------+---------+
   | :ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` | :ref:`alignment_vertical<class_AspectRatioContainer_property_alignment_vertical>`     | ``1``   |
   +---------------------------------------------------------------+---------------------------------------------------------------------------------------+---------+
   | :ref:`float<class_float>`                                     | :ref:`ratio<class_AspectRatioContainer_property_ratio>`                               | ``1.0`` |
   +---------------------------------------------------------------+---------------------------------------------------------------------------------------+---------+
   | :ref:`StretchMode<enum_AspectRatioContainer_StretchMode>`     | :ref:`stretch_mode<class_AspectRatioContainer_property_stretch_mode>`                 | ``2``   |
   +---------------------------------------------------------------+---------------------------------------------------------------------------------------+---------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Enumeraciones
--------------------------

.. _enum_AspectRatioContainer_StretchMode:

.. rst-class:: classref-enumeration

enum **StretchMode**: :ref:`🔗<enum_AspectRatioContainer_StretchMode>`

.. _class_AspectRatioContainer_constant_STRETCH_WIDTH_CONTROLS_HEIGHT:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_AspectRatioContainer_StretchMode>` **STRETCH_WIDTH_CONTROLS_HEIGHT** = ``0``

La altura de los controles hijos se ajusta automáticamente en función del ancho del contenedor.

.. _class_AspectRatioContainer_constant_STRETCH_HEIGHT_CONTROLS_WIDTH:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_AspectRatioContainer_StretchMode>` **STRETCH_HEIGHT_CONTROLS_WIDTH** = ``1``

The width of child controls is automatically adjusted based on the height of the container.

.. _class_AspectRatioContainer_constant_STRETCH_FIT:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_AspectRatioContainer_StretchMode>` **STRETCH_FIT** = ``2``

El rectángulo delimitador de los controles hijos se ajusta automáticamente para encajar dentro del contenedor manteniendo la proporción de aspecto.

.. _class_AspectRatioContainer_constant_STRETCH_COVER:

.. rst-class:: classref-enumeration-constant

:ref:`StretchMode<enum_AspectRatioContainer_StretchMode>` **STRETCH_COVER** = ``3``

The width and height of child controls is automatically adjusted to make their bounding rectangle cover the entire area of the container while keeping the aspect ratio.

When the bounding rectangle of child controls exceed the container's size and :ref:`Control.clip_contents<class_Control_property_clip_contents>` is enabled, this allows to show only the container's area restricted by its own bounding rectangle.

.. rst-class:: classref-item-separator

----

.. _enum_AspectRatioContainer_AlignmentMode:

.. rst-class:: classref-enumeration

enum **AlignmentMode**: :ref:`🔗<enum_AspectRatioContainer_AlignmentMode>`

.. _class_AspectRatioContainer_constant_ALIGNMENT_BEGIN:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` **ALIGNMENT_BEGIN** = ``0``

Alinea los controles hijos con el comienzo (izquierdo o superior) del contenedor.

.. _class_AspectRatioContainer_constant_ALIGNMENT_CENTER:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` **ALIGNMENT_CENTER** = ``1``

Alinea los controles hijos con el centro del contenedor.

.. _class_AspectRatioContainer_constant_ALIGNMENT_END:

.. rst-class:: classref-enumeration-constant

:ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` **ALIGNMENT_END** = ``2``

Alinea los controles hijos con el extremo (derecho o inferior) del contenedor.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_AspectRatioContainer_property_alignment_horizontal:

.. rst-class:: classref-property

:ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` **alignment_horizontal** = ``1`` :ref:`🔗<class_AspectRatioContainer_property_alignment_horizontal>`

.. rst-class:: classref-property-setget

- |void| **set_alignment_horizontal**\ (\ value\: :ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>`\ )
- :ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` **get_alignment_horizontal**\ (\ )

Especifica la posición relativa horizontal de los controles hijos.

.. rst-class:: classref-item-separator

----

.. _class_AspectRatioContainer_property_alignment_vertical:

.. rst-class:: classref-property

:ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` **alignment_vertical** = ``1`` :ref:`🔗<class_AspectRatioContainer_property_alignment_vertical>`

.. rst-class:: classref-property-setget

- |void| **set_alignment_vertical**\ (\ value\: :ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>`\ )
- :ref:`AlignmentMode<enum_AspectRatioContainer_AlignmentMode>` **get_alignment_vertical**\ (\ )

Especifica la posición relativa vertical de los controles hijos.

.. rst-class:: classref-item-separator

----

.. _class_AspectRatioContainer_property_ratio:

.. rst-class:: classref-property

:ref:`float<class_float>` **ratio** = ``1.0`` :ref:`🔗<class_AspectRatioContainer_property_ratio>`

.. rst-class:: classref-property-setget

- |void| **set_ratio**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_ratio**\ (\ )

La proporción de aspecto que se aplicará a los controles hijos. Esta es la anchura dividida por la altura. La proporción depende del :ref:`stretch_mode<class_AspectRatioContainer_property_stretch_mode>`.

.. rst-class:: classref-item-separator

----

.. _class_AspectRatioContainer_property_stretch_mode:

.. rst-class:: classref-property

:ref:`StretchMode<enum_AspectRatioContainer_StretchMode>` **stretch_mode** = ``2`` :ref:`🔗<class_AspectRatioContainer_property_stretch_mode>`

.. rst-class:: classref-property-setget

- |void| **set_stretch_mode**\ (\ value\: :ref:`StretchMode<enum_AspectRatioContainer_StretchMode>`\ )
- :ref:`StretchMode<enum_AspectRatioContainer_StretchMode>` **get_stretch_mode**\ (\ )

El modo de estiramiento utilizado para alinear los controles hijos.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
