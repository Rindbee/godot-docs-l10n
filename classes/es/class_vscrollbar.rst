:github_url: hide

.. _class_VScrollBar:

VScrollBar
==========

**Hereda:** :ref:`ScrollBar<class_ScrollBar>` **<** :ref:`Range<class_Range>` **<** :ref:`Control<class_Control>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Una barra de desplazamiento vertical que va desde arriba (mín.) hasta abajo (máx.).

.. rst-class:: classref-introduction-group

Descripción
----------------------

Una barra de desplazamiento vertical, que se utiliza normalmente para navegar a través del contenido que se extiende más allá de la altura visible de un control. Es un control basado en :ref:`Range<class_Range>` y va de arriba (mínimo) a abajo (máximo). Ten en cuenta que esta dirección es la opuesta a la de :ref:`VSlider<class_VSlider>`.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +--------------------------------------------------------+-----------------------+--------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] | size_flags_horizontal | ``0`` (overrides :ref:`Control<class_Control_property_size_flags_horizontal>`) |
   +--------------------------------------------------------+-----------------------+--------------------------------------------------------------------------------+
   | |bitfield|\[:ref:`SizeFlags<enum_Control_SizeFlags>`\] | size_flags_vertical   | ``1`` (overrides :ref:`Control<class_Control_property_size_flags_vertical>`)   |
   +--------------------------------------------------------+-----------------------+--------------------------------------------------------------------------------+

.. rst-class:: classref-reftable-group

Propiedades del Tema
----------------------------------------

.. table::
   :widths: auto

   +-----------------------+---------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`padding_left<class_VScrollBar_theme_constant_padding_left>`   | ``0`` |
   +-----------------------+---------------------------------------------------------------------+-------+
   | :ref:`int<class_int>` | :ref:`padding_right<class_VScrollBar_theme_constant_padding_right>` | ``0`` |
   +-----------------------+---------------------------------------------------------------------+-------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de las propiedades del tema
----------------------------------------------------------------------------------

.. _class_VScrollBar_theme_constant_padding_left:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **padding_left** = ``0`` :ref:`🔗<class_VScrollBar_theme_constant_padding_left>`

Padding between the left of the :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` element and the :ref:`ScrollBar.grabber<class_ScrollBar_theme_style_grabber>`.

\ **Note:** To apply vertical padding, modify the top/bottom content margins of :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` instead.

.. rst-class:: classref-item-separator

----

.. _class_VScrollBar_theme_constant_padding_right:

.. rst-class:: classref-themeproperty

:ref:`int<class_int>` **padding_right** = ``0`` :ref:`🔗<class_VScrollBar_theme_constant_padding_right>`

Padding between the right of the :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` element and the :ref:`ScrollBar.grabber<class_ScrollBar_theme_style_grabber>`.

\ **Note:** To apply vertical padding, modify the top/bottom content margins of :ref:`ScrollBar.scroll<class_ScrollBar_theme_style_scroll>` instead.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
