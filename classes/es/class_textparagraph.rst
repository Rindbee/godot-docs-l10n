:github_url: hide

.. _class_TextParagraph:

TextParagraph
=============

**Hereda:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Contiene un párrafo de texto.

.. rst-class:: classref-introduction-group

Descripción
----------------------

Abstracción sobre :ref:`TextServer<class_TextServer>` para manejar un único párrafo de texto.

.. rst-class:: classref-reftable-group

Propiedades
----------------------

.. table::
   :widths: auto

   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`         | :ref:`alignment<class_TextParagraph_property_alignment>`                         | ``0``     |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\]         | :ref:`break_flags<class_TextParagraph_property_break_flags>`                     | ``3``     |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`                                               | :ref:`custom_punctuation<class_TextParagraph_property_custom_punctuation>`       | ``""``    |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`Direction<enum_TextServer_Direction>`                               | :ref:`direction<class_TextParagraph_property_direction>`                         | ``0``     |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`String<class_String>`                                               | :ref:`ellipsis_char<class_TextParagraph_property_ellipsis_char>`                 | ``"…"``   |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] | :ref:`justification_flags<class_TextParagraph_property_justification_flags>`     | ``163``   |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                                 | :ref:`line_spacing<class_TextParagraph_property_line_spacing>`                   | ``0.0``   |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`                                                     | :ref:`max_lines_visible<class_TextParagraph_property_max_lines_visible>`         | ``-1``    |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`Orientation<enum_TextServer_Orientation>`                           | :ref:`orientation<class_TextParagraph_property_orientation>`                     | ``0``     |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                   | :ref:`preserve_control<class_TextParagraph_property_preserve_control>`           | ``false`` |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`                                                   | :ref:`preserve_invalid<class_TextParagraph_property_preserve_invalid>`           | ``true``  |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`                   | :ref:`text_overrun_behavior<class_TextParagraph_property_text_overrun_behavior>` | ``0``     |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`                                                 | :ref:`width<class_TextParagraph_property_width>`                                 | ``-1.0``  |
   +---------------------------------------------------------------------------+----------------------------------------------------------------------------------+-----------+

.. rst-class:: classref-reftable-group

Métodos
--------------

.. table::
   :widths: auto

   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`add_object<class_TextParagraph_method_add_object>`\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, length\: :ref:`int<class_int>` = 1, baseline\: :ref:`float<class_float>` = 0.0\ )                                                    |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`add_string<class_TextParagraph_method_add_string>`\ (\ text\: :ref:`String<class_String>`, font\: :ref:`Font<class_Font>`, font_size\: :ref:`int<class_int>`, language\: :ref:`String<class_String>` = "", meta\: :ref:`Variant<class_Variant>` = null\ )                                                                                            |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`clear<class_TextParagraph_method_clear>`\ (\ )                                                                                                                                                                                                                                                                                                       |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`clear_dropcap<class_TextParagraph_method_clear_dropcap>`\ (\ )                                                                                                                                                                                                                                                                                       |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw<class_TextParagraph_method_draw>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), dc_color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const|                                                           |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw_dropcap<class_TextParagraph_method_draw_dropcap>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const|                                                                                                     |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw_dropcap_outline<class_TextParagraph_method_draw_dropcap_outline>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const|                                           |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw_line<class_TextParagraph_method_draw_line>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, line\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const|                                                                             |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw_line_outline<class_TextParagraph_method_draw_line_outline>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, line\: :ref:`int<class_int>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const|                   |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`draw_outline<class_TextParagraph_method_draw_outline>`\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), dc_color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`TextParagraph<class_TextParagraph>`   | :ref:`duplicate<class_TextParagraph_method_duplicate>`\ (\ ) |const|                                                                                                                                                                                                                                                                                       |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                       | :ref:`get_dropcap_lines<class_TextParagraph_method_get_dropcap_lines>`\ (\ ) |const|                                                                                                                                                                                                                                                                       |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                       | :ref:`get_dropcap_rid<class_TextParagraph_method_get_dropcap_rid>`\ (\ ) |const|                                                                                                                                                                                                                                                                           |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`               | :ref:`get_dropcap_size<class_TextParagraph_method_get_dropcap_size>`\ (\ ) |const|                                                                                                                                                                                                                                                                         |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Direction<enum_TextServer_Direction>` | :ref:`get_inferred_direction<class_TextParagraph_method_get_inferred_direction>`\ (\ ) |const|                                                                                                                                                                                                                                                             |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_ascent<class_TextParagraph_method_get_line_ascent>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                             |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                       | :ref:`get_line_count<class_TextParagraph_method_get_line_count>`\ (\ ) |const|                                                                                                                                                                                                                                                                             |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_descent<class_TextParagraph_method_get_line_descent>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                           |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Rect2<class_Rect2>`                   | :ref:`get_line_object_rect<class_TextParagraph_method_get_line_object_rect>`\ (\ line\: :ref:`int<class_int>`, key\: :ref:`Variant<class_Variant>`\ ) |const|                                                                                                                                                                                              |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Array<class_Array>`                   | :ref:`get_line_objects<class_TextParagraph_method_get_line_objects>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                           |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`             | :ref:`get_line_range<class_TextParagraph_method_get_line_range>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                               |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                       | :ref:`get_line_rid<class_TextParagraph_method_get_line_rid>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                   |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`               | :ref:`get_line_size<class_TextParagraph_method_get_line_size>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                                 |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_underline_position<class_TextParagraph_method_get_line_underline_position>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                     |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_underline_thickness<class_TextParagraph_method_get_line_underline_thickness>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                   |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`float<class_float>`                   | :ref:`get_line_width<class_TextParagraph_method_get_line_width>`\ (\ line\: :ref:`int<class_int>`\ ) |const|                                                                                                                                                                                                                                               |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`               | :ref:`get_non_wrapped_size<class_TextParagraph_method_get_non_wrapped_size>`\ (\ ) |const|                                                                                                                                                                                                                                                                 |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2i<class_Vector2i>`             | :ref:`get_range<class_TextParagraph_method_get_range>`\ (\ ) |const|                                                                                                                                                                                                                                                                                       |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                       | :ref:`get_rid<class_TextParagraph_method_get_rid>`\ (\ ) |const|                                                                                                                                                                                                                                                                                           |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Vector2<class_Vector2>`               | :ref:`get_size<class_TextParagraph_method_get_size>`\ (\ ) |const|                                                                                                                                                                                                                                                                                         |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`has_object<class_TextParagraph_method_has_object>`\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const|                                                                                                                                                                                                                                                |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`int<class_int>`                       | :ref:`hit_test<class_TextParagraph_method_hit_test>`\ (\ coords\: :ref:`Vector2<class_Vector2>`\ ) |const|                                                                                                                                                                                                                                                 |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`resize_object<class_TextParagraph_method_resize_object>`\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, baseline\: :ref:`float<class_float>` = 0.0\ )                                                                                  |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`set_bidi_override<class_TextParagraph_method_set_bidi_override>`\ (\ override\: :ref:`Array<class_Array>`\ )                                                                                                                                                                                                                                         |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`                     | :ref:`set_dropcap<class_TextParagraph_method_set_dropcap>`\ (\ text\: :ref:`String<class_String>`, font\: :ref:`Font<class_Font>`, font_size\: :ref:`int<class_int>`, dropcap_margins\: :ref:`Rect2<class_Rect2>` = Rect2(0, 0, 0, 0), language\: :ref:`String<class_String>` = ""\ )                                                                      |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                                      | :ref:`tab_align<class_TextParagraph_method_tab_align>`\ (\ tab_stops\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ )                                                                                                                                                                                                                              |
   +---------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Propiedades
--------------------------------------------------------

.. _class_TextParagraph_property_alignment:

.. rst-class:: classref-property

:ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **alignment** = ``0`` :ref:`🔗<class_TextParagraph_property_alignment>`

.. rst-class:: classref-property-setget

- |void| **set_alignment**\ (\ value\: :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>`\ )
- :ref:`HorizontalAlignment<enum_@GlobalScope_HorizontalAlignment>` **get_alignment**\ (\ )

Alineación horizontal del párrafo.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_break_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **break_flags** = ``3`` :ref:`🔗<class_TextParagraph_property_break_flags>`

.. rst-class:: classref-property-setget

- |void| **set_break_flags**\ (\ value\: |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\]\ )
- |bitfield|\[:ref:`LineBreakFlag<enum_TextServer_LineBreakFlag>`\] **get_break_flags**\ (\ )

Reglas de salto de línea. Para más información, véase :ref:`TextServer<class_TextServer>`.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_custom_punctuation:

.. rst-class:: classref-property

:ref:`String<class_String>` **custom_punctuation** = ``""`` :ref:`🔗<class_TextParagraph_property_custom_punctuation>`

.. rst-class:: classref-property-setget

- |void| **set_custom_punctuation**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_custom_punctuation**\ (\ )

Lista de caracteres de puntuación personalizados, utilizada para la división de palabras. Si se establece en una string vacía, se utilizan los valores predeterminados del servidor.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_direction:

.. rst-class:: classref-property

:ref:`Direction<enum_TextServer_Direction>` **direction** = ``0`` :ref:`🔗<class_TextParagraph_property_direction>`

.. rst-class:: classref-property-setget

- |void| **set_direction**\ (\ value\: :ref:`Direction<enum_TextServer_Direction>`\ )
- :ref:`Direction<enum_TextServer_Direction>` **get_direction**\ (\ )

Dirección de escritura del texto.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_ellipsis_char:

.. rst-class:: classref-property

:ref:`String<class_String>` **ellipsis_char** = ``"…"`` :ref:`🔗<class_TextParagraph_property_ellipsis_char>`

.. rst-class:: classref-property-setget

- |void| **set_ellipsis_char**\ (\ value\: :ref:`String<class_String>`\ )
- :ref:`String<class_String>` **get_ellipsis_char**\ (\ )

Carácter de elipsis utilizado para el recorte de texto.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_justification_flags:

.. rst-class:: classref-property

|bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **justification_flags** = ``163`` :ref:`🔗<class_TextParagraph_property_justification_flags>`

.. rst-class:: classref-property-setget

- |void| **set_justification_flags**\ (\ value\: |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\]\ )
- |bitfield|\[:ref:`JustificationFlag<enum_TextServer_JustificationFlag>`\] **get_justification_flags**\ (\ )

Reglas de alineación de relleno de línea.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_line_spacing:

.. rst-class:: classref-property

:ref:`float<class_float>` **line_spacing** = ``0.0`` :ref:`🔗<class_TextParagraph_property_line_spacing>`

.. rst-class:: classref-property-setget

- |void| **set_line_spacing**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_line_spacing**\ (\ )

Additional vertical spacing between lines (in pixels), spacing is added to line descent. This value can be negative.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_max_lines_visible:

.. rst-class:: classref-property

:ref:`int<class_int>` **max_lines_visible** = ``-1`` :ref:`🔗<class_TextParagraph_property_max_lines_visible>`

.. rst-class:: classref-property-setget

- |void| **set_max_lines_visible**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_max_lines_visible**\ (\ )

Limita las líneas de texto mostradas.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_orientation:

.. rst-class:: classref-property

:ref:`Orientation<enum_TextServer_Orientation>` **orientation** = ``0`` :ref:`🔗<class_TextParagraph_property_orientation>`

.. rst-class:: classref-property-setget

- |void| **set_orientation**\ (\ value\: :ref:`Orientation<enum_TextServer_Orientation>`\ )
- :ref:`Orientation<enum_TextServer_Orientation>` **get_orientation**\ (\ )

Orientación del texto.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_preserve_control:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **preserve_control** = ``false`` :ref:`🔗<class_TextParagraph_property_preserve_control>`

.. rst-class:: classref-property-setget

- |void| **set_preserve_control**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_preserve_control**\ (\ )

Si se establece a ``true``, el texto mostrará caracteres de control.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_preserve_invalid:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **preserve_invalid** = ``true`` :ref:`🔗<class_TextParagraph_property_preserve_invalid>`

.. rst-class:: classref-property-setget

- |void| **set_preserve_invalid**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **get_preserve_invalid**\ (\ )

Si se establece a ``true``, el texto mostrará caracteres inválidos.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_text_overrun_behavior:

.. rst-class:: classref-property

:ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **text_overrun_behavior** = ``0`` :ref:`🔗<class_TextParagraph_property_text_overrun_behavior>`

.. rst-class:: classref-property-setget

- |void| **set_text_overrun_behavior**\ (\ value\: :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>`\ )
- :ref:`OverrunBehavior<enum_TextServer_OverrunBehavior>` **get_text_overrun_behavior**\ (\ )

El comportamiento de recorte cuando el texto excede el ancho establecido del párrafo.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_property_width:

.. rst-class:: classref-property

:ref:`float<class_float>` **width** = ``-1.0`` :ref:`🔗<class_TextParagraph_property_width>`

.. rst-class:: classref-property-setget

- |void| **set_width**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_width**\ (\ )

Ancho de párrafo.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Descripciones de Métodos
------------------------------------------------

.. _class_TextParagraph_method_add_object:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **add_object**\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, length\: :ref:`int<class_int>` = 1, baseline\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_TextParagraph_method_add_object>`

Añade un objeto en línea al buffer de texto, ``key`` debe ser único. En el texto, el objeto se representa como ``length`` caracteres de reemplazo de objeto.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_add_string:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **add_string**\ (\ text\: :ref:`String<class_String>`, font\: :ref:`Font<class_Font>`, font_size\: :ref:`int<class_int>`, language\: :ref:`String<class_String>` = "", meta\: :ref:`Variant<class_Variant>` = null\ ) :ref:`🔗<class_TextParagraph_method_add_string>`

Agrega espacio de texto y fuente para dibujarlo.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_clear:

.. rst-class:: classref-method

|void| **clear**\ (\ ) :ref:`🔗<class_TextParagraph_method_clear>`

Limpia el párrafo de texto (elimina el texto y los objetos en línea).

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_clear_dropcap:

.. rst-class:: classref-method

|void| **clear_dropcap**\ (\ ) :ref:`🔗<class_TextParagraph_method_clear_dropcap>`

Removes dropcap.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_draw:

.. rst-class:: classref-method

|void| **draw**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), dc_color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextParagraph_method_draw>`

Draw all lines of the text and drop cap into a canvas item at a given position, with ``color``. ``pos`` specifies the top left corner of the bounding box. If ``oversampling`` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_draw_dropcap:

.. rst-class:: classref-method

|void| **draw_dropcap**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextParagraph_method_draw_dropcap>`

Draw drop cap into a canvas item at a given position, with ``color``. ``pos`` specifies the top left corner of the bounding box. If ``oversampling`` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_draw_dropcap_outline:

.. rst-class:: classref-method

|void| **draw_dropcap_outline**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextParagraph_method_draw_dropcap_outline>`

Draw drop cap outline into a canvas item at a given position, with ``color``. ``pos`` specifies the top left corner of the bounding box. If ``oversampling`` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_draw_line:

.. rst-class:: classref-method

|void| **draw_line**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, line\: :ref:`int<class_int>`, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextParagraph_method_draw_line>`

Draw single line of text into a canvas item at a given position, with ``color``. ``pos`` specifies the top left corner of the bounding box. If ``oversampling`` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_draw_line_outline:

.. rst-class:: classref-method

|void| **draw_line_outline**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, line\: :ref:`int<class_int>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextParagraph_method_draw_line_outline>`

Draw outline of the single line of text into a canvas item at a given position, with ``color``. ``pos`` specifies the top left corner of the bounding box. If ``oversampling`` is greater than zero, it is used as font oversampling factor, otherwise viewport oversampling settings are used.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_draw_outline:

.. rst-class:: classref-method

|void| **draw_outline**\ (\ canvas\: :ref:`RID<class_RID>`, pos\: :ref:`Vector2<class_Vector2>`, outline_size\: :ref:`int<class_int>` = 1, color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), dc_color\: :ref:`Color<class_Color>` = Color(1, 1, 1, 1), oversampling\: :ref:`float<class_float>` = 0.0\ ) |const| :ref:`🔗<class_TextParagraph_method_draw_outline>`

Dibuja los contornos de todas las líneas del texto y la letra capital en un elemento del canvas en una posición dada, con ``color``. ``pos`` especifica la esquina superior izquierda del cuadro delimitador. Si ``oversampling`` es mayor que cero, se utiliza como factor de sobremuestreo de la fuente, de lo contrario, se utilizan los ajustes de sobremuestreo del viewport.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_duplicate:

.. rst-class:: classref-method

:ref:`TextParagraph<class_TextParagraph>` **duplicate**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_duplicate>`

Duplicates this **TextParagraph**.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_dropcap_lines:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_dropcap_lines**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_dropcap_lines>`

Devuelve el número de líneas usadas por la letra capital.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_dropcap_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_dropcap_rid**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_dropcap_rid>`

Devuelve el RID del búfer de texto de la letra capital.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_dropcap_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_dropcap_size**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_dropcap_size>`

Devuelve el tamaño del cuadro delimitador de la letra capital.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_inferred_direction:

.. rst-class:: classref-method

:ref:`Direction<enum_TextServer_Direction>` **get_inferred_direction**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_inferred_direction>`

Returns the text writing direction inferred by the BiDi algorithm.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_ascent:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_ascent**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_ascent>`

Returns the text line ascent (number of pixels above the baseline for horizontal layout or to the left of baseline for vertical).

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_count:

.. rst-class:: classref-method

:ref:`int<class_int>` **get_line_count**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_count>`

Devuelve el número de líneas en el párrafo.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_descent:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_descent**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_descent>`

Devuelve el descenso de la línea de texto (número de píxeles por debajo de la línea base para el diseño horizontal o a la derecha de la línea base para el diseño vertical).

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_object_rect:

.. rst-class:: classref-method

:ref:`Rect2<class_Rect2>` **get_line_object_rect**\ (\ line\: :ref:`int<class_int>`, key\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_object_rect>`

Returns bounding rectangle of the inline object.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_objects:

.. rst-class:: classref-method

:ref:`Array<class_Array>` **get_line_objects**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_objects>`

Devuelve un array de objetos en línea en la línea.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_range:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_line_range**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_range>`

Devuelve el rango de caracteres de la línea.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_line_rid**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_rid>`

Devuelve el RID del búfer de línea de TextServer.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_line_size**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_size>`

Devuelve el tamaño del cuadro delimitador de la línea de texto. El tamaño devuelto se redondea hacia arriba.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_underline_position:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_underline_position**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_underline_position>`

Devuelve el desplazamiento de píxeles del subrayado debajo de la línea base.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_underline_thickness:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_underline_thickness**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_underline_thickness>`

Returns thickness of the underline.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_line_width:

.. rst-class:: classref-method

:ref:`float<class_float>` **get_line_width**\ (\ line\: :ref:`int<class_int>`\ ) |const| :ref:`🔗<class_TextParagraph_method_get_line_width>`

Devuelve el ancho (para diseño horizontal) o la altura (para vertical) de la línea de texto.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_non_wrapped_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_non_wrapped_size**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_non_wrapped_size>`

Devuelve el tamaño del cuadro delimitador del párrafo, sin saltos de línea.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_range:

.. rst-class:: classref-method

:ref:`Vector2i<class_Vector2i>` **get_range**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_range>`

Devuelve el rango de caracteres del párrafo.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_rid:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **get_rid**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_rid>`

Devuelve el RID del búfer de string completo de TextServer.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_get_size:

.. rst-class:: classref-method

:ref:`Vector2<class_Vector2>` **get_size**\ (\ ) |const| :ref:`🔗<class_TextParagraph_method_get_size>`

Devuelve el tamaño del cuadro delimitador del párrafo.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_has_object:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **has_object**\ (\ key\: :ref:`Variant<class_Variant>`\ ) |const| :ref:`🔗<class_TextParagraph_method_has_object>`

Returns ``true`` if an object with ``key`` is embedded in this shaped text buffer.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_hit_test:

.. rst-class:: classref-method

:ref:`int<class_int>` **hit_test**\ (\ coords\: :ref:`Vector2<class_Vector2>`\ ) |const| :ref:`🔗<class_TextParagraph_method_hit_test>`

Devuelve el desplazamiento del cursor en las coordenadas especificadas. Esta función siempre devuelve una posición válida.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_resize_object:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **resize_object**\ (\ key\: :ref:`Variant<class_Variant>`, size\: :ref:`Vector2<class_Vector2>`, inline_align\: :ref:`InlineAlignment<enum_@GlobalScope_InlineAlignment>` = 5, baseline\: :ref:`float<class_float>` = 0.0\ ) :ref:`🔗<class_TextParagraph_method_resize_object>`

Sets new size and alignment of embedded object.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_set_bidi_override:

.. rst-class:: classref-method

|void| **set_bidi_override**\ (\ override\: :ref:`Array<class_Array>`\ ) :ref:`🔗<class_TextParagraph_method_set_bidi_override>`

Overrides BiDi for the structured text.

Override ranges should cover full source text without overlaps. BiDi algorithm will be used on each range separately.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_set_dropcap:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **set_dropcap**\ (\ text\: :ref:`String<class_String>`, font\: :ref:`Font<class_Font>`, font_size\: :ref:`int<class_int>`, dropcap_margins\: :ref:`Rect2<class_Rect2>` = Rect2(0, 0, 0, 0), language\: :ref:`String<class_String>` = ""\ ) :ref:`🔗<class_TextParagraph_method_set_dropcap>`

Establece la letra capital, sobreescribiendo la letra capital establecida previamente. La letra capital (letra capital caída) es un elemento decorativo al principio de un párrafo que es más grande que el resto del texto.

.. rst-class:: classref-item-separator

----

.. _class_TextParagraph_method_tab_align:

.. rst-class:: classref-method

|void| **tab_align**\ (\ tab_stops\: :ref:`PackedFloat32Array<class_PackedFloat32Array>`\ ) :ref:`🔗<class_TextParagraph_method_tab_align>`

Alinea un párrafo a las tabulaciones dadas.

.. |virtual| replace:: :abbr:`virtual (Normalmente, este método debería ser sobreescrito por el usuario para que tenga algún efecto.)`
.. |required| replace:: :abbr:`required (This method is required to be overridden when extending its base class.)`
.. |const| replace:: :abbr:`const (Este método no tiene efectos secundarios. No modifica ninguna de las variables miembro de la instancia.)`
.. |vararg| replace:: :abbr:`vararg (Este método permite agregar cualquier número de argumentos después de los descritos aquí.)`
.. |constructor| replace:: :abbr:`constructor (Este método se utiliza para construir un tipo.)`
.. |static| replace:: :abbr:`static (Este método no necesita una instancia para ser llamado, por lo que puede llamarse directamente utilizando el nombre de la clase.)`
.. |operator| replace:: :abbr:`operator (Este método describe un operador válido para usar con este tipo como operando izquierdo.)`
.. |bitfield| replace:: :abbr:`BitField (Este valor es un entero compuesto como una máscara de bits de las siguientes banderas.)`
.. |void| replace:: :abbr:`void (Sin valor de retorno.)`
