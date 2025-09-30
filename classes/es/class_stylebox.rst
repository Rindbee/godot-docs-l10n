:github_url: hide

.. _class_StyleBox:

StyleBox
========

**Hereda:** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

**Heredado por:** :ref:`StyleBoxEmpty<class_StyleBoxEmpty>`, :ref:`StyleBoxFlat<class_StyleBoxFlat>`, :ref:`StyleBoxLine<class_StyleBoxLine>`, :ref:`StyleBoxTexture<class_StyleBoxTexture>`

Clase base abstracta para definir cuadros estilizados para elementos de la interfaz de usuario.

.. rst-class:: classref-introduction-group

Descripción
----------------------

**StyleBox** is an abstract base class for drawing stylized boxes for UI elements. It is used for panels, buttons, :ref:`LineEdit<class_LineEdit>` backgrounds, :ref:`Tree<class_Tree>` backgrounds, etc. and also for testing a transparency mask for pointer signals. If mask test fails on a **StyleBox** assigned as mask to a control, clicks and motion signals will go through it to the one below.

\ **Note:** For control nodes that have *Theme Properties*, the ``focus`` **StyleBox** is displayed over the ``normal``, ``hover`` or ``pressed`` **StyleBox**. This makes the ``focus`` **StyleBox** more reusable across different nodes.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`content_margin_bottom<class_StyleBox_property_content_margin_bottom>` | ``-1.0`` |
   +---------------------------+-----------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`content_margin_left<class_StyleBox_property_content_margin_left>`     | ``-1.0`` |
   +---------------------------+-----------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`content_margin_right<class_StyleBox_property_content_margin_right>`   | ``-1.0`` |
   +---------------------------+-----------------------------------------------------------------------------+----------+
   | :ref:`float<class_float>` | :ref:`content_margin_top<class_StyleBox_property_content_margin_top>`       | ``-1.0`` |
   +---------------------------+-----------------------------------------------------------------------------+----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`_draw<class_StyleBox_private_method__draw>`\ (\ to_canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |virtual| |required| |const| |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`           | :ref:`_get_draw_rect<class_StyleBox_private_method__get_draw_rect>`\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |virtual| |const|                                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`_get_minimum_size<class_StyleBox_private_method__get_minimum_size>`\ (\ ) |virtual| |const|                                                              |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`_test_mask<class_StyleBox_private_method__test_mask>`\ (\ point\: :ref:`Vector2<class_Vector2>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |virtual| |const|   |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`draw<class_StyleBox_method_draw>`\ (\ canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |const|                                   |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_content_margin<class_StyleBox_method_get_content_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                                |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`CanvasItem<class_CanvasItem>` | :ref:`get_current_item_drawn<class_StyleBox_method_get_current_item_drawn>`\ (\ ) |const|                                                                      |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`           | :ref:`get_margin<class_StyleBox_method_get_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|                                                |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`get_minimum_size<class_StyleBox_method_get_minimum_size>`\ (\ ) |const|                                                                                  |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`       | :ref:`get_offset<class_StyleBox_method_get_offset>`\ (\ ) |const|                                                                                              |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_content_margin<class_StyleBox_method_set_content_margin>`\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )    |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                              | :ref:`set_content_margin_all<class_StyleBox_method_set_content_margin_all>`\ (\ offset\: :ref:`float<class_float>`\ )                                          |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`             | :ref:`test_mask<class_StyleBox_method_test_mask>`\ (\ point\: :ref:`Vector2<class_Vector2>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |const|                       |
   +-------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_StyleBox_property_content_margin_bottom:

.. rst-class:: classref-property

:ref:`float<class_float>` **content_margin_bottom** = ``-1.0`` :ref:`🔗<class_StyleBox_property_content_margin_bottom>`

.. rst-class:: classref-property-setget

- |void| **set_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

The bottom margin for the contents of this style box. Increasing this value reduces the space available to the contents from the bottom.

If this value is negative, it is ignored and a child-specific margin is used instead. For example, for :ref:`StyleBoxFlat<class_StyleBoxFlat>`, the border thickness (if any) is used instead.

It is up to the code using this style box to decide what these contents are: for example, a :ref:`Button<class_Button>` respects this content margin for the textual contents of the button.

\ :ref:`get_margin()<class_StyleBox_method_get_margin>` should be used to fetch this value as consumer instead of reading these properties directly. This is because it correctly respects negative values and the fallback mentioned above.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_property_content_margin_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **content_margin_left** = ``-1.0`` :ref:`🔗<class_StyleBox_property_content_margin_left>`

.. rst-class:: classref-property-setget

- |void| **set_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

The left margin for the contents of this style box. Increasing this value reduces the space available to the contents from the left.

Refer to :ref:`content_margin_bottom<class_StyleBox_property_content_margin_bottom>` for extra considerations.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_property_content_margin_right:

.. rst-class:: classref-property

:ref:`float<class_float>` **content_margin_right** = ``-1.0`` :ref:`🔗<class_StyleBox_property_content_margin_right>`

.. rst-class:: classref-property-setget

- |void| **set_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

El margen derecho para el contenido de esta caja de estilo. Aumentando este valor se reduce el espacio disponible para los contenidos de la derecha.

Véase :ref:`content_margin_bottom<class_StyleBox_property_content_margin_bottom>` para consideraciones adicionales.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_property_content_margin_top:

.. rst-class:: classref-property

:ref:`float<class_float>` **content_margin_top** = ``-1.0`` :ref:`🔗<class_StyleBox_property_content_margin_top>`

.. rst-class:: classref-property-setget

- |void| **set_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const|

El margen superior para el contenido de esta caja de estilo. Aumentando este valor se reduce el espacio disponible para los contenidos desde la parte superior.

Véase :ref:`content_margin_bottom<class_StyleBox_property_content_margin_bottom>` para consideraciones adicionales.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_StyleBox_private_method__draw:

.. rst-class:: classref-method

|void| **_draw**\ (\ to_canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |virtual| |required| |const| :ref:`🔗<class_StyleBox_private_method__draw>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_private_method__get_draw_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **_get_draw_rect**\ (\ rect\: :ref:`Rect2<class_Rect2>`\ ) |virtual| |const| :ref:`🔗<class_StyleBox_private_method__get_draw_rect>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_private_method__get_minimum_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **_get_minimum_size**\ (\ ) |virtual| |const| :ref:`🔗<class_StyleBox_private_method__get_minimum_size>`

Virtual method to be implemented by the user. Returns a custom minimum size that the stylebox must respect when drawing. By default :ref:`get_minimum_size()<class_StyleBox_method_get_minimum_size>` only takes content margins into account. This method can be overridden to add another size restriction. A combination of the default behavior and the output of this method will be used, to account for both sizes.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_private_method__test_mask:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_test_mask**\ (\ point\: :ref:`Vector2<class_Vector2>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |virtual| |const| :ref:`🔗<class_StyleBox_private_method__test_mask>`

.. container:: contribute

	There is currently no description for this method. Please help us by `contributing one <https://contributing.godotengine.org/en/latest/documentation/class_reference.html>`__!

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_draw:

.. rst-class:: classref-method

|void| **draw**\ (\ canvas_item\: :ref:`RID<class_RID>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_StyleBox_method_draw>`

Draws this stylebox using a canvas item identified by the given :ref:`RID<class_RID>`.

The :ref:`RID<class_RID>` value can either be the result of :ref:`CanvasItem.get_canvas_item()<class_CanvasItem_method_get_canvas_item>` called on an existing :ref:`CanvasItem<class_CanvasItem>`-derived node, or directly from creating a canvas item in the :ref:`RenderingServer<class_RenderingServer>` with :ref:`RenderingServer.canvas_item_create()<class_RenderingServer_method_canvas_item_create>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_get_content_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_StyleBox_method_get_content_margin>`

Returns the default margin of the specified :ref:`Side<enum_@GlobalScope_Side>`.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_get_current_item_drawn:

.. rst-class:: classref-method

:ref:`CanvasItem<class_CanvasItem>` **get_current_item_drawn**\ (\ ) |const| :ref:`🔗<class_StyleBox_method_get_current_item_drawn>`

Devuelve el :ref:`CanvasItem<class_CanvasItem>` que maneja su :ref:`CanvasItem.NOTIFICATION_DRAW<class_CanvasItem_constant_NOTIFICATION_DRAW>` o :ref:`CanvasItem._draw()<class_CanvasItem_private_method__draw>` llamada en este momento.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_get_margin:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`\ ) |const| :ref:`🔗<class_StyleBox_method_get_margin>`

Returns the content margin offset for the specified :ref:`Side<enum_@GlobalScope_Side>`.

Positive values reduce size inwards, unlike :ref:`Control<class_Control>`'s margin values.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_get_minimum_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_minimum_size**\ (\ ) |const| :ref:`🔗<class_StyleBox_method_get_minimum_size>`

Devuelve el tamaño mínimo al que se puede reducir esta caja de estilo.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_get_offset:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_offset**\ (\ ) |const| :ref:`🔗<class_StyleBox_method_get_offset>`

Devuelve el "desplazamiento" de una caja de estilo. Esta función de ayuda devuelve un valor equivalente a ``Vector2(style.get_margin(MARGIN_LEFT), style.get_margin(MARGIN_TOP))``.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_set_content_margin:

.. rst-class:: classref-method

|void| **set_content_margin**\ (\ margin\: :ref:`Side<enum_@GlobalScope_Side>`, offset\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBox_method_set_content_margin>`

Sets the default value of the specified :ref:`Side<enum_@GlobalScope_Side>` to ``offset`` pixels.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_set_content_margin_all:

.. rst-class:: classref-method

|void| **set_content_margin_all**\ (\ offset\: :ref:`float<class_float>`\ ) :ref:`🔗<class_StyleBox_method_set_content_margin_all>`

Sets the default margin to ``offset`` pixels for all sides.

.. rst-class:: classref-item-separator

----

.. _class_StyleBox_method_test_mask:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **test_mask**\ (\ point\: :ref:`Vector2<class_Vector2>`, rect\: :ref:`Rect2<class_Rect2>`\ ) |const| :ref:`🔗<class_StyleBox_method_test_mask>`

Pruebe una posición en un rectángulo, vuelva si pasa la prueba de la máscara.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
